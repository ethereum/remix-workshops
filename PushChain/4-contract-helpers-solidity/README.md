In the previous chapter, something strange happened.

- You called a contract on Push Chain Donut Testnet
- from **another blockchain**
- without redeploying it.

That raises an obvious question:

> **Who is the user behind `msg.sender`?**

## The short answer

On Push Chain, msg.sender is **not always the user**.

It is sometimes a **Universal Executor Account (UEA)**.
Not the country. The smart account.

A UEA is the on-chain executor that represents a user who signed the transaction on another chain.

The important part:

- Even when msg.sender is a UEA, **you can still recover the real user on-chain**.

That real user is called the **Universal Origin Account (UOA)**.

## The mental model to remember

- **UOA** = who the user actually is on their home chain
- **UEA**  = how that user shows up when execution happens on Push Chain

Your contract sees the UEA.
Push Chain lets you resolve the UOA behind it.

That’s the unlock.

## Why this exists

Without UEAs, universal execution would not be possible.

UEAs allow:
- Users to sign transactions on their own chain
- Execution to happen safely on Push Chain
- Your Solidity code to remain unchanged

You don’t deploy UEAs.
You don’t manage UEAs.
You just interact with them.

## What you'll do in this chapter

You'll learn how to:
- Detect whether `msg.sender` is a native Push account, or a **UEA**
- Recover the caller's **origin chain and wallet (UOA)**
- Compute the **deterministic UEA** for any origin user

Best part: All of this happens **inside Solidity**.

## How origin discovery works (high level)

There are two primitives you need:

**1. Resolve origin from executor**
- Given an address on Push Chain (including `msg.sender`)
- You can determine whether it's a native Push Account or a **UEA** (ie: external chain user from Ethereum, Solana, Base, etc)
- And recover the corresponding **UOA** (origin identity: chain + wallet)

This is done using:
- `getOriginForUEA(address)`

**2. Resolve executor from origin**
- Given an origin identity (UOA)
- You can compute the **deterministic UEA address** on Push Chain
- And check if it's already deployed

This is done using:
- `getUEAForOrigin(UniversalAccountId)`

> **Note**: `UniversalAccountId` is a struct containing the origin chain (`chainNamespace`, `chainId`) and the origin wallet (`owner`). Learn more in <a href="https://push.org/docs/chain/build/contract-helpers/#ueafactory--getoriginforuea" target="_blank">Push Chain Docs — Universal Account Id</a>.

*Example*:
- Bob on Ethereum has wallet `0xABC...`.
- We can compute Bob’s deterministic UEA address on Push Chain with `getUEAForOrigin(...)` (and see if it’s deployed).
- Even before Bob ever interacts

## What does it unlock

Once you can map **UEA ↔ UOA**, you can:

- Apply different rules per origin chain (Ethereum vs Solana, etc.)
- Build allowlists / compliance logic that work across chains
- Attribute analytics back to the user’s home chain

This is where "universal apps" stop being theory and start being enforceable.

## Let's Try it Out

You’ll deploy `UEAFactoryDemo.sol`, a small **read-only** helper contract.

It reads from a predeployed system contract on Push Chain:

- **`UEAFactory.sol`**: `0x00000000000000000000000000000000000000eA`

This system contract already exists.
You’re just querying it.

### What the demo contract (UEAFactoryDemo) exposes

`UEAFactoryDemo` gives you two functions:

- **`discoverOrigin()`** 
  Returns the origin identity or `msg.sender` and whether the caller is a UEA. Returns `(UniversalAccountId originAccount, bool isUEA)`.
- **`discoverUEAForOrigin(UniversalAccountId)`** 
  Computes the deterministic UEA address for a given origin user. Returns `(address uea, bool isDeployed)`.

No state changes. No risk.

### Mental model

```mermaid
  UOA[Origin wallet on another chain]
  UEA[Executor account on Push Chain]
  C[Your contract]

  UOA --> UEA --> C
```

## How to try this in Remix
 
 1. Confirm `UEAFactoryDemo.sol` is open in the editor.
 2. Switch *(MetaMask)* to **Push Chain Donut Testnet**.
 3. In Remix → **Deploy & Run**, select **Injected Provider – MetaMask**.
 4. Deploy `UEAFactoryDemo`.
 5. Under **Deployed Contracts** call:
   - `discoverOrigin()`
   - (optional) copy the returned `UniversalAccountId` and call `discoverUEAForOrigin(...)`
 
 ### What you should see

  - an origin identity `(chainNamespace, chainId, owner)` and
  - a boolean `isUEA`

Example:
```
[["eip155","11155111","0xfd6c2fe69be13d8be379ccb6c9306e74193ec1a9"], true]
```

Meaning:
- `chainNamespace`: `eip155` (EVM)
- `chainId`: `11155111` (Ethereum Sepolia)
- `owner`: `0xfd6c…c1a9` (origin wallet)
- `isUEA`: `true` (so `msg.sender` was an executor account)


> Note: If you call this directly from MetaMask, `isUEA` will usually be `false`.
> To see `isUEA = true`, call your contract via a universal transaction.

Learn more and try it out in <a href="https://push.org/docs/chain/build/contract-helpers/" target="_blank">Push Chain Docs - Contract Helpers</a>.

## Checkpoint

You should now be comfortable with this:

1.	`msg.sender` may be a UEA
2.	A UEA always maps to exactly one UOA
3.	Push Chain lets you resolve that mapping on-chain

If that makes sense, you’re good.

## What’s next

Next, you’ll do the same mapping **off-chain** using the SDK:

- **UEA → UOA** (convert executor to origin)
- **UOA → UEA** (convert origin to executor)

This is the common pattern for dApps: resolve a user’s universal identity off-chain, then use it for app logic, analytics, and permissions.

## References

- Concepts: <a href="https://push.org/docs/chain/important-concepts/#account-types-on-push-chain" target="_blank">Account types on Push Chain</a>
- Contract Helpers: <a href="https://push.org/docs/chain/build/contract-helpers/#ueafactory--getoriginforuea" target="_blank">UEAFactory → getOriginForUEA</a>
- Contract Helpers: <a href="https://push.org/docs/chain/build/contract-helpers/#ueafactory--getueafororigin" target="_blank">UEAFactory → getUEAForOrigin</a>

**Next up**: Mapping users between UOA and UEA in JavaScript
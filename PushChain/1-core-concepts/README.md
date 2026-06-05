Before we write code, there are two ideas you need to be comfortable with.
Nothing more.

The important thing to know upfront:

> Deploying on Push Chain feels exactly like deploying on any other EVM chain.

Same Solidity.
Same ABI.
Same tooling.

The difference shows up **when users call your contract**, not when you deploy it.

## First: account types (quick refresher)

Push Chain supports the standard Ethereum-style accounts you already know:

- **Externally Owned Accounts (EOAs)**<br />
  Regular private‑key‑controlled addresses (for example, MetaMask wallets).

- **Smart Contract Accounts (Smart Accounts)**<br />
  On-chain contracts that hold logic (multisigs, smart wallets, etc).

Nothing new here.

What is new is how Push Chain represents users from other chains.

## Universal Identity (this is the important part)

When a user interacts with your contract, two identities matter:

- **Universal Origin Account (UOA)**
  Who the user actually is on their home chain
  (for example, an Ethereum wallet or a Solana wallet)

- **Universal Executor Account (UEA)**
  A smart account on Push Chain that represents that user during execution

Think of it like this:

> The **UOA** is the user’s real identity.
> The **UEA** is the execution avatar.

Your contract sees the UEA.
Push Chain lets your contract resolve which UOA a UEA represents.

That’s it.

### Why UEAs exist at all

Without UEAs, universal execution wouldn’t work.

**UEAs allow:**
- Users to sign transactions on their own chain
- Execution to happen safely on Push Chain
- Your Solidity code to stay unchanged

You don’t deploy UEAs.
You don’t manage them.
You just interact with them.

## Universal Transactions (high level)

Universal transactions separate **signing** from **execution**.

- Users sign transactions on their origin chain
- The transaction executes on Push Chain
- Execution happens as the user’s UEA

From your contract’s perspective:
- The call looks like a **normal EVM call**
- `msg.sender` may be a UEA instead of a wallet
- You can ask the chain who that UEA represents

### Why Universal Transactions

Because Universal transactions let users stay on their chain while your contract stays in one place.

Learn more in <a href="https://push.org/docs/chain/build/send-universal-transaction/" target="_blank">Send Universal Transaction</a>.

## Why this matters to you

This model lets you:
- Deploy a contract once
- Let users interact from multiple chains
- Keep one global state
- Write origin-aware logic when you want to

You focus on application logic.
Push Chain handles the universality underneath.

## One thing to keep in mind

At first, everything looks normal. The moment you inspect `msg.sender`, things get interesting.

We’ll get there soon.

## Quick self-check (30 seconds)

Before moving on, make sure this is clear:
- UOA = who the user is on their home chain
- UEA = how that user shows up during execution on Push Chain
- Users sign on their origin chain, contracts execute on Push Chain

If that makes sense, you’re ready.

**Next up**: deploying your first Solidity contract to Push Chain from Remix.
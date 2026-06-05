In the last chapter, you resolved the real user behind `msg.sender` **inside Solidity**.

Now we’ll do the same mapping **off-chain** using the <a href="https://www.npmjs.com/package/@pushchain/core" target="_blank">`@pushchain/core`</a> SDK.

## What you'll do

You’ll use two high-level utilities to map between:

- **UEA → UOA** (executor address back to the origin user)
- **UOA → UEA** (origin user to the deterministic executor address)

No contract calls. No custom ABI. No factory plumbing.

Just SDK helpers.

## `utility-functions.js`

This script uses `@pushchain/core` utilities instead of calling the on-chain factory directly.

### 1. Convert Executor Address to Origin Account

**`PushChain.utils.account.convertExecutorToOriginAccount(ueaAddress)`**

Use this when you have an address on Push Chain (often `msg.sender` from logs) and you want to know the real user behind it.

- **Input**: `ueaAddress: string`
- **Returns**:
  - `account`: `{ chain: string, address: string }` - The resolved origin identity (UOA)

  - `exists`: `boolean` - Whether the mapping exists (executor is a UEA)

**Mental model**: "Who is the executor really, what chain do they belong to?"

### 2. Convert Origin Account to Executor Address

**`PushChain.utils.account.convertOriginToExecutor(universalAccount)`**

Use this when you know the user’s origin identity and want to compute their deterministic executor address on Push Chain.

- **Input**: `universalAccount` returned by `PushChain.utils.account.toUniversal(address, { chain })`
- **Returns**:
  - `address`: `string` - The deterministic UEA address for that origin
  - `deployed`: `boolean` - Whether that UEA contract is deployed yet

**Mental model**: "Where will this origin user execute from on Push Chain?"

## When you’d use this in a real app

- Frontends resolving identity for UX
- Attributing actions to the real origin user
- Backends / indexers attributing actions to the real origin user
- Analytics and permissions keyed by UOA instead of random executor addresses

## References

- Docs: <a href="https://push.org/docs/chain/build/utility-functions/#convert-executor-address-to-origin-account" target="_blank">Utility Functions → Convert Executor Address to Origin Account</a>
- Docs: <a href="https://push.org/docs/chain/build/utility-functions/#convert-origin-to-executor-account" target="_blank">Utility Functions → Convert Origin to Executor Account</a>

**Next up**: Create a contract that knows where users came from (which chain)
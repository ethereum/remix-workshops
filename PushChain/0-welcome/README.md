## Does this look normal?

You’re a Solidity developer.
You know how to write contracts.
You know how to deploy them.

But the world changed. Siloed users on multiple chains forced you to target:

- More chains
- More wallets
- More deployments
- More everything that nobody enjoys maintaining

### The usual way this goes (and why it sucks)

Today, "shipping a dApp everywhere" means:

- Multiple deployments (one per chain)
- Different wallet flows and SDKs (EVM vs non‑EVM)
- Bridges, wrappers, and custom plumbing
- Users switching networks, juggling gas tokens, and dropping off

This does not get better over time.
It compounds.

### Push Chain does something different

- **Deploy once, reach many chains**: Deploy your Solidity contract once on Push Chain and let users interact from multiple origin chains.
- **Supports both EVM and non-EVM chains**: Instantly reach to users from all supported chains, including non-EVM ones, with the same contract.
- **No contract rewrites**: Push Chain is **100% EVM-compatible** with same Solidity, ABI, tooling.
- **Better UX for users**: Users can keep using familiar wallets (like MetaMask or Phantom) without you rebuilding everything per chain.

### The KISS way

Push Chain uses a **universal execution model**:

- Users sign transactions from any chain (their **origin chain**)
- Execution happens **on Push Chain**
- The system represents origin users on Push Chain via smart accounts, so you can keep your contract logic unchanged

Your contract stays simple.
The universality lives underneath.

No per-chain deployments.
No manual interoperability glue.

### What you'll do in this workshop

- Deploy a normal Solidity contract using **Remix**
- Call it like any other **EVM chain**
- Then call the **same contract** from another chain
- See how a contract can tell **where a user came from**
- Understand what UOA and UEA are, and why `msg.sender` gets interesting

No theory dump.
This is hands-on, deploy quick and explain later type of tutorial.

### How to approach this

Assume this is just another EVM chain.

Because at first, it is.

Then watch that assumption quietly break.

**Next up**: the only core concepts you actually need before deploying.

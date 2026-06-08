A blockchain is an append-only ledger shared across many computers (nodes). Unlike a traditional database, you never edit or delete past entries; you can only add new entries that, together, define the latest state.

On public blockchains (some blockchains are private), identical copies of this ledger are widely replicated, and nodes accept new data only if it satisfies the network’s consensus rules.

## How blockchains work

At a high level, three parts cooperate: an execution layer that deterministically turns transactions into state changes, a consensus mechanism that orders blocks and decides what becomes canonical, and data availability/state so everyone can fetch and verify the data. When these are aligned, immutability is the practical outcome and rewriting history becomes economically prohibitive.

### Consensus mechanism

A consensus mechanism is how the network agrees on the next valid block. For example, **proof-of-stake**, where validators bond capital and can be slashed, and or **proof-of-work**, where miners prove computational effort.

### Execution Layer

The execution layer defines how transactions are interpreted and applied to state, step by step, the same way on every node. For example, on EVM chains (Ethereum and many L2s), contracts compile to EVM bytecode.

Note: Execution is separate from consensus; a network can change how it reaches agreement without changing how code runs, and vice versa.

### State changes

Users submit signed transactions that describe intended changes (transfer value, call a contract). Nodes execute these deterministically and, if valid, include them in blocks that extend the chain.

### Immutability

Immutability isn’t “forbidden by code”; it’s economically enforced. On Ethereum, blocks become finalized when ≈ two-thirds of staked validators attest to the relevant checkpoints. Reverting a finalized block would require creating conflicting finality—an act that implies slashing at least one-third of the total staked ETH. With roughly ~35–36 million ETH staked today, that’s on the order of ≥11–12 million ETH at risk, which makes rewriting finalized history prohibitively costly.

## Further reading

- [Web2 vs. Web3](https://ethereum.org/developers/docs/web2-vs-web3/).
- [An introduction to blockchain and Ethereum](https://ethereum.org/developers/docs/intro-to-ethereum/).
- [Consensus algorithms in blockchains](https://www.geeksforgeeks.org/compiler-design/consensus-algorithms-in-blockchain/).

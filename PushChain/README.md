## Push Chain Remix Workshop

This repo is a **Push Chain Tutorial for Remix IDE** that introduces and onboards new web3 developers to **Push Chain** — a universal, 100% EVM-compatible Layer 1 where you can **deploy once** and have your contract **executed from multiple origin chains** via universal transactions.

### What you’ll do

- **Deploy** a simple Solidity contract to Push Chain Donut Testnet from Remix
- **Send a universal transaction** (sign on an origin chain, execute on Push Chain)
- **Understand universal identity**: UOA (origin) vs UEA (executor) and how to discover it from Solidity
- **Build a universal counter** that tracks usage by origin chain

### Time & prerequisites

- **Time**: ~30–45 minutes
- **You need**:
  - A browser with **Remix IDE**
  - **MetaMask** (for Push Chain Donut Testnet deployment)
  - Testnet funds from the faucet(s) referenced in the chapters

### Network glossary (used throughout)

| Network | RPC URL | Chain ID | Symbol | Explorer |
|---|---|---:|---|---|
| Push Chain Donut Testnet | `https://evm.donut.rpc.push.org/` | `42101` | `PC` | `https://donut.push.network` |

### Completion checklist

By the end, you should have:

- A deployed contract address on Donut Testnet visible in `https://donut.push.network`
- At least one successful universal transaction hash visible in the explorer
- A `UniversalCounter` deployment you can increment from both:
  - **MetaMask (native Push)**, and
  - **a universal transaction (origin chain → Push execution)**


**All the best**
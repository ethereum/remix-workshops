In this chapter you will:

- Add **Push Chain Donut Testnet** to your wallet (MetaMask)
- Deploy a simple Solidity contract from **Remix to Push Chain Donut Testnet**
- Confirm the deployment on the Push Chain block explorer

If you’ve deployed contracts to Ethereum before, this should feel completely familiar, even **boring**.

That's intentional!

> Tip: Learn more background concepts in the official docs: <a href="https://push.org/docs/chain/" target="_blank">Intro to Push Chain</a>.

## Step 1: Add Push Chain Donut Testnet to MetaMask

1. Open MetaMask and click the network selector.
2. Click **Add network** (or **Add network manually**).
3. Fill in the following values:
   - **Network Name**: `Push Chain Donut Testnet`
   - **RPC URL**: `https://evm.donut.rpc.push.org/`
   - **Chain ID**: `42101`
   - **Currency Symbol**: `PC`
   - **Block Explorer URL**: `https://donut.push.network`
4. Save the network and switch MetaMask to **Push Chain Donut Testnet**.
5. Get test PC for gas from the faucet: <a href="https://faucet.push.org/" target="_blank">Push Chain Faucet</a>.

> Full network details are available here: <a href="https://push.org/docs/chain/setup/chain-config/" target="_blank">Chain Configuration</a>.

> **Note:** You do **not** need to change your Solidity code to deploy on Push Chain. Any contract that compiles for a standard EVM chain will compile and deploy the same way here.

## Step 2: Write a simple contract in Remix

1. Make sure you're in the Remix IDE (if you don't have it open already, open <a href="https://remix.ethereum.org" target="_blank">Remix IDE</a>).
2. Create a new file named `HelloPush.sol` in your workspace.
3. Paste this minimal Solidity contract:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract HelloPush {
    uint256 public value;

    function set(uint256 _value) external {
        value = _value;
    }
}
```

4. Open the **Solidity compiler** tab
5. Select compiler version **0.8.30** (or any compatible 0.8.x version) 
6. Click **Compile HelloPush.sol**.

No Push-specific code. No special imports.

## Step 3: Deploy to Push Chain from Remix

1. Open the **Deploy & Run Transactions** tab in Remix.
2. Set **Environment** to **Injected Provider - MetaMask**. Remix will connect to the network currently selected in MetaMask.
3. Confirm that MetaMask is on **Push Chain Donut Testnet**.
4. Select the `HelloPush` contract in the **Contract** dropdown.
5. Click **Deploy** and confirm the transaction in MetaMask.
6. After the transaction is mined, Remix will show the deployed contract instance under **Deployed Contracts**.
7. Copy the contract address and open it in the explorer:

   - `https://donut.push.network/address/YOUR_CONTRACT_ADDRESS`

You’ve now deployed a standard Solidity contract to Push Chain Donut Testnet with **no on-chain code changes**.

If this felt identical to deploying on Ethereum, that’s the point.

## Optional: deploying without Remix
If you prefer Hardhat or Foundry, you can deploy the same contract using standard tooling:

- **Configure Hardhat**: <a href="https://push.org/docs/chain/setup/smart-contract-environment/configure-hardhat/" target="_blank">Push Chain Docs — Configure Hardhat</a>
- **Configure Foundry**: <a href="https://push.org/docs/chain/setup/smart-contract-environment/configure-foundry/" target="_blank">Push Chain Docs — Configure Foundry</a>

**Next up**: Calling your contract from another chain.
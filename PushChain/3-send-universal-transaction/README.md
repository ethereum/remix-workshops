Up to now, everything has looked normal.

You deployed a contract.
You called it from MetaMask.
Nothing surprising happened.

Now we break the one-chain assumption.

In this chapter, you will call the **same contract you just deployed** from **another blockchain**, without redeploying it and without switching networks.

## What's about to happen

You will:
- Create a wallet on **Ethereum Sepolia**
- Use it to sign a transaction on **Sepolia**
- Execute that transaction on **Push Chain**
- Call a contract that lives **only on Push Chain**

If this sounds illegal, good. That's the point.


## Prerequisites (read this once)

Before running the script:

- Switch to the **Push Chain** script configuration.
- **Funding required**: The generated wallet needs native tokens (in this case Sepolia ETH) to execute transactions.
- **No Push Chain testnet tokens needed**: You should not run this directly on Push Chain. This chapter is specifically about universal transactions.


## The contract you'll call (Simple Counter Contract)

We’ll interact with an already deployed SimpleCounter contract on Push Chain Donut Testnet:
<a href="https://donut.push.network/address/0x5FbDB2315678afecb367f032d93F642f64180aa3?tab=index">`0x5FbDB2315678afecb367f032d93F642f64180aa3`</a>

### High level flow

1. **Wallet Creation**: Creates a random wallet on Sepolia using `ethers.Wallet.createRandom()`
2. **Provider Setup**: Connects to Push Chain Donut Testnet RPC endpoint
3. **Universal Signer Conversion**: Uses `PushChain.utils.signer.toUniversal()` to create Universal Signer from the wallet
4. **Client Initialization**: Initializes Push Chain client with the Universal Signer
5. **Transaction Preparation**: Encodes the `increment()` function call using the Simple Counter ABI
6. **Funding Wait**: The code waits for Sepolia ETH to be received at the generated wallet address (using `waitForFunding` function)
7. **Transaction Execution**: Sends the transaction using `pushChainClient.universal.sendTransaction()` once funds are available

**The important thing to note**
- You write no cross-chain plumbing.
- You deploy no extra contracts.

## Key Components

### Contract ABI

The script includes a minimal ABI for the Simple Counter contract:

- `increment()`: Function to increment the counter
- `reset()`: Function to reset the counter
- `countPC()`: View function to read the counter value

### Transaction Parameters

We use the `encodeTxData` helper function to encode the transaction data. This function takes the ABI and function name, then generates the proper calldata for the contract interaction. The `sendTransaction` payload follows the same structure as a standard EVM transaction payload:

```javascript
const txParams = {
  to: SIMPLE_COUNTER_CONTRACT_ADDRESS,
  value: BigInt(0),
  data: PushChain.utils.helpers.encodeTxData({
    abi: SimpleCounterABI,
    functionName: 'increment',
  }),
};
```

## Example Transactions

A few example transactions showcasing the same interaction from multiple chains:

- <a href="https://donut.push.network/tx/0xa3478c4d4034355bd3828393256e5d80806a0c45d53c67b64f0f32305e0b54de" target="_blank">Universal Transaction from Sepolia Ethereum</a>
- <a href="https://donut.push.network/tx/0xd3333e13729872f326f11a15020b90eba75ccbb917ff1096cf444881acb124f8" target="_blank">Universal Transaction from Solana Devnet</a>

**Note:** This transaction showcases calling `increment()` on the Simple Counter deployed on Push Chain from any chain, natively.

Same contract. Same address. Different origin chains.

## References

- <a href="https://push.org/docs/chain/tutorials/basics/tutorial-simple-counter/" target="_blank">Official Simple Counter Tutorial</a>
- <a href="https://push.org/docs/chain/build/send-universal-transaction/" target="_blank">PushChain Documentation - Send Universal Transaction</a>
- <a href="https://www.npmjs.com/package/@pushchain/core" target="_blank">PushChain Core SDK</a>

**Next up**: Who is `msg.sender`, really?

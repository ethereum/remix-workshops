到此为止，我们已经举例说明了如何在一个区块链与另一个区块链之间发送普通信息。 现在，让我们来实现一个合约，从一个区块链向另一个区块链发送一条信息和一个代币。

## 概述

这份合约看起来应该很熟悉。 与上一节非常相似，`constructor`接收`Gateway` 和 `Gas Service`地址。

然后，它将从源链中调用一个名为 `sendToMany` 的函数，该函数接收的参数与上一节类似。

1. `_destinationChain`: 交易被发往的链
2. `_destinationAddress`：交易被发往的目标链上的地址
3. `_destinationAddresses`：将随代币转账一起发送的消息。 在此示例中，消息是代币转账的接收地址列表。
4. `_symbol`：正在发送的代币的符号
5. `_amount`: 正在发送的代币数量

在函数中，我们已经实现了 `require` 语句，以确保 gas 被发送

We also have the basic ERC20 functionality to send the token from the calling wallet to this smart contract. The contract also calls the `approve` function to allows the Gateway to eventually transfer funds on its behalf.

Finally, the `_executeWithToken()` function is also implemented out of the box.

It makes use of the following params:

1. `_payload`: The incoming message from the source chain
2. `_tokenSymbol`: The symbol of the token that was sent from the source chain
3. `_amount`: The amount of the token that was sent from the source chain

Now with these params that were passed in, the `_execute()` function can send the tokens that were sent to the appropriate receivers.

## Challenge

Your challenge here is to finish off the `sendToMany()` function using the Axelar Gateway and Gas Service to trigger an interchain transaction.

In the end you should be able to deploy this contract on two testnets, trigger the `sendToMany()` function and see the live transaction on <a href="https://testnet.axelarscan.io" target="_blank">Axelarscan (testnet) block explorer</a>.

### Testing Notes

Note 1: The recommended ERC20 to use is `aUSDC` a wrapped version of the USDC token that can be obtained from <a href= "https://docs.axelar.dev/resources/rpc/resources" target="_blank">the discord faucet bot</a>. When triggering the `sendToMany()` function simply pass in the symbol `aUSDC` to the fourth param.

Note2: When triggering the `sendToMany()` function you must remember to `approve` your contract to spend `aUSDC` tokens on your behalf, otherwise `transferFrom()` on line49 will throw an error.

At this point we have gone over an example of how to send a general message between one blockchain to another. 现在，让我们来实现一个合约，从一个区块链向另一个区块链发送一条信息和一个代币。

## 概述

这份合约看起来应该很熟悉。 与上一节非常相似，`constructor`接收`Gateway` 和 `Gas Service`地址。

然后，它将从源链中调用一个名为 `sendToMany` 的函数，该函数接收的参数与上一节类似。

1. `_destinationChain`: 交易被发往的链
2. `_destinationAddress`：交易被发往的目标链上的地址
3. `_destinationAddresses`：将随代币转账一起发送的消息。 在此示例中，消息是代币转账的接收地址列表。
4. `_symbol`：正在发送的代币的符号
5. `_amount`: 正在发送的代币数量

在函数中，我们已经实现了 `require` 语句，以确保 gas 被发送

我们还具有基本的 ERC20 功能，可将代币从调用钱包发送到此智能合约。 The contract also calls the `approve` function to allow the Gateway to eventually transfer funds on its behalf.

最后，`_executeWithToken()`函数也是开箱即用的。

它使用以下参数：

1. `_payload`: 源链中传入的消息
2. `_tokenSymbol`: 从源链发来的代币符号
3. `_amount`: 从源链发来的代币数量

现在，通过传入的这些参数，`_execute()`函数可以将已发送的代币发给合适的接收者。

## 挑战

这里您面临的挑战是使用 Axelar 网关和 Gas 服务完成`sendToMany()`函数以触发链间交易。

最后，您应该能够在两个测试网上部署此合约，触发`sendToMany()`函数并在<a href="https://testnet.axelarscan.io" target="_blank">Axelarscan（测试网）区块浏览器</a>上查看实时交易。

### 测试备注

注 1：建议使用的 ERC20 是`aUSDC`，它是 USDC 代币的封装版本，可以从 <a href= "https://docs.axelar.dev/resources/rpc/resources" target="_blank">discord faucet bot</a> 获取。 触发`sendToMany()`函数时，只需将符号`aUSDC`传递给第四个参数即可。

注2：当触发`sendToMany()`函数时，您必须记住`approve`您的合约以代表您花费`aUSDC`代币，否则第49行的`transferFrom()`将抛出错误。

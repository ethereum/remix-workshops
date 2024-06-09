Axelar 可执行文件包含相关的辅助函数，这些函数将根据源链的相关入站交易在目标链上自动执行。

以下是您需要使用 Axelar 可执行文件中的相关函数

## \_execute()

此函数处理目标链上的执行操作。 它需要以下四个参数：

1. `commandId`: Axelar 链上唯一的交易ID。
2. `sourceChain`: 被发送的这条交易所在的源链
3. `sourceAddress`: 被发送的这条交易所在源链上的地址
4. `payload`: 发送的信息

`sourceChain`和`sourceAddress`是开箱即用的关键参数，可以用于核查真实性的信息上的目的地链。 有效负载（如网关部分中所述）是从源链发送并在目标链上使用的消息。 此模块的其余部分不会使用 `commandId` 。

## \_executeWithoken()

This function handles the execution on the destination chain for a message being sent with a fungible token. It takes six relevant parameters:

1. `commandId`: A unique transaction id on the Axelar chain.
2. `sourceChain`: The blockchain which the transaction has been sent from
3. `sourceAddress`: The address from the source chain that the transaction has been sent from
4. `payload`: The message that is being sent
5. `tokenSymbol`: The symbol of the token being sent
6. `amount`: The amount of that token that is being sent

The first four parameters are identical to that of the `_execute()` function. The final two parameters of `tokenSymbol` and `amount` are in reference to the token that is being sent along with the message. It allows you on the destination chain to interact with the token accordingly, for example transferring it to another receiving address. The `commandId` will not be used during the rest of this module.

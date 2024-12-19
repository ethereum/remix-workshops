Axelar 可执行文件包含相关的辅助函数，这些函数将根据源链的相关入站交易在目标链上自动执行。

以下是您需要使用 Axelar 可执行文件中的相关函数

## \_execute()

此函数处理目标链上的执行操作。 它需要以下四个参数：

1. `commandId`: Axelar 链上唯一的交易ID。
2. `sourceChain`: 被发送的这条交易所在的源链
3. `sourceAddress`: 被发送的这条交易所在源链上的地址
4. `payload`: 发送的信息

The `sourceChain` and `sourceAddress` are key parameters which you receive out of the box that can be used for verifying authenticity of messages on the destination chain. 有效负载（如网关部分中所述）是从源链发送并在目标链上使用的消息。 此模块的其余部分不会使用 `commandId` 。

## \_executeWithoken()

此函数处理被发送到目标链上带有可替代代币的消息交易。 它需要六个相关参数：

1. `commandId`: Axelar 链上唯一的交易ID。
2. `sourceChain`: 被发送的这条交易所在的源链
3. `sourceAddress`: 被发送的这条交易所在源链上的地址
4. `payload`: 发送的信息
5. `tokenSymbol `：正在发送的代币的符号
6. `amount`: 被发送的代币数量

前四个参数与 `_execute()` 函数相同。 最后两个参数`tokenSymbol` 和 `amount` 与随信息发送的代币有关。 它允许您在目标链上与代币进行交互，例如将其转移到另一个接收地址。 此模块的其余部分不会使用 `commandId` 。

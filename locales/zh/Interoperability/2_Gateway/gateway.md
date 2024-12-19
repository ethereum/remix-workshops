Axelar网关是您的智能合约进入Axelar生态系统的入口。 一旦你在网关上触发了适当的函数，你的交易将从源链跨越Axelar网络开始其跨链之旅到目标链。 每个连接到Axelar的链都有一个部署的网关合约供您互动。

The following are the two more relevant functions you will need to be familiar with.

## callContract()

此函数触发一笔带有信息的跨链交易，从源链到目标链。 它需要三个相关参数：

1. `destinationChain`：目标链的名称
2. `destinationContractAddress`：此交易将在目标链上执行的地址。
3. `payload`: 发送的信息

前两个参数很直观。 它们包括你希望此交易发送到的链的名称以及你希望在该链上执行的地址。 最后一个参数是payload。 这个payload代表发送到目标链的通用信息。 此信息可以在目的链上以多种不同的方式使用。 例如，您可以发送数据作为目标链上另一个函数的参数，您可以发送一个函数签名作为信息然后在目标链上执行，等等。

## callContractWithToken()

此函数触发一笔带有信息和可互换代币的跨链交易，从源链到目标链。 它需要五个相关参数：

1. `destinationChain`：目标链的名称
2. `destinationContractAddress`：此交易将在目标链上执行的地址。
3. `payload`: 发送的信息
4. `symbol`：正在发送的代币的符号
5. `amount`: 被发送的代币数量

这里的前三个参数与 `callContract()` 中的相同。 最后两个参数与随信息发送的代币有关。 这是代币的符号和正在发送的代币数量。

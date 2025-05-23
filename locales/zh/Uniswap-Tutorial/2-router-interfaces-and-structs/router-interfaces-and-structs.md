整个 UniswapSwapExamples 合约将仅在本教程的第 5 节中介绍。  在此之前，我们将构建代码块。

本节探讨`ISwapRouter`接口，该接口定义了可以在 Uniswap 交换合约上调用的函数。

单跳交换允许用户直接在流动性池内将一种代币交换为另一种代币。
多跳交换允许用户通过路由多个代币来将一种代币交换为另一种代币。

Solidity 中的接口指定了必须包含在继承它们的合约中的函数。  它们对于声明支持哪些函数非常有用，并允许不同合约之间更轻松地集成和交互。

结构体用于定义自定义数据类型。

## ISwapRouter 接口

ISwapRouter 接口定义了可以在 Uniswap 交换合约上调用的函数。 我们需要使用此接口与 Uniswap 交换合约进行交互并执行交换。

在第 5 行，我们定义了一个名为`router`的常量，其类型为`ISwapRouter`。 我们将此变量的值设置为部署在地址`0xE592427A0AEce92De3Edee1F18E0157C05861564`的智能合约的接口实例。 这是以太坊主网上 Uniswap V3 Swap 合约的地址。

在第 9 行，我们定义了一个名为`ISwapRouter`的接口。 此接口定义了两个函数: `exactInputSingle` 和 `exactInput` 。

## exactInputSingle

在第25行，我们定义了一个叫做`ExactInputSingleParams`的结构体。 该结构体定义了第 21 行的 exactInputSingle 函数所需的参数，该函数将执行单跳交换。 该结构体具有以下参数：

- **`address tokenIn`**：发送代币的地址。
- **`address tokenOut`**: 接收代币的地址
- **`uint24 fee`**: 交换费用
- **`address recipient`**: 将接收输出代币的地址。
- **`uint deadline`**: 必须处理交易的时间戳，以限制交换的时间。
- **`uint amountIn`**: 发送的输入代币的数量。
- **`uint amountOutMinimum`**: 发送者愿意接受的最小输出代币数量，以防止不利的价格变动。
- **`uint160 sqrtPriceLimitX96`**: 以特定格式表示的价格限制，以防止互换在不利价格下发生。

## exactInput

在第25行，我们定义了一个叫做`ExactInputParams `的结构体。 这个结构体定义了我们在第 33 行上的 `extractInput` 函数所需的参数。 该函数将执行多跳交换。 该结构体具有以下参数：

- **`bytes path`**: 有关交换路径的编码信息（即通过哪些代币进行交换）。
- **`address recipient`**: 接收输出代币的地址。
- **`uint deadline`**: 与上面类似，处理交易必须遵循的时间戳。
- **`uint amountIn`**: 输入代币的数量。
- **`uint amountOutMinimum`**: 发送者期望接收的输出代币的最小数量。


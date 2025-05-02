单跳交换允许用户直接在流动性池内将一种代币交换为另一种代币。 在本节中，我们将学习如何使用 Uniswap V3 交换合约执行单跳交换。

## 函数参数

在第8行，我们定义了一个叫做`swapExactInputSingleHop `的函数。 该函数执行单跳交换。 它需要以下参数：

- **`address tokenIn`**: 正在发送的代币的地址。
- **`address tokenOut`**: 接收到的代币的地址。
- **`uint24 poolFee`**: 交换费用
- **`uint amountIn`**: 发送的输入代币的数量。

它返回一个叫做`amountOut`的`uint`, 即收到的输出代币的数量。

## 函数体

在函数体中，我们首先将输入代币从发送者传输到我们的合约，第 14 行。
然后，我们批准 Uniswap 交换合约代表我们花费输入代币，第 15 行。

在第17行上，我们创建了一个 `ExactInputSingleParams` 结构体实例。 该结构体包含第 45 行的 `exactInputSingle`函数所需的参数，该函数将执行单跳交换。 我们在该行上重复`ISwapRouter.ExactInputSingleParams`两次，因为我们正在创建在接口中定义的结构体实例。

## ExactInputSingleParams 结构体参数

我们设置结构体的参数如下：

- **`tokenIn`**：我们将其设置为函数的`tokenIn`参数。
- **`tokenOut`**：我们将其设置为函数的`tokenOut`参数。
- **`fee`**：我们将其设置为函数的`poolFee `参数。
- **\`recipient**：我们将其设置为交易发送人。
- **\`deadline**：我们将其设置为当前的时间戳。 我们这样做是因为我们希望尽快处理交易。
- **`amountIn `**：我们将其设置为函数的`amountIn `参数。
- **`amountOutMinimum`**: 我们将其设置为 0，因为我们不想指定我们愿意接受的输出代币的最小数量。
- **`sqrtPriceLimitX96`**: 我们将其设置为 0，因为我们不想指定价格限制。

## 执行单跳交换

在第29行中，我们将`extractInputSingle`函数的输出分配给`amountOut`变量。 该函数执行单跳交换并返回收到的输出代币的数量。
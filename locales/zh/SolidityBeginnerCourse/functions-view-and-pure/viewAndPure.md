本节将介绍不修改区块链状态的函数类型：view和pure函数。

### View函数

view函数不修改状态。

以下语句被认为是修改状态：

1. 写入状态变量。
2. 发出事件。
3. 创建其他合约。
4. 使用 `selfdestruct`。
5. 通过`call`发送以太币。
6. 调用未标记为`view`或`pure`的任何函数。
7. 使用低级别调用。
8. 使用包含某些操作码的内联汇编。

来自 <a href="https://docs.soliditylang.org/en/latest/contracts.html#view-functions" target="_blank">Solidity文档</a>.

You can declare a view function using the keyword `view`. 您可以使用关键字`view`声明函数。在此合约中，`addToX`（第8行）是一个`view`函数。该功能接受参数`y`并返回参数和状态变量`x`的总和。它读取`x`但不会修改它。 您可以使用关键字`pure`声明pure函数。在此合约中，`add`（第13行）是一个pure函数。该函数接受参数`i`和`j`，并返回它们的总和。它既不读取也不修改状态变量`x`。 It reads `x` but does not modify it.

### Pure函数

_Pure functions_ promise to neither modify nor to read the state.

除了上面解释过的一系列改变状态的语句外，还有以下内容被认为是读取状态：

1. 阅读状态变量。
2. 访问 `address(this).balance` 或者 `<address>.balance`。
3. 访问block、tx、msg 的任何成员（除了`msg.sig`和`msg.data`之外）。
4. 调用未标记为`pure`的任何功能。
5. 包含某些操作码的内联汇编。

来自 <a href="https://docs.soliditylang.org/en/latest/contracts.html#pure-functions" target="_blank">Solidity文档</a>.

You can declare a pure function using the keyword `pure`. In this contract, `add` (line 13) is a pure function. This function takes the parameters `i` and `j`, and returns the sum of them. pure函数承诺既不修改也不读取状态变量。

In Solidity development, you need to optimise your code for saving computation cost (gas cost). Declaring functions view and pure can save gas cost and make the code more readable and easier to maintain. Pure functions don't have any side effects and will always return the same result if you pass the same arguments.

<a href="https://www.youtube.com/watch?v=vOmXqJ4Qzbc" target="_blank">观看有关view和pure函数的视频教程</a>

## ⭐️ 作业

创建一个名为`addToX2`的函数，该函数接受参数`y`并使用参数和状态变量`x`的和更新状态变量`x`。

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

您可以使用关键字`view`声明函数。 您可以使用关键字`view`声明函数。在此合约中，`addToX`（第8行）是一个`view`函数。该功能接受参数`y`并返回参数和状态变量`x`的总和。它读取`x`但不会修改它。 您可以使用关键字`pure`声明pure函数。在此合约中，`add`（第13行）是一个pure函数。该函数接受参数`i`和`j`，并返回它们的总和。它既不读取也不修改状态变量`x`。 它读取`x`但不会修改它。

### Pure函数

_Pure 函数_ 既不修改也不读取状态。

除了上面解释过的一系列改变状态的语句外，还有以下内容被认为是读取状态：

1. 阅读状态变量。
2. 访问 `address(this).balance` 或者 `<address>.balance`。
3. 访问block、tx、msg 的任何成员（除了`msg.sig`和`msg.data`之外）。
4. 调用未标记为`pure`的任何功能。
5. 包含某些操作码的内联汇编。

来自 <a href="https://docs.soliditylang.org/en/latest/contracts.html#pure-functions" target="_blank">Solidity文档</a>.

您可以使用关键字`pure`声明纯函数。 在此合约中，`add`（第 13 行）是一个纯函数。 该函数接受参数`i`和`j`，并返回它们的总和。 pure函数承诺既不修改也不读取状态变量。

在Solidity开发中，您需要优化代码以节省计算成本（gas成本）。 声明函数 view 和 pure 可以节省 Gas 成本，并使代码更具可读性和更易于维护。 纯函数没有任何副作用，并且如果传递相同的参数，将始终返回相同的结果。

<a href="https://www.youtube.com/watch?v=vOmXqJ4Qzbc" target="_blank">观看有关view和pure函数的视频教程</a>

## ⭐️ 作业

创建一个名为`addToX2`的函数，该函数接受参数`y`并使用参数和状态变量`x`的和更新状态变量`x`。
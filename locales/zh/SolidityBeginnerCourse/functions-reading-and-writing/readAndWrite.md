本节将简要介绍函数并教您如何使用它们对状态变量进行读写。

与其他语言一样，我们在Solidity中使用函数来创建模块化、可重用的代码。但是，Solidity函数有一些特殊之处。 However, Solidity functions have some particularities.

Solidity函数可以分为两种类型：

1. Functions that modify the state of the blockchain, like writing to a state variable. 修改区块链状态的函数，例如写入状态变量。在此合约中，`set`函数（第9行）更改了状态变量`num`。
2. Functions that don't modify the state of the blockchain. These functions are marked `view` or `pure`. 不修改区块链状态的函数。这些函数标记为`view`或`pure`。例如，在此合约中，`get`函数（第14行）标记为仅返回`num`而不更改状态。

要定义一个函数，请使用`function`关键字后跟唯一名称。

如果一些函数像我们的`set`函数（第9行）那样需要输入，则必须指定参数类型和名称。惯例是使用下划线作为参数名称前缀以将其与状态变量区分开来。 A common convention is to use an underscore as a prefix for the parameter name to distinguish them from state variables.

然后可以设置函数的可见性，并声明它们`view`或`pure`，就像我们对于`get`函数所做的那样，如果它们不修改状态。我们的`get` 函数还返回值，因此我们必须指定返回类型。在这种情况下，由于该函数返回`uint`类型的状态变量`num`，则其返回类型也是`uint`。 Our `get` function also returns values, so we have to specify the return types. In this case, it's a `uint` since the state variable `num` that the function returns is a `uint`.

接下来几节将详细探讨Solidity函数的特殊之处。

<a href="https://www.youtube.com/watch?v=Mm6834AAY00" target="_blank">观看有关函数的视频教程</a>.

## ⭐️ 作业

1. 创建一个名为`b`的pubic状态变量，其类型为`bool`，并将其初始化为`true`。
2. 创建一个名为`get_b`的public函数，该函数返回`b`的值。

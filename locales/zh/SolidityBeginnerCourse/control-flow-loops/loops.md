Solidity支持循环控制流语句，允许合约重复执行代码。

Solidity区分三种类型的循环：`for`、`while`和`do while`循环。

### for

通常情况下，如果您知道要执行某个代码块的次数，则使用`for`循环（第7行）。在solidity中，您应该指定此数量以避免交易用尽gas，并且如果迭代次数过多则失败。 在solidity中，您应该指定此数量以避免交易用尽gas，并且如果迭代次数过多则失败。

### while

如果您不知道要执行代码的次数但想基于条件退出循环，则可以使用`while`循环（第20行）。在Solidity中很少使用循环，因为如果没有限制可能发生太多次迭代，则交易可能会用尽gas并且失败。
在Solidity中很少使用循环，因为如果没有限制可能发生太多次迭代，则交易可能会用尽gas并且失败。

### do while

`do while`循环是一种特殊类型的`while`循环，在检查条件之前可以确保至少执行一次代码。

### continue

`continue` 语句用于跳过剩余的代码块并开始下一个迭代。 `continue`语句用于跳过剩余的代码块并开始下一个迭代。在这个合约中，`continue`语句（第10行）将防止第二个if语句（第12行）被执行。

### break

`break`语句用于退出一个循环。 `break`语句用于退出一个循环。 在这个合约中，`break`语句（第14行）将导致`for`循环在进行了6次迭代后终止.

<a href="https://www.youtube.com/watch?v=SB705OK3bUg" target="_blank">观看有关循环声明的视频教程</a>.

## ⭐️ 作业

1. 在`Loop`合约中，创建名为count的公共`uint`状态变量。
2. 在for循环结束时，将count变量增加1。
3. 尝试使count变量等于9，但请确保不改变`break`语句。
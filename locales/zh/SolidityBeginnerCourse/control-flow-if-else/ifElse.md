Solidity支持不同的控制流语句，确定合约的哪些部分将被执行。 Solidity支持不同的控制流语句，确定合约的哪些部分将被执行。条件If/Else语句使合约能够根据布尔条件是`true`还是`false`来做出决策。

Solidity区分三种不同的If/Else语句：`if`、`else`和`else if`。

### if

if语句是最基本的语句，允许合约根据布尔表达式执行操作。

在此合约的`foo`函数（第5行）中，if语句（第6行）检查`x`是否小于`10`。如果该语句为真，则函数返回`0`。 在此合约中，`foo`函数使用`else`语句（第10行）在未满足其他任何条件时返回`2`。

### else

The `else` statement enables our contract to perform an action if conditions are not met.

In this contract, the `foo` function uses the `else` statement (line 10) to return `2` if none of the other conditions are met.

### else if

使用`else if`语句可以组合多个条件。

如果foo函数的第一个条件（第6行）未被满足，但是`else if` 语句的条件（第8行）为真，函数将返回`1`。

<a href="https://www.youtube.com/watch?v=Ld8bFWXLSfs" target="_blank">观看有关If/Else表达式的视频教程</a>。

## ⭐️ 作业

Create a new function called `evenCheck` in the `IfElse` contract:
在`IfElse`合约中，创建一个名为`evenCheck`的新函数：

- 它接受一个`uint`作为参数。
- 如果参数为偶数，则函数返回 true ，否则返回 false。
- 使用三元运算符返回 evenCheck 函数结果。

提示：模数（％）运算符产生整数除法的余数。
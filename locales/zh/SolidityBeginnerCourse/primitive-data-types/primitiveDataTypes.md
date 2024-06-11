在本节中，我们将展示Solidity的原始数据类型、如何声明它们以及它们的特性。

### bool

您可以使用关键字‘bool’声明布尔类型的数据。布尔值只能为`true`或`false`。 布尔值只能为`true`或`false`。

### uint

我们使用关键字`uint`和`uint8`到`uint256`来声明无符号整数类型（与-12不同，它们没有符号）。Uints是正整数或零，并且范围从8 bits到256 bits。 `uint`类型与`uint256`相同。 Uints是正整数或零，并且范围从8 bits到256 bits。 `uint`类型与`uint256`相同。

### int

我们使用关键字`int`和`int8`到`int256`来声明整数类型。整数可以是正、负或零，并且范围从8 bits到256 bits。 `int`类型与`int256`相同。 整数可以是正、负或零，并且范围从8 bits到256 bits。 `int`类型与`int256`相同。

### address

`address`类型变量保存20个字节的值，这是以太坊地址的大小。还有一种特殊的以太坊地址——可支付地址（address payable），可以从合约接收ether。 还有一种特殊的以太坊地址——可支付地址（address payable），可以从合约接收ether。

所有这些数据类型都有默认值，在合约中显示（第29行）。

您可以在<a href="https://docs.soliditylang.org/en/latest/types.html" target="_blank">Solidity文档</a>中了解更多关于这些数据类型以及定点数字、字节数组、字符串等内容。

在课程后期，我们将研究像**Mappings**、**Arrays**、**Enums**和**Structs**之类的数据结构。

<a href="https://www.youtube.com/watch?v=8Tj-Th_S7NU" target="_blank">观看原始数据类型视频教程。</a>.

## ⭐️ 作业

1. 创建一个名为`newAddr`的`public` `address` 变量，并给其赋一个不同于现有变量 `addr` 的值。
2. 创建一个名为`neg`的`public`负数变量，并确定其类型。
3. Create a new variable, `newU` that has the smallest `uint` size type and the smallest `uint` value and is `public`.创建一个新变量`newU`，它具有最小的`uint`大小类型和最小的`uint`值，并且是`public`的。

提示：查看合约中的其他地址或在互联网上搜索以太坊地址。

在Solidity中有三种不同类型的变量：_状态变量_、_局部变量_和_全局变量_。

## 1. 状态变量

全局变量，也称为特殊变量，在全局命名空间中存在。它们不需要声明但可以从您的合约内访问。全局变量用于检索区块链、特定地址、合约和交易的信息。 它们声明在合约内、函数外。
状态变量存储在合约存储器中，因此也存在于区块链上。它们声明在合约内、函数外。这个合约有两个状态变量，即字符串`text`（第6行）和无符号整数`num`（第7行）。

## 2. 局部变量

局部变量存储在内存中，其值仅可在定义它们的函数内访问。局部变量不会被存储到区块链上。在这个合约中，无符号整数`i`（第11行）是一个局部变量。 局部变量不会被存储到区块链上。
在这个合约中，无符号整数`i`（第11行）是一个局部变量。

## 3. 全局变量

_全局变量_，也称为_特殊变量_，在全局命名空间中存在。 它们不需要声明但可以从您的合约内访问。
全局变量用于检索区块链、特定地址、合约和交易的信息。

在本例中我们使用`block.timestamp`(第14行)来获取当前块生成时的Unix时间戳，并使用`msg.sender`(第15行)来获取调用者的地址。

所有全局变量列表都可以在<a href="https://docs.soliditylang.org/en/latest/cheatsheet.html?highlight=Variables#global-variables" target="_blank">Solidity文档</a>中找到。

Watch video tutorials on <a href="https://www.youtube.com/watch?v=hl692-xJPUQ" target="_blank">State Variables</a>, <a href="https://www.youtube.com/watch?v=5Gxzwn0SQDU" target="_blank">Local Variables</a>, and <a href="https://www.youtube.com/watch?v=ryA86ZiSD-w" target="_blank">Global Variables</a>.

## ⭐️ Assignment

1. 创建一个public类型的`状态变量`，命名为`blockNumber`。
2. 在函数`doSomething()`内，将当前区块号的值赋给状态变量`blockNumber`。

提示：查看Solidity文档中的全局变量部分以了解如何读取当前区块号。

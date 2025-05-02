# 一个基本的通用代理示例

在关联的solidity文件**step4.sol**中，有两个合约 - **ProxyContract** 和 **LogicContract**。

要使用此系统，我们首先部署LogicContract。

然后当我们去部署ProxyContract时，将LogicContract的地址作为ProxyContract构造函数的参数传递。

只部署一次ProxyContract。

LogicContract代码将在第20行调用。它将被委托调用，并保持LogicContract上下文不变。 它将被委托调用，并保持LogicContract上下文不变。

如果需要更改逻辑，则会部署新的LogicContract并使用setLogicContracAddress设置器函数设置其地址。

_注意：这里使用的LogicConract不使用存储。一旦需要使用存储，实现就会变得更加复杂，因为这些合同共享上下文。_ 一旦需要使用存储，实现就会变得更加复杂，因为这些合同共享上下文。\*
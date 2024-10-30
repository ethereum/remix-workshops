欢迎来到这个面向初学者的交互式 Solidity 课程。

在第一节中，我们将简要介绍本课程将涉及的概念，查看一个智能合约示例，并向您展示如何在 Remix IDE 中与该合约进行交互。

该合约是一个计数器合约，具有增加、减少和返回计数器变量状态的功能。

如果我们查看合约的顶部，我们可以看到有关合约的一些信息，如许可证（第 1 行）、Solidity 版本（第 2 行），以及关键字`contract`及其名称`Counter`（第 4 行）。 我们将在下一节有关**基本语法**的内容中介绍这些概念。

通过`uint public count`（第 5 行），我们声明了一个`uint`类型的状态变量，其可见性为`public`。 我们将在有关 **变量**、**原始数据类型** 和 **可见性** 的部分中介绍这些概念。

然后，我们创建一个使用`view`关键字定义的`get`函数（第 8 行）并返回`uint`类型。 具体来说，它返回 `count` 变量。 该合约还有两个函数，`inc`（第 13 行）和`dec`（第 18 行）函数，用于增加或减少计数变量。
我们将在有关 **函数 - 读取和写入状态变量** 和 **函数 - 查看和纯粹** 的部分中讨论这些概念。

## 通过Remix编译和部署

**GIF** 与合约交互： <img src="https://github.com/dacadeorg/remixMedia/blob/main/solidity-beginner-course/introduction.gif?raw=true" alt="Compile and deploy contract" width="300"/>

1. 我们可以在 Remix IDE 的`Solidity 编译器`模块中编译您的`Counter`合约。

2. 在“部署和运行交易” 模块中，我们在合约输入字段中选择合约 “Counter”，然后单击 “部署” 按钮。

3. 我们在IDE中扩展了代币合约函数，并测试了其`get`、`inc`和`dec`函数。

## ⭐️ 作业

在整个课程中，我们将为您布置作业来测试和巩固您新获得的知识。

您的第一次作业是：

1. 编译这个合约。
2. 将其部署到 Remix VM
3. 与您的合约交互。
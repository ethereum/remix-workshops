欢迎来到这个面向初学者的交互式Solidity课程。

在本节中，我们将为您提供此课程包含的概念的预览，查看一个示例智能合约，并向您展示如何在Remix IDE中与该合约进行交互。

该合约是一个计数器合约，具有增加、减少和返回计数器变量状态的功能。

如果我们查看合约头部，可以看到一些关于合约的信息，例如许可证（第1行），Solidity版本（第2行）以及关键字`contract`及其名称`Counter`（第4行）。我们将在下一节基本语法中介绍这些概念。

使用`uint public count`（第5行），我们声明了一个类型为`uint`且可见性为`public`的状态变量。我们将在有关`变量`、`原始数据类型`和`可见性`的章节中介绍这些概念。

然后创建了一个`get`函数（第8行），它用`view`关键字定义并返回`uint`类型。具体而言，它返回`count`变量。此合约还有两个函数：`inc`函数（第13行）和`dec`函数（第18行），分别增加或减少`count`变量。我们将在`函数 - 读写状态变量`和`函数 - view和pure`部分谈论这些概念。

## 通过Remix编译和部署

与合约交互的**GIF：**
<img src="https://github.com/dacadeorg/remixMedia/blob/main/solidity-beginner-course/introduction.gif?raw=true" alt="Compile and deploy contract" width="300"/>

1. 我们可以在Remix IDE的“Solidity compiler”模块中编译您的`Counter`合约。

2. 在“Deploy＆run transactions”模块中，我们在合约输入字段中选择我们的合约“Counter”，然后单击“Deploy”按钮。

3. 我们展开IDE中合约函数，并测试其`get`、`inc`和`dec`函数。

## ⭐️ 作业
在整个课程中，我们将给您分配任务来测试和巩固您新获得的知识。

你的第一个作业是：
1. 编译这份合约。
2. 将其部署到Remix VM上。
3. 与您的合约进行交互。

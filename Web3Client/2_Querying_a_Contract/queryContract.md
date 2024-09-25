现在我们知道如何查询简单数据，让我们尝试更复杂的查询。

这是一个部署到主网上的合约 - 地址：<a href="https://etherscan.io/address/0xdac17f958d2ee523a2206206994597c13d831ec7#code" target="_blank">https://etherscan.io/address/0xdac17f958d2ee523a2206206994597c13d831ec7#code</a>

我们将访问该合约以查找其代币名称。

**name**变量是合约的状态变量。

要访问此主网合约，我们需要进行一些设置。

1. 切换到metamask中的主网。
2. 您可能需要刷新Remix。
3. 由于刷新，您可能还需要重新加载本教程。
4. 转到Deploy＆Run并切换到**Injected Web3**。

**使用Web3**
在脚本`queryContract.js`中，我们需要实例化web3.eth.Contract对象。为此，我们需要获取合约的ABI和地址。源代码和ABI可在etherscan中找到，因为合约开发人员有意发布了它们。  为此，我们需要获取合约的ABI和地址。  源代码和ABI可在etherscan中找到，因为合约开发人员有意发布了它们。

在 etherscan 中，可以看到它的名称为 **TetherToken**。  在etherscan中，可以看到它的名称为**TetherToken**。向下滚动至etherscan源代码部分中的TetherToken合约，则可以查看该合约的状态变量 - 其中第一个命名为**name**。

有一些语法技巧可用于返回状态变量值。

- 要调用公共状态变量自动生成器函数，请同时将变量视为函数（通过添加括号）并附加call()。

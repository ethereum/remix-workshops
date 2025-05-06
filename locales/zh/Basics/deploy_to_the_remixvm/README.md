在前一章中，我们编写了一个合约 - 也就是说Solidity代码已经被转换成了以太坊虚拟机（EVM）字节码片段。

现在我们将把该代码放到测试区块链上。

1. 点击“部署和运行”图标![deploy & run icon](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_to_the_remixvm/images/run.png "deploy & run icon")。

2. 从环境下拉菜单中选择**Remix VM**。

3. 单击 Deploy 按钮（或展开视图中的 transact 按钮）。

4. 您已将编译后的合约部署到 Remix VM - 一个在浏览器窗口内运行的模拟区块链。  Remix VM 是简单、快速的测试链。  这不太现实，因为您不需要批准每笔交易。

5. 检查终端以查看此部署交易的详细信息。

您也可以使用 Remix 部署到其他公共EVM 链。 为此，您需要连接到不同的**环境** - 例如 Injected Provider 。  Injected Provider 将 Remix 连接到浏览器钱包（如 MetaMask 或类似的）。  我们将在本教程结束时尝试部署到公共网络。 但在此之前，我们将介绍如何与已部署合约的函数进行交互。

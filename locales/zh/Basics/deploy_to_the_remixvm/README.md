在前一章中，我们编写了一个合约 - 也就是说Solidity代码已经被转换成了以太坊虚拟机（EVM）字节码片段。

现在我们将把该代码放到测试区块链上。

1. 点击“部署和运行”图标![deploy & run icon](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_to_the_remixvm/images/run.png "deploy & run icon")。

2. 从环境下拉菜单中选择**Remix VM**。

3. Click the Deploy button (or the transact button in the expanded view).

4. You have deployed your compiled contract to the Remix VM - a simulated blockchain that is running inside of your browser window.  The Remix VM is simple, fast test chain.  It is not that realistic because you don't need to approve each transaction.

5. Check the terminal to see detail of this deployment transaction.

You can also use Remix to deploy to other public EVM chains. To do this, you'll need to connect to a different **Environment** - like Injected Provider.  The Injected Provider connects Remix to browser wallet (like MetaMask or similar).  We'll try deploying to a public network at the end of this tutorial. But before we get there, we'll cover how to interact with a deployed contract's functions.

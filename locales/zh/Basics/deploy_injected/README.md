1. 如果您没有像 **MetaMask** 这样的浏览器钱包，请立即下载并安装一个。

2. 在浏览器中点击MetaMask图标。 登录并选择 Ephemery 测试网络。 您可能需要更新钱包的设置，以便可以看到**测试网络**。  或者，您可以转到 Remix 的 Deploy & Run transation 模块，然后在环境部分中选择 Ephemery。

3. 为公共测试网络获取测试 ETH 通常很烦人。  Ephemery 是一个每月更新一次的公共网络，因此获得测试 ETH 应该很容易。  以下是一些<a href="https://github.com/ephemery-testnet/ephemery-resources?tab=readme-ov-file#faucets" target="_blank">Ephemery 水龙头</a>的链接。

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/testnet.png)

Sepolia 是另一个流行的测试网，未刷新，因此部署将持续存在，但 Sepolia 水龙头更难使用。

在您的浏览器钱包中，确保您没有选择主网或任何需要花费真实 ETH 的网络。 In the Deploy & Run module, below the Environment select box, you'll see a badge with the network's ID and for popular chains, its name.  In the case below its Sepolia.

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/sepolia.png)

5. 返回Remix。在**Deploy＆Run**中，在**环境**下拉菜单中选择**Injected Provider**。

确保你看到2_Owner.sol作为**CONTRACT** 选择框的选项，然后点击**Deploy**按钮。如果**CONTRACT** 选择框为空，则需要重新编译2_Owner。确保它是编辑器中的选中文件，然后转到**Solidity Compiler**进行编译。

6. After you hit the `Deploy` button, you'll see the browser wallet popup asking you to pay for the transactions.  If you have the appropriate kind of ETH for this chain, approve this transaction.  Check the printout in the terminal.  Once the block is validated, the **deployed instance** will appear at the bottom of Deploy & Run

通过这个教程，  通过这个教程，你已经学会了如何打开、编译、部署和与Remix IDE中的智能合约进行交互。

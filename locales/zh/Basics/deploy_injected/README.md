1. If you don't have a browser wallet like **MetaMask** download and install one now.

2. 下载浏览器插件**MetaMask**。 在浏览器中点击MetaMask图标。登录并选择一个测试网络。 You might need to update your wallet's settings so that you can see **test networks**.  Alternatively, you can go to Remix's Deploy & Run transation module and in the ENVIRONMENT section select Ephemery.

3. Getting test ETH for public test networks is often annoying.  Ephemery is a public network that is refreshed monthly, so getting test ETH should be painless.  Here is a link to some <a href="https://github.com/ephemery-testnet/ephemery-resources?tab=readme-ov-file#faucets" target="_blank">Ephemery faucets</a>.

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/testnet.png)

Sepolia is another popular testnet that is not refreshed, so deployments will persist, but Sepolia faucets are more difficult to use.

In your browser wallet make sure that you have NOT selected mainnet or any network that will cost real ETH. In the Deploy & Run module, below the Environment select box, you'll see a badge with the network's ID and for popular chains, its name.  In the case below its Sepolia.

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/sepolia.png)

5. 返回Remix。在**Deploy＆Run**中，在**环境**下拉菜单中选择**Injected Provider**。

确保你看到2_Owner.sol作为**CONTRACT** 选择框的选项，然后点击**Deploy**按钮。如果**CONTRACT** 选择框为空，则需要重新编译2_Owner。确保它是编辑器中的选中文件，然后转到**Solidity Compiler**进行编译。

6. After you hit the `Deploy` button, you'll see the browser wallet popup asking you to pay for the transactions.  If you have the appropriate kind of ETH for this chain, approve this transaction.  Check the printout in the terminal.  Once the block is validated, the **deployed instance** will appear at the bottom of Deploy & Run

通过这个教程，  通过这个教程，你已经学会了如何打开、编译、部署和与Remix IDE中的智能合约进行交互。

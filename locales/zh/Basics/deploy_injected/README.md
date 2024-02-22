## 部署到公共测试网络

1. 下载浏览器插件 **MetaMask**。

2. 在浏览器中点击MetaMask图标。 登录并选择一个测试网络。

3. 获取该网络的一些测试ETH。 例如，如果您选择了Goerli Network，则搜索 `Goerli faucet`，您将找到一个网站，在那里（经过一些步骤后），您将获得一些测试ETH。

4. 返回Remix。 在 **Deploy＆Run** 中，在**环境**下拉菜单中选择 **Injected Provider** 。

5. 确保你看到 2_Owner.sol 作为 **CONTRACT** 选择框的选项，然后点击 **Deploy** 按钮。  如果 **CONTRACT** 选择框为空，则需要重新编译2_Owner。  确保它是**编辑器**中的选中文件，然后转到 **Solidity Compiler** 进行编译。

6. 您会看到 MetaMask 弹出窗口要求您支付交易费用。

通过这个教程，  你已经学会了如何打开、编译、部署和与Remix IDE中的智能合约进行交互。

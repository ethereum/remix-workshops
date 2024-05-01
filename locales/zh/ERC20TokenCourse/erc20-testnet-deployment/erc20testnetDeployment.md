在本节中，我们将使用以太坊钱包Metamask，将合约部署到以太坊区块链的测试网络上。这个测试网络与真正的区块链（主网）非常相似，但不需要真正的ETH来支付交易费用。 This testnet behaves very similarly to the real blockchain (mainnet), but does not require real ETH to pay for transactions.

### 1. 安装Metamask

**1.1** 前往<a href="https://metamask.io/" target="_blank">metamask.io</a>。

**1.2** 点击下载按钮，然后点击浏览器安装（例如Chrome），并添加扩展程序到您的浏览器中。

**1.3** 按照说明创建一个钱包。

### 2. 获取测试代币

In order to make transactions on the testnet we need Ethereum testnet tokens, which you can receive from something called a _faucet_.

**2.1** 通过单击“Ethereum Mainnetwork”下拉菜单并选择“Ropsten Test Network”来切换您的Metamask网络。如果您没有看到任何测试网络，请单击“显示/隐藏”链接，并在设置中启用“显示测试网络”。 If you don’t see any test networks, click on the "Show/hide" link and enable "Show test networks" in the settings.

**2.2** Go to <a href="https://faucet.ropsten.be/" target="_blank">https://faucet.ropsten.be/</a>, enter the address of your account, and claim testnet ETH. You could also use other ropsten faucets like <a href="https://faucet.paradigm.xyz/" target="_blank">https://faucet.paradigm.xyz/</a> or <a href="https://app.mycrypto.com/faucet" target="_blank">https://app.mycrypto.com/faucet</a>. **2.2** 前往<a href="https://faucet.ropsten.be/" target="_blank">https://faucet.ropsten.be/</a>，输入您账户地址，并领取testnet ETH。 您也可以使用其他ropsten水龙头，如<a href="https://faucet.paradigm.xyz/" target="_blank">https://faucet.paradigm.xyz/</a> 或 <a href="https://app.mycrypto.com/faucet" target="_blank">https://app.mycrypto.com/faucet</a> 。请查看<a href="https://ethereum.org/en/developers/docs/networks/#testnet-faucets" target="_blank">ethereum.org</a>上列出的水龙头了解更多信息。

### 3. 部署

确保已编译EduCoin合约。

**3.1.** 在Remix IDE的“DEPLOY＆RUN TRANSACTIONS”模块下，在“ENVIRONMENT”中选择“Injected Web3”。它会要求您连接您的账户，您应该确认。 It will ask you to connect your account which you should confirm.

**3.2** 部署EduCoin合约并在Metamask中确认交易。

**3.3** 您的合约应出现在“Deployed Contracts”部分。复制合约地址。 Copy the contract address.

**3.4** 在Metamask中，单击资产，然后单击“导入代币”链接，并将您的合约地址粘贴到输入中。

现在，您应该看到钱包余额为1000 EDC。

### 4. 进行交易

**4.1** 单击Metamask钱包中的标识图像（表示您的地址），并创建第二个账户（Account 2）。

**4.2** 复制Account 2 的地址。

**4.3** 切换到第一个账户（Account 1）并向 Account 2 发送250 EDC。检查 Account 1 和 Account 2 的余额。如果要使用此帐户进行交易，则可能需要再次添加代币地址以便于 Account 2 导入代币，并且需要testeth。 Check the balances of Account 1 and Account 2. 为了在测试网络上进行交易，我们需要以太坊测试代币，您可以从称为水龙头的地方获得。

如果查看Remix中的合约并使用Account 1和Account 2 的地址调用`balanceOf`函数，则还可以查看自己的帐户余额。

## 查询区块链

在本教程中，我们将运行一个使用JavaScript库的脚本查询区块链。

这表示我们不会使用Remix GUI或类似Etherscan的区块浏览器，而是使用编辑器中的脚本，并从终端运行它。

与区块链交互最多使用的JS库是web3.js和ethers.js。

让我们从一个简单的web3.js示例queryBlockNum.js开始。

该脚本对web3.js进行了调用，这个调用放到了try/catch代码块中进行异步执行。

我们将通过`let blockNumber = await web3.eth.getBlockNumber()`来查询当前区块号码

请注意，对象`web3`由Remix注入。 请注意，对象`web3`由Remix注入。有关更多关于web3.js信息，请查看其文档<a href="https://web3js.readthedocs.io/" target="_blank">https://web3js.readthedocs.io</a>。

要使用web3.js或ethers.js，请在**Deploy＆Run**模块中选择**Injected Web3**或**Web3 Provider**环境。目前无法在JSVM上工作。**如果您尝试，则会收到错误消息**。  脚本目前无法在JSVM上工作。 **如果您尝试，则会收到错误消息**。

因此，在此示例中，请选择Deploy＆Run模块中的**Injected Web3**并安装Metamask。

从终端执行 `remix.execute()`。 从终端执行`remix.execute()`。此命令将执行带有`let blockNumber = await web3.eth.getBlockNumber()`代码的JavaScript文件。

在控制台中，您应该可以看到Metamask连接到链条上当前区块的编号。

1. **MetaMask** のようなブラウザウォレットが無ければ、はじめにダウンロードしてインストールしてください。

2. ブラウザにあるMetaMaskアイコンをクリックしてください。 サインインして、 Ephemeryテストネットワークを選択します。 **テストネットワーク** を表示するには、ウォレット設定の更新が必要になります。  他の方法として、RemixのDeploy & RunトランザクションモジュールのENVIRONMENTセクションでEphemeryを選択することもできます。

3. 公開テストネットワークでテスト用のETHを取得するのは、煩雑な場合があります。  Ephemeryは、公開テストネットワークで毎月リフレッシュされます。そのため、テスト用のETHを取得するのは簡単になっています。  こちらに<a href="https://github.com/ephemery-testnet/ephemery-resources?tab=readme-ov-file#faucets" target="_blank">Ephemeryフォーセット</a>のリンクがまとまっています。

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/testnet.png)

もう一つの人気のテストネットとしてSepoliaがあります。こちらは、リフレッシュされません。デプロイしたものが保持されますが、Sepoliaフォーセットの使用には、より困難が伴います。

In your browser wallet make sure that you have NOT selected mainnet or any network that will cost real ETH. In the Deploy & Run module, below the Environment select box, you'll see a badge with the network's ID and for popular chains, its name.  In the case below its Sepolia.

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/sepolia.png)

5. Make sure you see the 2_Owner.sol as a choice in the **CONTRACT** select box, then click the **Deploy** button.

If the **CONTRACT** select box is empty, you'll need to compile 2_Owner again by making 2_Owner.sol the active file in the **editor** and then go to the **Solidity Compiler** to compile it.

6. After you hit the `Deploy` button, you'll see the browser wallet popup asking you to pay for the transactions.  If you have the appropriate kind of ETH for this chain, approve this transaction.  Check the printout in the terminal.  Once the block is validated, the **deployed instance** will appear at the bottom of Deploy & Run

And with that you have finished this tutorial.  You now have experience with opening, compiling, deploying and interacting with Smart Contracts in Remix IDE.

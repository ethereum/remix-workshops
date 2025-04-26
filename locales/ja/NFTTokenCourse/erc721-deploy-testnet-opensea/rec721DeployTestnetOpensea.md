このセクションでは、MetaMask(イーサリアムウォレット)を使用してコントラクトをイーサリアムブロックチェーンのテストネットであるRinkebyにデプロイします。そしてNFTをミントして、NFTマーケットプレースであるOpenSeaで確認します。

### 1. MetaMaskのインストール

**1.1** <a href="https://metamask.io/" target="_blank">metamask.io</a>に移動します。

**1.2** ダウンロードボタンをクリックして、ブラウザ(例: Chrome)にインストールすることで拡張機能に加えてください。

**1.3** 説明に従ってウォレットを作成してください。

### 2. Rinkeby用のテストネットトークンの取得

テストネットでトランザクションを作成するには、イーサリアムのテストネットトークンが必要になります。

**2.1** 「Ethereum Mainnetwork」から「Rinkeby Test Network」に変更します。

**2.2** <a href="https://faucet.paradigm.xyz/" 
target="_blank">https://faucet.paradigm.xyz/</a>に移動して、あなたのアカウントのアドレスを入力して、テストネット用のETHを請求してください。
他のRopstenフォーセットである<a href="https://faucet.paradigm.xyz/" target="_blank">https://faucet.paradigm.xyz/</a>や <a href="https://app.mycrypto.com/faucet" target="_blank">https://app.mycrypto.com/faucet</a>も使用することができます。 フォーセットのリストは、<a href="https://ethereum.org/en/developers/docs/networks/#testnet-faucets" target="_blank">ethereum.org</a>に掲載されているのでご覧ください。

### 3. コントラクトのデプロイ

**3.1**  Remix IDEの「ENVIRONMENT」の下にある「DEPLOY & RUN TRANSACTIONS」モジュールで「Injected Web3」を選択します。 アカウントを接続するように求められたら、「Confirm」してください。 次に、「Injected Web3」の下にRinkebyネットワークバッチが表示されます。

**3.2** トークンコントラクトをデプロイし、MetaMaskでトランザクションを「Confirm」してください。

**3.3**  あなたのコントラクトが「Deployed Contracts」セクションに現れます。

### 4. NFTのミント

**4.1** IDEであなたのコントラクトを展開すると、関数のボタンが表示されます。

**4.2** safeMintボタンの横にある入力フィールドを展開します。 Remixに接続しているアカウントのイーサリアムアドレスを入力フィールド「to:」に入力します。 入力フィールド「tokenID:」には、「0」を入力します。 「transact」をクリックします。

**4.3** MetaMaskで「assets」をクリックし、「Import tokens」リンクをクリックします。次に、入力フィールドにあなたのコントラクトのアドレスをペーストします。 小数点を0に設定します。

You should now see the name of the symbol of your token contract (e.g. GEO) in your “Assets” view in Metamask. You should have one of these tokens.

### 5. あなたのNFTをOpenSeaで確認する

<a href="https://opensea.io/" 
target="_blank">OpenSea </a> is one of the most popular online marketplace for NFTs. OpenSea also provides a version where you can see assets on the testnet, under <a href="https://testnets.opensea.io/" 
target="_blank">https://testnets.opensea.io/</a>

**5.1** Go to <a href="https://testnets.opensea.io/login" 
target="_blank">https://testnets.opensea.io/login</a>.

**5.2** Connect with your Metamask wallet. You should be redirected to your account <a href="https://testnets.opensea.io/account" target="_blank">https://testnets.opensea.io/account</a> view on OpenSea, where you should be able to see your NFT. You should see the image of your NFT; when you click on it, you should see the name, description, and under properties, also the attributes that you created.

If you successfully completed this course and are familiar with the basics of Solidity development, we encourage you to continue your learning journey by learning how to create your own NFT auction contract from the Learneth resources.
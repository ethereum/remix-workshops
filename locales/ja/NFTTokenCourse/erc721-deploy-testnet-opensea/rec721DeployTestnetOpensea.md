このセクションでは、MetaMask(イーサリアムウォレット)を使用してコントラクトをイーサリアムブロックチェーンのテストネットであるSepoliaにデプロイします。そしてNFTをミントして、NFTマーケットプレースであるOpenSeaで確認します。

### 1. MetaMaskのインストール

**1.1** <a href="https://metamask.io/" target="_blank">metamask.io</a>に移動します。

**1.2** ダウンロードボタンをクリックして、ブラウザ(例: Chrome)にインストールすることで拡張機能に加えてください。

**1.3** 説明に従ってウォレットを作成してください。

### 2. Sepolia用のテストネットトークンの取得

テストネットでトランザクションを作成するには、イーサリアムのテストネットトークンが必要になります。

**2.1** 「Ethereum Mainnetwork」から「Sepolia Test Network」に変更します。

**2.2** <a href="https://www.alchemy.com/faucets/ethereum-sepolia" 
target="_blank">https://www.alchemy.com/faucets/ethereum-sepolia/</a>に移動して、あなたのアカウントのアドレスを入力して、テストネット用のETHを請求してください。
Or check the faucets listed on <a href="https://ethereum.org/en/developers/docs/networks/#testnet-faucets" target="_blank">ethereum.org</a> for other options.

### 3. コントラクトのデプロイ

**3.1** In the "DEPLOY & RUN TRANSACTIONS" module of the Remix IDE under "ENVIRONMENT" **select** "Injected Provide-Metamask" (or whatever wallet you are using). アカウントを接続するように求められたら、「Confirm」してください。 Then in the wallet, connect to the Sepolia network.  You may need to turn on a switch to view test networks. Once connected, there will be a "badge" with Sepolia and its network ID under "Injected Provider".

**3.2** トークンコントラクトをデプロイし、MetaMaskでトランザクションを「Confirm」してください。

**3.3**  あなたのコントラクトが「Deployed Contracts」セクションに現れます。

### 4. NFTのミント

**4.1** IDEであなたのコントラクトを展開すると、関数のボタンが表示されます。

**4.2** safeMintボタンの横にある入力フィールドを展開します。 Remixに接続しているアカウントのイーサリアムアドレスを入力フィールド「to:」に入力します。 入力フィールド「tokenID:」には、「0」を入力します。 「transact」をクリックします。

**4.3** MetaMaskで「assets」をクリックし、「Import tokens」リンクをクリックします。次に、入力フィールドにあなたのコントラクトのアドレスをペーストします。 小数点を0に設定します。

これで、MetaMaskにある「Assets」ビューで、あなたのトークンコントラクトのシンボル名が確認できます(例: GEO)。 トークンの1つを持っている必要があります。

### 5. あなたのNFTをOpenSeaで確認する

<a href="https://opensea.io/" 
target="_blank">OpenSea </a>は、NFTマーケットプレースで最も人気があるものの1つです。 OpenSeaでは、テストネット上にあるNFTを確認できるバージョン「<a href="https://testnets.opensea.io/" 
target="_blank">https://testnets.opensea.io/</a>」があります。

**5.1** 「<a href="https://testnets.opensea.io/login" 
target="_blank">https://testnets.opensea.io/login</a>」に移動します。

**5.2** MetaMaskウォレットを接続します。 OpenSeaのアカウントビュー「<a href="https://testnets.opensea.io/account" target="_blank">https://testnets.opensea.io/account</a>」にリダイレクトされます。ここで、あなたのNFTを確認することができます。 あなたのNFTのイメージが見え、クリックすると「name」、「description」を見ることができます。また「propertiey」の下に作成した属性も見ることができます。

このコースを完了したことによって、Solidity開発の基礎が身に着きました。LearnEthリソースにあるNFTオークションコントラクトの作成方法で、学習の旅を続けることをお勧めします。
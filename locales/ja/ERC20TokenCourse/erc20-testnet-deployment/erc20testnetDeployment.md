このセクションでは、メタマスク(イーサリアムウォレット)を使ってイーサリアムブロックチェーンのテストネットへコントラクトをデプロイします。 このテストネットは、本物のブロックチェーン(メインネット)と同様の動作をしますが、トランザクションの支払いに本物のETHは不要です。

### 1. メタマスクのインストール

**1.1** <a href="https://metamask.io/" target="_blank">metamask.io</a>に移動します。

**1.2** ダウンロードボタンをクリックし、ブラウザ(例: Chrome)にインストール します。最後に、ブラウザの拡張機能に加えてください。

**1.3** 説明に従って、ウォレットを作成します。

### 2. テストネットトークンの入手

テストネットでトランザクションを行うには、イーサリアムテストネットのトークンが必要です。_フォーセット_と呼ばれる物から受け取ることができます。

**2.1** 「Ethereum Mainnetwork」ドロップダウンをクリック、「Ropsten Test Network」を選択し、メタマスクのネットワークを切り替えます。 テストネットワークが何も表示されない場合は、「Show/hide」リンクをクリックして、設定にある「Show test networks」を有効にします。

**2.2** <a href="https://faucet.ropsten.be/" target="_blank">https://faucet.ropsten.be/</a>へ移動し、あなたのアカウントのアドレスを入力して、テストネットETHを請求します。 <a href="https://faucet.paradigm.xyz/" target="_blank">https://faucet.paradigm.xyz/</a>や<a href="https://app.mycrypto.com/faucet" target="_blank">https://app.mycrypto.com/faucet</a>などの他のRopstenフォーセットも使えます。 より詳しい情報は、<a href="https://ethereum.org/en/developers/docs/networks/#testnet-faucets" target="_blank">ethereum.org</a>にリストされているフォーセットをご確認ください。

### 3. デプロイメント

EduCoinコントラクトがコンパイルされていることを確認してください。

**3.1.** Remix IDEの「ENVIRONMENT」の下にある「DEPLOY & RUN TRANSACTIONS」モジュールで、「Injected Web3」を選択します。 アカウントを接続するように求められたら、「Confirm」してください。

**3.2** EduCoinコントラクトをデプロイし、メタマスクでトランザクションを「Confirm」してください。

**3.3** 「Deployed Contracts」セクションにコントラクトがすぐに現れます。 コントラクトアドレスをコピーします。

**3.4** メタマスクで、アセットをクリックし、「Import tokens」リンクをクリックします。そして、あなたのコントラクトのアドレスを入力フィールドにペーストします。

あなたのウォレットに、残高1000 EDCがあることを確認してください。

### 4. トランザクションの作成

**4.1** メタマスクウォレットでidenticon(アドレスの視覚的表現)をクリックし、2つ目のアカウント(Account 2)を作成します。

**4.2** Account 2のアドレスをコピーします。

**4.3** 一番目のアカウント(Account 1)に切り替えて、250 EDCを送信します。 Account 1とAccount 2の残高を確認します。 Account 2でトークンをインポートするのにトークンアドレスを再度に加える必要になることがあります。また、Account 2からトランザクションを作成する場合は、テストネットのETHが必要になります。

RemixにあるEduCoinコントラクトで、Account 1および Account 2のアドレスを渡して`balancedOf`関数を呼び出し、アカウントの残高を確認することもできます。

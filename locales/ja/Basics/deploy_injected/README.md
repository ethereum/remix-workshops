1. **MetaMask** のようなブラウザウォレットが無ければ、はじめにダウンロードしてインストールしてください。

2. ブラウザにあるMetaMaskアイコンをクリックしてください。 サインインして、 Ephemeryテストネットワークを選択します。 **テストネットワーク** を表示するには、ウォレット設定の更新が必要になります。  他の方法として、RemixのDeploy & RunトランザクションモジュールのENVIRONMENTセクションでEphemeryを選択することもできます。

3. 公開テストネットワークでテスト用のETHを取得するのは、煩雑な場合があります。  Ephemeryは、公開テストネットワークで毎月リフレッシュされます。そのため、テスト用のETHを取得するのは簡単になっています。  こちらに<a href="https://github.com/ephemery-testnet/ephemery-resources?tab=readme-ov-file#faucets" target="_blank">Ephemeryフォーセット</a>のリンクがまとまっています。

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/testnet.png)

もう一つの人気のテストネットとしてSepoliaがあります。こちらは、リフレッシュされません。デプロイしたものが保持されますが、Sepoliaフォーセットの使用には、より困難が伴います。

ブラウザウォレットでメインネットや他のETHを使用するネットワークが選択されていないことを確認してください。 Deploy & Runモジュールでは、次のENVIRONMENT選択ボックスで、一般的なチェーンの名前とネットワークIDが表示されます。  以下はSepoliaのケースです。

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/sepolia.png)

5. **CONTRACT** 選択ボックスの欄に 2_Owner.sol があることを確認し、 **Deploy** ボタンをクリックして下さい。

**CONTRACT** 選択ボックスが空の場合は、**エディタ** 内にあるアクティブファイルで 2_Owner.sol を作成し、 **Solidityコンパイラ** で 2_Owner をコンパイルする必要があります。

6. `Deploy` ボタンを押すと、ブラウザウォレットのポップアップがトランザクションの支払を求めてきます。  使用しているチェーンにETHが十分にある場合は、トランザクションを承認してください。  ターミナルの出力を確認してください。  ブロックが検証されると、 **デプロイ済みのインスタンス** が Deploy & Run ボタンに現れます。

以上でこのチュートリアルは終了です。  これで、Remix IDEでスマートコントラクトを開き、デプロイし、やり取りする経験を得ることができました。

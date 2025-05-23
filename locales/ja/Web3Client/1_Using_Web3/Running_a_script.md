## ブロックチェーンに対して問い合わせを行う

このチュートリアルでは、JavaScriptライブラリを使用したスクリプトを実行してブロックチェーンに対して問い合わせを行います。

Remix GUIやEtherscanのようなブロックエクスプローラを使う代わりに、エディタでスクリプトを用いて、ターミナルから実行します。

JSライブラリでブロックチェーンとやり取りをするのに最も使用されているのは、web3.jsとethers.jsです。

シンプルなweb3.jsおよびqueryBlockNum.jsから始めてみましょう。

このweb3.jsのスクリプト呼び出しは、try/catchブロックを含む自己実行型の非同期関数でラップされています。

現在のブロック番号を以下のコードで問い合わせます。
`let blockNumber = await web3.eth.getBlockNumber()`

オブジェクト`web3`は、Remixによって注入されることにご注意ください。 より詳細な情報については、web3.jsのドキュメント「<a href="https://web3js.readthedocs.io/" target="_blank">https://web3js.readthedocs.io</a>」を参照してください。

web3.jsまたはethers.jsを使用するには、 **Deploy & Run** モジュールにある **Injected Web3** または  **Web3 Provider** 環境を選択する必要があります。  スクリプトは、現在 JSVM で動作していません。 **これで試すと、エラーが発生します。**

この例では、Deploy & Runモジュールで **Injected Web3** を選択し、MetaMaskをインストールする必要があります。

ターミナルで、`remix.execute()`を実行します。 このコマンドにより、行`let blockNumber = await web3.eth.getBlockNumber()`を持つ現在のJavaScriptファイルが実行されます。

コンソールには、MetaMaskが接続しているチェーンの現在のブロック番号が表示されます。

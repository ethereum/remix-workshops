Solidityには、_状態変数_、_ローカル変数_、_グローバル変数_の3つのタイプの変数があります。

## 1. 状態変数

_状態変数_は、コントラクトの_ストレージ_に保存され、ブロックチェーン上に存在します。 コントラクトの内部で宣言されますが、関数の外にあります。
このコントラクトには、2つの状態変数があり、文字列`text`(6行目)とuintの`num`(7行目)が該当します。

## 2. ローカル変数

_ローカル変数_は、_メモリ_に保存され、その値は定義されている関数内からのみアクセスできます。 ローカル変数は、ブロックチェーンに保存されません。
このコントラクトでは、uint `i`(11行目)がローカル変数です。

## 3. グローバル変数

_グローバル変数_は、_特別変数_とも呼ばれ、グローバルな名前空間に存在します。 宣言する必要はありませんが、コントラクト内でアクセスすることができます。
グローバル変数は、ブロックチェーン、特定のアドレス、コントラクト、トランザクションについての情報を取得することができます。

この例では、 `block.timestamp`(14行目)で現在のブロックが生成されたUnixタイムスタンプを取得しています。また、 `msg.sender`(15行目)でコントラクトの関数を呼び出しているアドレスを取得しています。

使用可能なすべてのグローバル変数のリストは、<a href="https://docs.soliditylang.org/en/latest/cheatsheet.html?highlight=Variables#global-variables" target="_blank">Solidityのドキュメント</a>をご覧ください。

<a href="https://www.youtube.com/watch?v=hl692-xJPUQ" target="_blank">状態変数</a>、<a href="https://www.youtube.com/watch?v=5Gxzwn0SQDU" target="_blank">ローカル変数</a>、<a href="https://www.youtube.com/watch?v=ryA86ZiSD-w" target="_blank">グローバル変数</a>のビデオチュートリアルをご覧ください。

## ⭐️ 演習

1. `blockNumber`というpublicの状態変数を作成してください。
2. 関数`doSomething()`の内部で、状態変数`blockNumber`に現在のブロック番号の値を割り当ててください。

ヒント: Solidityのドキュメントにあるグローバル変数のセクションで現在のブロック番号を読み取る方法を見てみましょう。

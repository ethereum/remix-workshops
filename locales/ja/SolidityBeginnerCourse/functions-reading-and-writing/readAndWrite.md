このセクションでは、関数について簡単に紹介し、状態変数の読み込みおよび書き込みをする方法について学びます。

他の言語と同様に、Solidityでは関数を使ってモジュラー型で再利用可能なコードを作成します。 とはいえ、Solidityの関数では、いくつかの特徴があります。

Solidityの関数は、次の2つのタイプに分けられます。

1. ブロックチェーンの状態を変える関数。例えば、状態変数を書き込むなど。 このコントラクトでは、`set`関数(9行目)が状態変数`num`を変更しています。
2. ブロックチェーンの状態を変更しない関数。 こういった関数は、 `view`や`pure`が付いています。 例えば、このコントラクトでは、`get`関数(14行目)に`view`が付いており、状態を変更しない`num`のみを返します。

To define a function, use the `function` keyword followed by a unique name.

If the function takes inputs like our `set` function (line 9), you must specify the parameter types and names. A common convention is to use an underscore as a prefix for the parameter name to distinguish them from state variables.

You can then set the visibility of a function and declare them `view` or `pure` as we do for the `get` function if they don't modify the state. Our `get` function also returns values, so we have to specify the return types. In this case, it's a `uint` since the state variable `num` that the function returns is a `uint`.

We will explore the particularities of Solidity functions in more detail in the following sections.

<a href="https://www.youtube.com/watch?v=Mm6834AAY00" target="_blank">Watch a video tutorial on Functions</a>.

## ⭐️ Assignment

1. Create a public state variable called `b` that is of type `bool` and initialize it to `true`.
2. Create a public function called `get_b` that returns the value of `b`.
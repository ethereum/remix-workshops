Solidityでは、_マッピング_は、キー型と対応する値型のペアのコレクションです。

マッピングと配列の最大の違いは、マッピングは反復処理ができないことです。 キーがわからないと、その値にアクセスできません。 すべてのデータを知りたかったり、反復処理をしたい場合は、配列を使います。

既知のキーに基づいて値を取得したい場合は、マッピングが使えます(例
: アドレスをキーとしてよく使用)。 マッピングで値を検索するのは配列よりも簡単で安価です。 配列が大きくなりすぎると、反復処理のガス代が高くなりすぎて、反復処理が失敗する可能性があります。

マッピングのキーを配列に格納して反復処理をすることもできます。

### マッピングの作成

マッピングは、構文「 `mapping(KeyType => ValueType) VariableName`」で宣言します。
キー型は、組み込みの値型または任意のコントラクトが可能ですが、参照型はできません。 値型は、任意の型が可能です。

このコントラクトでは、publicのマッピング「`myMap`」 (6行目)を作成し、キー型「`address`」に値型「`uint`」を紐づけています。

### 値へのアクセス

マッピングが持つキーと値のペアとやり取りするための構文は、配列と似ています。
特定のキーに紐づいた値を見つけるには、マッピングの名前および括弧内にキーを提供します(11行目)。

配列と対照的なのは、キーがもつ値がセットされていないのにアクセスしてもエラーが発生しません。 マッピングを作成する際に、すべてのキーはデフォルト値が0としてマッピングされます。

### 値の設定

We set a new value for a key by providing the mapping’s name and key in brackets and assigning it a new value (line 16).

### 値の削除

We can use the delete operator to delete a value associated with a key, which will set it to the default value of 0. As we have seen in the arrays section.

<a href="https://www.youtube.com/watch?v=tO3vVMCOts8" target="_blank">マッピングのビデオチュートリアルをご覧ください</a>。

## ⭐️ 演習

1. Create a public mapping `balances` that associates the key type `address` with the value type `uint`.
2. Change the functions `get` and `remove` to work with the mapping balances.
3. Change the function `set` to create a new entry to the balances mapping, where the key is the address of the parameter and the value is the balance associated with the address of the parameter.
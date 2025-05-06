## `calculate_hash.circom`を理解する

`circuits`ディレクトリに移動して、`calculate_hash.circom`を開きます。 このファイルには、Hash Checker回路のCircumコードが含まれています。

### コードの概要

#### PragmaとIncludes:

- `pragma circom 2.0.0;` は、Circumのバージョンが記述されています。
- `include "circomlib/circuits/poseidon.circom";`は、Poseidonハッシュ関数を [CircomLib](https://github.com/iden3/circomlib)から取得して含めます。

#### `CalculateHash`テンプレート:

- 入力 `value1`、`value2`、`value3`、`value4`を定義しています。
- `Poseidon`ハッシュ関数を使い、これらの値のハッシュを計算します。\
- `out`でハッシュを出力します。

#### `HashChecker`テンプレート:

- 入力は、同じ値に対して`hash`を加えます。
- `calculateSecret`として`CalculateHash` をインスタンス化します。
- `calculatedHash`を計算します。
- `assert(hash == calculatedHash);` 使用して、計算されたハッシュと、提供されたハッシュが一致することを確認します。

#### メインコンポーネント:

- `component main {public [hash]} = HashChecker();`
- `hash`は、`public`の入力であり、値は`private`であることが記述されています。

### 目的

この回路によって、値そのものを明らかにせずに、特定の`hash`にハッシュされる`value1`、`value2`、`value3`、`value4`について知っていることを証明することができます。

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

- Inputs are the same values plus a `hash`.
- Instantiates `CalculateHash` as `calculateSecret`.
- Computes `calculatedHash`.
- Uses `assert(hash == calculatedHash);` to ensure the provided hash matches the calculated hash.

#### メインコンポーネント:

- `component main {public [hash]} = HashChecker();`
- Specifies that `hash` is a `public` input, while the values are `private`.

### 目的

The circuit allows someone to prove they know `value1`, `value2`, `value3`, and `value4` that hash to a specific `hash` without revealing the values themselves.

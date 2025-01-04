## `groth16_trusted_setup.ts`について理解する

`scripts/groth16/groth16_trusted_setup.ts`に移動します。 このスクリプトは、証明の生成に必要な信頼されたセットアップを実行します。

### コードの概要

#### 回路のコンパイル:

- `remix.call('circuit-compiler', 'generateR1cs', ...)`を使用して、回路から`R1CS` (Rank-1 Constraint System)を生成します。

#### 信頼されたセットアップのステップ

- `snarkjs.zKey.newZKey`: 証明鍵 (`zkey_0`) の初期化
- `snarkjs.zKey.contribute`: 証明鍵(`zkey_1`)にコントリビューションを追加
- `snarkjs.zKey.beacon`: 証明鍵(`zkey_final`)の確定

#### 検証:

- `snarkjs.zKey.verifyFromR1cs`:  `R1CS`と初期パラメータに対して証明鍵を検証します。

#### 鍵のエクスポート:

- 検証鍵を`scripts/groth16/zk/keys/verification_key.json`にエクスポートします。
- 最終証明鍵をエクスポートします(`scripts/groth16/zk/keys/zkey_final.txt`)。

### 目的

- `Groth16`証明システムに必要な信頼されたセットアップの実行。
- 証明の生成と検証に必要な鍵の生成。

### スクリプトの実行

- エディタにあるPlayボタンをクリック、またはファイルで右クリックして「Run」を選択します。
- スクリプトが完了し、 ターミナルに`"setup done."`というログが出力されるまで待ちます。

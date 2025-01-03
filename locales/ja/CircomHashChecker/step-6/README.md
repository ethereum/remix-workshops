## ウィットネスの計算

1. **Compute Witnessセクションへのアクセス**:
   - 信頼されたセットアップが終わると、 **Compute Witness** セクションが利用可能になります。

2. **入力値**:
   - 入力フィールド、`value1`、`value2`、`value3`、`value4`、`hash`が表示されます。
   - それぞれの入力項目に値を入力します。 入力例:
     - `value1`: `1234`
     - `value2`: `2`
     - `value3`: `3`
     - `value4`: `4`

3. **ハッシュの計算**:

   - Poseidonハッシュ関数と互換性のある外部ツールやライブラリを使用して4つのPoseidonハッシュ値を計算します。
   - 上記の値について計算したPoseidonハッシュは、`16382790289988537028417564277589554649233048801038362947503054340165041751802`となります。
   - 計算された`hash`値を`hash`入力フィールドに入力します。

   <img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomHashChecker/step-6/images/compute_witness.png" alt="compute-witness" width=250 height=400>

4. **ウィットネスの計算**:

   - **Compute Witness** ボタンをクリックします。
   - プロセスが完了するのを待ちます。 ウィットネスの計算に成功するとsuccessバッチが現れます。
   - 成功すると、`calculate_hash.wtn`がファイルエクスプローラの`.bin`ディレクトリに作成されます。

   <img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomHashChecker/step-6/images/witness_computed.png" alt="witness-computed" width=300 height=100>

## 信頼されたセットアップの実行

1. **Setup and Exportsセクションへのアクセス**:

- コンパイルに成功すると、プラグインで **Setup and Exports** セクションが利用可能になります。

2. **Proving Schemeの選択**:

- **Proving Scheme** ドロップダウンで **Groth16** を選びます。

3. **Power of Tauファイルの選択**:

- ドロップダウンから適切な **Power of Tau** ファイルを選びます。 わからない場合は、デフォルトのオプションを使用してください。

4. **検証鍵とコントラクトのエクスポート** (任意):

- **Export Verification Key** を有効にすると、検証鍵がファイルエクスプローラに保存されます。
- **Export Verifier Contract** を有効にすると、オンチェーン検証用のSolidityコントラクトが保存されます。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomHashChecker/step-5/images/trusted_setup.png" alt="trusted-setup" width=330 height=350>

5. **信頼されたセットアップの実行**:

- Click on the **Run Setup** button.
- Wait for the process to complete. This may take some time depending on the circuit complexity.

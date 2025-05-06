## 回路のコンパイル

### コンパイラバージョンの選択

1. サイドバーにある**Circuit Compiler**プラグインに行きます。
2. ドロップダウンメニューで必要な**コンパイラバージョン**を選びます。 このチュートリアルでは、最新の安定バージョンを選びます。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomHashChecker/step-4/images/select_compiler_version.png" alt="select-compiler-version" width=250 height=100>

### コンパイラオプションの設定

- **Auto Compile:** このオプションを有効にすると、回路の変更を保存した時に、自動的にコンパイルされます。
- **Hide Warnings:** これを有効にするとコンパイラの警告が通知されなくなります。
- **Advanced Configuration:**
  - クリックすると展開します。
  - **Prime Field**を選びます。 多くの場合において`BN128`で十分です。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomHashChecker/step-4/images/advanced_configuration.png" alt="advanced-configuration" width=300 height=100>

### 回路のコンパイル

1. **Compile**ボタンをクリックします。
2. コンパイルが完了するまで待ちます。 コンパイルに成功するとsuccessバッジが表示されます。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomHashChecker/step-4/images/compilation_success.png" alt="compilation-success" width=300 height=675>

### コンパイルの出力を理解する

- コンパイルが成功すると、 **Setup and Exports**セクションが現れます。
- これで、信頼されたセットアップを実行する次のステップに進めます。

次のステップでは、信頼されたセットアップを使用して回路をコンパイルします。

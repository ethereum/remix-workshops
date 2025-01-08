`multiplier.circom`回路の準備ができたら、Circuit Compilerプラグインを使用してコンパイルをしましょう。

## コンパイラバージョンの選択

必要な**コンパイラバージョン**をドロップダウンから選択します。 このチュートリアルでは、最新の安定バージョンを選択します。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-4/images/select_compiler_version.png" alt="select-compiler-version" width=250 height=100>

## コンパイルオプションの設定

- **Auto Compile:** このオプションを有効にすると、回路の変更を保存した時に、自動的にコンパイルされます。
- **Hide Warnings:** これを有効にするとコンパイラの警告が通知されなくなります。
- **Advanced Configuration:**
  - クリックすると展開します。
  - **Prime Field**を選びます。 多くの場合において`BN128`で十分です。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-4/images/advanced_configuration.png" alt="advanced-configuration" width=300 height=100>

## 回路のコンパイル

1. **Compile**ボタンをクリックします。
2. コンパイラが回路を処理します。
3. 成功すると、コンパイルに成功したことがメッセージに表示されます。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-4/images/compilation_success.png" alt="compilation-success" width=200 height=400>

**注意:** 何かエラーがあると、コンソールに表示されます。 コードにタイプミスやエラーがないか確認してください。

## コンパイルの出力を理解する

- コンパイルが成功すると、 **Setup and Exports**セクションが現れます。
- これで、信頼されたセットアップを実行する次のステップに進めます。

次のステップでは、信頼されたセットアップを使用して回路をコンパイルします。

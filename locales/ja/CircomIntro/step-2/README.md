このステップでは、`Circom ZKP compiler` プラグインを有効化してCircom開発の設定を行います。

## Circomゼロ知識証明コンパイラの有効化

1. 画面左にあるアイコンパネルの下部にある **Plugin Manager** (プラグのアイコン) をクリックします。
   2. 検索バーで、 **Circom** と入力します。
2. リストの中から **Circuit Compiler** プラグインを見つけ、 **Activate** ボタンをクリックします。
3. サイドバーにプラグインが表示されます。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-2/images/install_plugin.png" alt="install-plugin" width=200 height=475>

## Circomコンパイラのインターフェース

- **Compiler バージョンドロップダウン:** 使いたいCircomコンパイラのバージョンを選択します。
- **Auto Compile チェックボックス:** 有効にすると変更時に回路が自動コンパイルされます。
- **Hide Warnings チェックボックス:** 有効にすると警告が通知されなくなります。
- **Advanced Configuration:** クリックすると展開されPrimeフィールを選択できます(例: BN128、BLS12381)。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-2/images/compiler_interface.png" alt="compiler-interface" width=300 height=300>

プラグインをインストールしたら、Remix-IDEでCircomコードを記述する準備は完了です。

**注意:** Remix-IDEはWebベースのツールなので、インターネット接続が安定していることを確認してください。

次のステップでは、最初のCircom回路を作成します。

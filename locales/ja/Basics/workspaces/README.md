## ワークスペースを個別のプロジェクトの整理に役立てる

初期状態のRemixでは、ファイルエクスプローラに **default_workspace** という名前でワークスペースが読み込まれます。

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interface_introduction/images/default_workspace.png)

**default_workspace** のcontractsフォルダに3つのSolidity (.sol)ファイルがあります。 Remixは、様々なテンプレートがあります。 テンプレートをロードすると、ワークスペースに入ります。 ワークスペース間を移動するには、File Explorer上部にある選択ボックスを使います。

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interface_introduction/images/select-box.png)

ワークスペースは、テンプレート用途に限定するものではありません。 リポジトリをRemixにクローンする時に、ワークスペースにファイルを配置することができます。

新しいワークスペースを作成してみましょう。

1. File Explorerの上部にある、ハンバーガーアイコン(3本の横線).をクリックします。 メニューにあるコマンドとツールに目を通しましょう。

2. **+ Create** (最上部)を選択します。

3. モーダルが表示されるので、テンプレート中から1つを選んでください。

![hamburger](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/workspaces/images/popup.png)

ポップアップメニューから、リポジトリのクローンができることに気づいたと思います。 Gitリポジトリの管理は、DGitプラグインによって動作します。 ポップアップメニューでは、3種類のワークフローとともにGitHub actionsの作成もできます。

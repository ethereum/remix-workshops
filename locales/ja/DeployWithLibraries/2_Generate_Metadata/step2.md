## ライブラリのデプロイ

前の章では、**ライブラリ**が**コントラクト**と同じファイルにありました。 しかし、一緒にデプロイされず、異なるアドレスを持つことになります。

ライブラリを使用するには、呼び出すコントラクトにライブラリの**アドレス**が必要になります。

しかし、ライブラリのアドレスが直接Solidityコードに記述されるわけではありません。 呼び出すコントラクトのコンパイルされたバイトコードには、ライブラリの **アドレス** がある場所を示す **プレースホルダ―** を含んでおり、移動することができます。

**呼び出すコントラクト**のデプロイで、Remixは、コントラクトのライブラリのアドレスの**メタデータ**を参照し、プレースホルダーをアドレスに更新します。

そのため、ライブラリを呼び出すコントラクトをデプロイする前に、コントラクトのメタデータ(別名: **ビルドアーティファクト**)を生成し、ライブラリのアドレスをメタデータファイルに入力する必要があります。

コントラクトのメタデータは、**コンパイル時**に生成されます。

それでは、Remixで**メタデータファイル**の生成の設定をしましょう。

- アイコンパネルにある settings ![settings](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/settings.png "Settings") アイコンをクリックして設定モジュールに行きます。

![settings module](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/remix_settings.png "Settings Module")

- `Generate contract metadata`にチェックをします。

# コンパイルとメタデータ(JSON)ファイルの生成

1. Solidityコンパイラ![Solidity Compiler](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/remix_icon_solidity.png "Solidity Compiler")を開きます。

2. `2_contractSimpleLibrary.sol`をコンパイルします。

3. ファイルエクスプローラ![File Explorer](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/remix_file_explorer.png "File Explorer")に切り替えます。

4. 新しく作成されたJSONファイルに移動します。
 - 次のフォルダ内にあります:

**browser/.learneth/DeployWithLibraries/2_Generate_Metadata/artifacts/**

5. コントラクトから新しく作成されたJSONファイルを選択します。  `sample`コントラクトと**同一の名前**で**json**とうい拡張子の`sample.json`があります(ライブラリのメタデータである`contractSimpleLibrary.json`を選択しないでください)。

次のステップでは、メタデータファイルの修正をいくつか行います。

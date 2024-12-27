## デプロイ済みコントラクトの関数にアクセスする

1. コントラクトのデプロイに成功すると、Deploy and Run プラグインの下部にボタンが現れます。 キャレットをクリックするとキャレットが下向きになりコントラクトが開きます。
   ![deploy contract](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/instance.png "deployed contract")

2. このコントラクトには、2つの関数があります。  パラメータを個別に入力するには、changeOwnerの右にあるキャレット(赤枠で示された部分)をクリックしてください。 展開されたビューの各パラメータに、それぞれ入力ボックスがあります。

![deploy contract](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/deployed_open2.png "deployed contract")

このコントラクトが他のコントラクトをインポートしている場合は、インポートされたコントラクトの関数もここに表示されます。  お時間があれば、ERC20コントラクトで多数の関数が表示されるので試してみて下さい。

3. 青いボタンの関数は、 **pure** または **view** 関数です。  これは、プロパティを読み込んで値を返すことのみであることを表しています。  言い換えれば、何も保存をしていないため、無料です(ガスを消費しません)。  他の色の関数は、通常オレンジ(Remixテーマによって変化)は、情報を保存するためガスを消費します。  他の色の関数は、トランザクションを作成します。

4. 2_Owner.sol は、 **payable** 関数がありません。  payable 関数のボタンの色は赤になります。  payable 関数では、Etherを関数に送金することができます。  payable でETHを送金するには、Deploy & Run モジュールの上部にある **value** フィールドに送金したい金額を入力します。

5. Remix VMでは、トランザクションの承認は不要です。  より現実に近いテスト環境やメインネットを使用する場合は、トランザクションの承認が必要になります。 トランザクションの承認では、ガスを消費します。

6. 公開ネットワークの選択は、Remixではなく、ブラウザウォレットで行います。  ENVIRONMENTのタイトルの右際にプラグアイコンがあり、chainlist.orgへのリンクになっており、やり取りを行いたいチェーンの仕様を得ることができます。
   ![chainlist](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/chainlist.png "chainlist")

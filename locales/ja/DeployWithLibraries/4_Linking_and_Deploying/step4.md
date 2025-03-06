`Deploy & Run`モジュール
![Run transaction](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/4_Linking_and_Deploying/images/remix_runtransaction.png "Run Transaction")に切り替えてください。

- Remix VM Environmentを選択して、コンパイルされたコントラクトのリストの中から`sampleContract` コントラクトを選択します。

- `Deploy`をクリックします。

ターミナルは、次のような出力をする必要があります。`creation of sample errored: <address> is not a valid address. Please check the provided address is valid.`
That is expected: **We have set `autoDeployLib` to false, so Remix expects to have an address and not just `<address>`**

そのため、アドレスを取得するためにライブラリをデプロイする必要があります。

- コンパイルされたコントラクトのリストの中からライブラリ`aLib`を選択し、`deploy`を押します。

 ![Choose aLib](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/4_Linking_and_Deploying/images/contract_alib.png "Choose aLib")

- クリップボードアイコンをクリックして、ライブラリのアドレスをコピーします。

 ![Copy lib1](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/4_Linking_and_Deploying/images/alib_copy.png "Copy")

- **contract sample's**メタデータJSONにアドレスをペーストします。

- `Run transaction`モジュールにある`sampleContrac`コントラクトを再度選択します。そして、`deploy`を押します。

- デプロイが成功する必要があります。


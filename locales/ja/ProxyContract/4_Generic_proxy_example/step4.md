# 基本的な汎用プロキシの例

これに関するSolidityファイルである **step4.sol** に、**ProxyContract** と **LogicContract** の2つのコントラクトがります。

このシステムを使用するには、まずLogicContractをデプロイします。

次に、ProxyContractをデプロイする時に、LogicContractのアドレスをProxyContractのコンストラクタの引数として渡します。

ProxyContractは、ただ一度のみデプロイされます。

LogicContractのコードは、20行目で呼び出されます。 LogicContractのコンテキストを保持しつつ、delegate callで転送されます。

ロジックの変更が必要になった場合は、新しいLogicContractをデプロイし、setLogicContractAddressセッター関数で新しいLogicContractのアドレスをセットします。

_注意: このLogicContractでは、ストレージを用いていません。 ストレージが必要になる場合は、これらのコントラクトがコンテキスト共有するため、実装がより複雑になります。_

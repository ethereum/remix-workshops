# 基本的な汎用プロキシの例

これに関するSolidityファイルである **step4.sol** に、**ProxyContract** と **LogicContract** の2つのコントラクトがります。

このシステムを使用するには、まずLogicContractをデプロイします。

And then when we go to deploy the ProxyContract, we pass the LogicContract's address as an argument of the ProxyContract's constructor.

The ProxyContract is deployed only once.

The code of LogicContract will be called at the line 20. It will be forwarded with delegate call while keeping the context of LogicContract.

In case we need to change the logic we would deploy a new LogicContract and set the address of it with setLogicContractAddress setter function.

_Note: The LogicContract we have here does not use the storage. Once you need to use the storage the implementation becomes a bit more complicated because those contracts share the context._

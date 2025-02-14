Axelar Gas Serviceは、非常に有用なツールでインターチェーントランザクションのガスの支払で使用可能です。 送信元のチェーンのトークンにおいてトランザクションのコストを支払うことができ、これによってユーザー(デベロッパー)エクスペリエンスが向上します。 例えば、送信元のチェーンがイーサリアムで、目的のチェーンがPolygonだとします。ガスサービスがETHのトランザクションで全ての支払を受け付けます。呼び出し側から目的のチェーンのPolygonの実行においてMaticの支払いは必要ありません。

次は、Gas Serviceにおいて関連性が高く重要な関数のうちの2つです。

## payNativeGasForContractCall()

This function allows you to pay for the entirety of an interchain transaction in the native token of the source chain. It takes five relevant parameters:

1. `sender`: The address making the payment
2. `destinationAddress`: The address on the destination chain the transaction is sent to
3. `destinationChain`: The name of the destination the transaction is sent to
4. `payload`: The message that is being sent
5. `refundAddress`: The address any refunds should be sent to if too much gas was sent along with this transaction.

The parameters overlap with the parameters required by the `callContract()` function in the Gateway contract. The two parameters not discussed in the Gateway section are `sender` and `refundAddress`. The sender is the address paying for the transaction and the refund address is the address that will receive any surplus funds sent to the gas service.

## payNativeGasForContractCallWithToken()

This function allows you to pay for the entirety of an interchain transaction (that includes a token transfer) in the native token of the source chain. It takes seven relevant parameters:

1. `sender`: The address making the payment
2. `destinationAddress`: The address on the destination chain the transaction is sent to
3. `destinationChain`: The name of the destination the transaction is sent to
4. `payload`: The message that is being sent
5. `symbol`: The symbol of the token that was sent
6. `amount`: The amount of the token that was sent
7. `refundAddress`: The address any refunds should be sent to if too much gas was sent along with this transaction.

This function is nearly identical to the first top one the main difference being that it is used for message + token transfer transactions as opposed to just interchain message transactions (aka GMP Transactions). As a result the GasService needs to also know the `symbol` and `amount` of the token that is being sent.

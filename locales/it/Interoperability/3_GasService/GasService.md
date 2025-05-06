The Axelar Gas Service is an extremely useful tool made available to pay gas for an interchain transaction. It allows you to pay for the cost of a transaction in the token of the source chain, making for a much easier end user (and developer) experience. If for example the source chain is Ethereum and the destination chain is Polygon then the gas service will receive the complete payment for the transaction in ETH and no matic is needed from the caller to pay for the execution on the Polygon destination chain.

The following are the two more relevant functions you will need to be familiar with in regards to the Gas Service.

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

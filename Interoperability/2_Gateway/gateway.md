The Axelar Gateway is the entrypoint for your smart contract into the Axelar ecosystem. Once you have triggered the appropriate function on the Gateway, your transaction will begin its interchain journey from your source chain across the Axelar network to the destination chain. Each chain that is connected to Axelar has a deployed gateway contract for you to interact with.

The following are the two more relevant functions you will need to be familiar with.

## callContract()

This function triggers an interchain transaction with a message from the source to the destination chain. It takes three relevant parameters:

1. `destinationChain`: The name of the destination chain
2. `destinationContractAddress`: The address on the destination chain this transaction will execute at.
3. `payload`: The message that is being sent

The first two parameters are quite intuitive. They consist of both the name of the chain you want this transaction to go to and the address on that chain you want to end execute at. The final parameter is the payload. This payload represents a general message that is sent to the destination chain. The message can be used in many different ways on the destination chain. For example, you can send data to be used as a parameter in another function on the destination chain, you can send a function signature as a message that will then get executed on a destination chain, and much more.

## callContractWithToken()

This function triggers an interchain with a message and a fungible token from the source to the destination chain. It takes five relevant parameters:

1. `destinationChain`: The name of the destination chain
2. `destinationContractAddress`: The address on the destination chain this transaction will execute at.
3. `payload`: The message that is being sent
4. `symbol`: The symbol of the token being sent
5. `amount`: The amount of that token that is being sent

The first three parameters here are the same as in `callContract()`. The final two parameters are relevant to the token that is being sent along with the message. These are the symbol of the token and the amount of the token that is being sent.

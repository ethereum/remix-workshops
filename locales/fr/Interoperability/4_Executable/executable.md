The Axelar executable contains relevant helper functions that will be automatically executed on the destination chain in correspondence to the relevant inbound transaction from the source chain.

The following are the relevant functions you will need to use from Axelar Executable

## \_execute()

This function handles the execution on the destination chain. It takes the following four parameters:

1. `commandId`: A unique transaction id on the Axelar chain.
2. `sourceChain`: The blockchain which the transaction has been sent from
3. `sourceAddress`: The address from the source chain that the transaction has been sent from
4. `payload`: The message that is being sent

The `sourceChain` and `sourceAddress` are key parameters which you receive out of the box that can be used for verifying authenticity of messages on the destination chain. The payload (as discussed in the gateway section) is the message that was sent from the source chain to be used on your destination chain. The `commandId` will not be used during the rest of this module.

## \_executeWithToken()

This function handles the execution on the destination chain for a message being sent with a fungible token. It takes six relevant parameters:

1. `commandId`: A unique transaction id on the Axelar chain.
2. `sourceChain`: The blockchain which the transaction has been sent from
3. `sourceAddress`: The address from the source chain that the transaction has been sent from
4. `payload`: The message that is being sent
5. `tokenSymbol`: The symbol of the token being sent
6. `amount`: The amount of that token that is being sent

The first four parameters are identical to that of the `_execute()` function. The final two parameters of `tokenSymbol` and `amount` are in reference to the token that is being sent along with the message. It allows you on the destination chain to interact with the token accordingly, for example transferring it to another receiving address. The `commandId` will not be used during the rest of this module.

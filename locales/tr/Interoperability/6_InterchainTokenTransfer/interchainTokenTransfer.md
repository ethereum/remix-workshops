At this point we have gone over an example of how to send a general message between one blockchain to another. Now, let's implement a contract that sends a message and a token from one blockchain to another.

## Overview

This contract should seem largely familiar. Much like the previous section the `constructor` receives the `Gateway` and `Gas Service` addresses.

It then has a function that will be called from the source chain called `sendToMany` that takes in parameters similar to the previous section.

1. `_destinationChain`: The chain the transaction is sending to
2. `_destinationAddress`: The address on the destination chain your transaction is sending to
3. `_destinationAddresses`: The message that you will be sending along with your token transfer. In this example the message is a list of receiving addresses for the token transfer.
4. `_symbol`: The symbol of the token address being sent
5. `_amount`: The amount of the token being sent

In the function we already have the `require` statement implemented to ensure gas is sent

We also have the basic ERC20 functionality to send the token from the calling wallet to this smart contract. The contract also calls the `approve` function to allow the Gateway to eventually transfer funds on its behalf.

Finally, the `_executeWithToken()` function is also implemented out of the box.

It makes use of the following params:

1. `_payload`: The incoming message from the source chain
2. `_tokenSymbol`: The symbol of the token that was sent from the source chain
3. `_amount`: The amount of the token that was sent from the source chain

Now with these params that were passed in, the `_execute()` function can send the tokens that were sent to the appropriate receivers.

## Challenge

Your challenge here is to finish off the `sendToMany()` function using the Axelar Gateway and Gas Service to trigger an interchain transaction.

In the end you should be able to deploy this contract on two testnets, trigger the `sendToMany()` function and see the live transaction on <a href="https://testnet.axelarscan.io" target="_blank">Axelarscan (testnet) block explorer</a>.

### Testing Notes

Note 1: The recommended ERC20 to use is `aUSDC` a wrapped version of the USDC token that can be obtained from <a href= "https://docs.axelar.dev/resources/rpc/resources" target="_blank">the discord faucet bot</a>. When triggering the `sendToMany()` function simply pass in the symbol `aUSDC` to the fourth param.

Note2: When triggering the `sendToMany()` function you must remember to `approve` your contract to spend `aUSDC` tokens on your behalf, otherwise `transferFrom()` on line49 will throw an error.

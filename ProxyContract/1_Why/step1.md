# Proxy Contract AKS the Dispatcher

## Why?

This is a great pattern which is used mainly in **library development**. 

It helps in the following ways:

- **Save gas cost at deployment time**
The purpose of a high gas cost is to discourage the operations that cost a lot for their execution and to encourage optimized code.

- Proxy contracts are useful when a lot of instances of the same contract required to be deployed because they reduce the duplications in the deployment.

- **Avoid code repetition in the blockchain.**
Heavy computations are expensive because every node will need to perform them, this is of course slowing the network.

- **Develop upgradable(versioned) contracts**
When the contract is deployed, it’s immutable. By re-designing the code into different contracts, it is possible to allow logic upgrades while keeping the storage the same.

## Example of gas cost

Storing contract code at creation time can cost up to:
 - 200 * max_byte_code_length gas
 - 200 * 24576 = 49152004915200 * 10 gwei = 49152000 gwei = 0.049152 ether = 9 EUR
 
 see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-170.md for more info on max_byte_code_length.

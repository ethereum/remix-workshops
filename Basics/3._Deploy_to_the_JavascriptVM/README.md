In the previous chapter, we compiled a contract  - which is to say the solidity code has been transformed into little chunks of Ethereum Virtual Machine (EVM) bytecode.

Now we will put that code on a test blockchain. 

1. Click the Deploy and Run icon ![deploy & run icon](https://github.com/ethereum/remix-workshops/blob/master/Basics/3._Deploy_JSVM/images/run.png?raw=true "deploy & run icon").  

2. Select the **JavaScript VM** from the Environment pulldown. 

4. Click the Deploy button (or the transact button in the expanded view).

5. You have deployed the contract to the JSVM - a simulated blockchain that is running inside of your browser window.  The JSVM is the simplest, fastest  and least realistic of test chains.  It is very similar to Ganache - if you are familiar with Truffle. It is not that realistic because you don't need to approve each transaction.  

You can deploy to other test chains or to the mainnet. But to do this you'd need to connect to another **environment** - like Injected Web3 or Web3 Provider.  When you use Injected Web3 - you need to have MetaMask installed. MetaMask is a wallet that is a browser plugin.    

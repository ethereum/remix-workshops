# Deploying a contract

We've got a compiled contract  - which is to say the solidity code has been transformed into little chunks of Ethereum Virtual Machine (EVM) bytecode.

Now we have to put that code on a blockchain. 

1. Click the Deploy and Run icon ![deploy & run icon](https://github.com/ethereum/remix-workshops/blob/master/Basics/2_deploy_JSVM/images/run.png?raw=true "deploy & run icon").   But before you click it, make sure that ballot.sol is the active tab in the **editor** - which it should be because you just compiled it.

2. Select the **JavaScript VM** from the Environment pulldown.

3. In the text box to the right of the Deploy button, the hint text says: **uint8 _numProposals**.  This means the constructor of the Ballot contract has a parameter **AND** that parameter is **AND** it is an integer that is an **uint8** **AND** the name of the variable **is _numProposals**.  So put a number in this text box.  You can click the caret to open up the interface so you have more room.  This is especially useful if a function has many input parameters.

4. Click the Deploy button (or the transact button in the expanded view).

5. You have deployed the contract to the JSVM - a simulated blockchain that is running inside of your browser window.  The JSVM is the simplest, fastest  and least realistic of test chains.  You can deploy to other test chains or to the mainnet. But to do this you'd need to connect to another environment - like Injected Web3 or Web3 Provider.  When you use Injected Web3 - you need to have MetaMask installed.  

6. Install MetaMask. 

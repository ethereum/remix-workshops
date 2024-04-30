1. Download the browser plugin **MetaMask** or the browser wallet of your choice. 

2. Click the MetaMask icon in your browser. Sign in and choose the Sepolia test network. You might need to update the wallet's settins so that you can see test networks.

3. Get some test ETH for Sepolia by searching for `Sepolia faucet`. You'll find a website where (after jumping through some hoops)(hopefully not too many), you'll get some test ETH sent to your address. In your browser wallet make sure that you have NOT selected mainnet or any network that will cost real ETH. In the Deploy & Run module, below the Environment select box, you'll see a badge with the network's ID and for popular chains, its name.

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/sepolia.png)

4. Go back to Remix. In  **Deploy & Run**, in the **Environment** pulldown, choose **Injected Provider - MetaMask**.

5. Make sure you see the 2_Owner.sol as a choice in the **CONTRACT** select box, then click the **Deploy** button.  If the **CONTRACT** select box was empty, you'll need to compile 2_Owner again by making 2_Owner.sol the active file in the **editor** and then go to the **Solidity Compiler** to compile it.  Then come back to Deploy & Run to deploy the contract using **Injected Provider - MetaMask** "provider" to the network that you chose in the browser wallet. 

6. You'll see the MetaMask popup asking you to pay for the transactions.  If you have some Sepolia Eth, approve this transaction.  Check the printout in the terminal.  Once the block is validated, the **deployed instance** will appear at the bottom of Deploy & Run

And with that you have finished this tutorial.  You now have experience with opening, compiling, deploying and interacting with Smart Contracts in Remix IDE.

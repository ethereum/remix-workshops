1. If you don't have a browser wallet like **MetaMask** download and install one now.

2. Click the MetaMask icon in your browser. Sign in and choose the Ephemery test network. You might need to update your wallet's settings so that you can see **test networks**.  Alternatively, you can go to Remix's Deploy & Run transation module and in the ENVIRONMENT section select Ephemery.

3. Getting test ETH for public test networks is often annoying.  Ephemery is a public network that is refreshed monthly, so getting test ETH should be painless.  Here is a link to some <a href="https://github.com/ephemery-testnet/ephemery-resources?tab=readme-ov-file#faucets" target="_blank">Ephemery faucets</a>.

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/testnet.png)

Sepolia is another popular testnet that is not refreshed, so deployments will persist, but Sepolia faucets are more difficult to use.

In your browser wallet make sure that you have NOT selected mainnet or any network that will cost real ETH. In the Deploy & Run module, below the Environment select box, you'll see a badge with the network's ID and for popular chains, its name.  In the case below its Sepolia.

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/sepolia.png)

5. Make sure you see the 2_Owner.sol as a choice in the **CONTRACT** select box, then click the **Deploy** button.

If the **CONTRACT** select box is empty, you'll need to compile 2_Owner again by making 2_Owner.sol the active file in the **editor** and then go to the **Solidity Compiler** to compile it.

6. After you hit the `Deploy` button, you'll see the browser wallet popup asking you to pay for the transactions.  If you have the appropriate kind of ETH for this chain, approve this transaction.  Check the printout in the terminal.  Once the block is validated, the **deployed instance** will appear at the bottom of Deploy & Run

And with that you have finished this tutorial.  You now have experience with opening, compiling, deploying and interacting with Smart Contracts in Remix IDE.

In the previous chapter, we compiled a contract  - which is to say the Solidity code has been transformed into little chunks of Ethereum Virtual Machine (EVM) bytecode.

Now we will put that code on a test blockchain.

1. Click the Deploy and Run icon ![deploy & run icon](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_to_the_remixvm/images/run.png "deploy & run icon").

2. Select one of the **Remix VM**s from the **Environment** pulldown.

3. Click the Deploy button (or the transact button in the expanded view).

4. You have deployed your compiled contract to the Remix VM - a simulated blockchain that is running inside of your browser window.  The Remix VM is simple, fast test chain.  It is not that realistic because you don't need to approve each transaction.

You can also use Remix to deploy to other public EVM chains. But to do this you'd need to connect to different **environment** - like Injected Provider.  When you use Injected Provider - you need to have a browser wallet (like MetaMask or similar) installed.  We'll try deploying to a public network at the end of this tutorial.

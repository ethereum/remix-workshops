# querying the blockchain

The most easiest way to query the blockchain is to use JavaScript library like web3.js or ethers.

Let's focus on web3.js:

In this example, we'll query the current blocknumber by doing:
`let blockNumber = await web3.eth.getBlockNumber()`

Note that the object `web3` is injected by Remix. Please have a look there https://web3js.readthedocs.io/en/latest
for more information about how to instanciate such an object.

First make sure you have metamask installed - https://metamask.io/.
Metamask is a browser plugin which allow to access blockchain data and create transaction.

From the Run Module, change the environment to using `injected provider`, in our case `injected` is the metamask extension.
From now on, every access to `web3` will go through the metamask extension.

From the terminal, execute `remix.execute()`. This command will execute the current JavaScript file with the line ``let blockNumber = await web3.eth.getBlockNumber()``.

You should then see in the console the current block number of the chain metamask is connected to.

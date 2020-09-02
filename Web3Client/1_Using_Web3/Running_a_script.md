# Querying the Blockchain

In this tutorial, we'll run a script that queries the blockchain using a JavaScript library.  

This means that instead of using the Remix GUI or a block explorer like Etherscan, we'll use a script in the editor and will run it from the terminal.

The JS libraries that are used the most for interacting with the blockchain are web3.js & ethers.js.

Let's begin with a simple web3.js example, queryBlockNum.js.

The script's call to web3.js is wrapped in a self-executing async function that contains a try/catch block. 

We'll query the current blocknumber by doing:
`let blockNumber = await web3.eth.getBlockNumber()`

Note that the object `web3` is injected by Remix. For more info on web3.js, check their docs, <a href="https://web3js.readthedocs.io/en/latest" target="_blank">https://web3js.readthedocs.io/en/latest</a>.

To use web3.js or ethers.js, you need to select the Injected Web3 or Web3 Provider environments in the **Deploy & Run** module.  Scripts don't currently work with the JSVM. **If you try you'll get an error.**

So for this example choose **Injected Web3** in the Deploy & Run module and have Metamask installed.

From the terminal, execute `remix.execute()`. This command will execute the current JavaScript file with the line `let blockNumber = await web3.eth.getBlockNumber()`.

In the console, you should see the current block number of the chain that metamask is connected to.

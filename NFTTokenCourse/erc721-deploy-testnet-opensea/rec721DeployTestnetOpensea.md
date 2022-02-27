In this section, we will use Metamask (an Ethereum wallet) to deploy our contract to the Rinkeby testnet of the Ethereum blockchain, mint an NFT, and look at it on the NFT marketplace OpenSea.

### 1. Install Metamask
**1.1** Go to <a href="https://metamask.io/" target="_blank">metamask.io</a>.

**1.2** Click on the download button, then click on install for your browser (e.g. Chrome) and add the extension to your browser.

**1.3** Create a wallet as described.

### 2. Get testnet token for Rinkeby
In order to make transactions on the testnet, we need Ethereum testnet tokens.

**2.1** Switch your Metamask from "Ethereum Mainnetwork" to "Rinkeby Test Network".

**2.2** Go to <a href="https://faucet.paradigm.xyz/" 
target="_blank">https://faucet.paradigm.xyz/</a>, enter the address of your account and claim testnet ETH.
You could also use other ropsten faucets like <a href="https://faucet.paradigm.xyz/" target="_blank">https://faucet.paradigm.xyz/</a> or <a href="https://app.mycrypto.com/faucet" target="_blank">https://app.mycrypto.com/faucet</a>. Have a look at the faucets listed on <a href="https://ethereum.org/en/developers/docs/networks/#testnet-faucets" target="_blank">ethereum.org</a> to learn more.

### 3. Contract Deployment
**3.1** In the "DEPLOY & RUN TRANSACTIONS" module of the Remix IDE under "ENVIRONMENT" select "Injected Web3". It should then ask you to connect your account, which you should confirm. Then you should see the Rinkeby network badge under "Injected Web3".

**3.2** Deploy your token contract and confirm the transaction in Metamask.

**3.3**  Your contract should appear in the "Deployed Contracts" section.

### 4. Mint an NFT
**4.1** Expand your contract in the IDE so you can see the buttons for the functions.

**4.2** Expand the input fields next to the safeMint button. Enter the Ethereum address of the account that is connected to Remix in the “to:” input field. Enter “0” in the input field "tokenID:". Click on transact.

**4.3** In Metamask click on assets, then click on the “Import tokens” link, and paste the address of your contract in the input field. You can set decimals to 0. 

You should now see the name of the symbol of your token contract (e.g. GEO) in your “Assets” view in Metamask. You should have one of these tokens.

### 5. See your NFT on OpenSea
<a href="https://opensea.io/" 
target="_blank">OpenSea </a> is one of the most popular online marketplace for NFTs. OpenSea also provides a version where you can see assets on the testnet, under <a href="https://testnets.opensea.io/" 
target="_blank">https://testnets.opensea.io/</a>

**5.1** Go to <a href="https://testnets.opensea.io/login" 
target="_blank">https://testnets.opensea.io/login</a>.

**5.2** Connect with your Metamask wallet. You should be redirected to your account <a href="https://testnets.opensea.io/account" target="_blank">https://testnets.opensea.io/account</a> view on OpenSea, where you should be able to see your NFT. You should see the image of your NFT; when you click on it, you should see the name, description, and under properties, also the attributes that you created.

If you successfully completed this course and are familiar with the basics of Solidity development, we encourage you to continue your learning journey by learning how to create your own NFT auction contract from the Learneth resources.  
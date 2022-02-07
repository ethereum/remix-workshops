In this contract tutorial, we will learn how to create an ERC721 (NFT) auction contract. 
We recommend to you, to do the Learneth "Solidity NFT Course" before starting this tutorial. 

In the following sections, we will create a contract that will enable a seller to auction an NFT to the highest bidder. This contract was created by the <a href="https://solidity-by-example.org/app/english-auction/" target="_blank">Solidity by Example</a> project. In this first section, we will create an interface, the necessary state variables, and the constructor.

### Interface
We create the interface (line 5) for the ERC721 token since our contract will need to interact with it. We will need the `safeTransferFrom` (line 5),  and` transferFrom` (line 11) methods.

### EnglishAuction
We create the four events `Start`, `Bid`, `Withdraw`, `End` (line 19-22) so we can log important interactions. 

Next, we will create the state variables that store all the necessary information about our auction on-chain.

We create two state variables for the NFT we want to auction. In the variable `nft` (line 24) we store a representation of the NFT contract, that will allow us to call its functions by combining the interface IERC721 and the address of the NFT contract.
In `nftId` (line 25), we store the specific token id in our NFT contract that will be auctioned.

Next, we need a variable to store the address of the person that is auctioning off the NFT, the `seller` (line 27). 
We want our NFT contract to send the seller the proceeds of the auction when it is finished, that’s why use `address payable`.

We create a state variable `endAt` (line 28) where we will store the end date of the auction.
We also create the two booleans, `started` (line 29) and `ended` (line 30), that keep track of whether the auction has started or ended.

We create a variable `highestBidder` (line 32) where we will store the address of the highest bidder. We will send the highest bidder the NFT once the auction has ended.

Finally, we need a uint `highestBid` (line 33) to store the highest bid and a mapping `bids` (line 34), where we can store the total value of bids that an account has made before withdrawing; more on this in the next section.

### Constructor
When the auctioneer deploys the contract, they need to provide a few arguments:
the address of the contract of the NFT they want to auction `_nft` (line 37), the token id of the NFT they want to auction `_nftId` (line 38), and a starting price that must be overbid to place the first bid in the auction,`_startingBid` (line 39).

Once deployed, the state variables `nft` (line 41), `nftId` (line 42), `highestBid` (line 45) will be assigned the values from the arguments. The address of the `seller` that deployed the contract will be automatically read out via msg.sender and stored in the state variable `seller` (line 44).

In the next section, we will enable the auctioneer to start the auction and bidders to place their bids.

## ⭐️ Assignment
We will use the assignment part of the following sections to give you instructions on testing your contract in the JavaScript VM environment of Remix.

1. Deploy an NFT contract. You can use the NFT contract that we created in our "3.3 ERC721 - Token Creation" section.

2. Deploy this EnglishAuction contract. Use the address of the NFT contract as an argument for the `_nft` parameter, 0 for `_nftId`, and 1 for `_startingBid`.

3. After deploying your contract, test if contract functions like `nft`, `nftId`, and `started` work as expected.
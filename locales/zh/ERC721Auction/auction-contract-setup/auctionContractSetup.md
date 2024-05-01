在本合约教程中，我们将学习如何创建一个ERC721（NFT）拍卖合约。我们建议您在开始本教程之前先完成Learneth的“Solidity NFT课程”。
We recommend to you, to do the Learneth "Solidity NFT Course" before starting this tutorial.

In the following sections, we will create a contract that will enable a seller to auction an NFT to the highest bidder. This contract was created by the <a href="https://solidity-by-example.org/app/english-auction/" target="_blank">Solidity by Example</a> project. In this first section, we will create an interface, the necessary state variables, and the constructor.

### 接口

我们为ERC721代币创建了接口（第5行），因为我们的合约需要与它进行交互。我们需要`safeTransferFrom`方法（第5行）和`transferFrom`方法（第11行）。 We will need the `safeTransferFrom` (line 5),  and` transferFrom` (line 11) methods.

### EnglishAuction

我们创建了四个事件`Start`、`Bid`、`Withdraw`、`End`（19-22行），以便记录重要交互。

接下来，我们将创建存储所有关于链上拍卖所需信息的状态变量。

We create two state variables for the NFT we want to auction. In the variable `nft` (line 24) we store a representation of the NFT contract, that will allow us to call its functions by combining the interface IERC721 and the address of the NFT contract.
对于想要拍卖的NFT，我们创建了两个状态变量。`nft`变量（24行）， 我们存储了NFT合约, 这样就可以通过组合IERC721接口和NFT合约地址调用其函数。`nftId`(25 行)中，我们存储即将被拍卖的NFT合约中的特定Token ID 。

接下来，我们需要一个变量来存储拍卖NFT的人的地址，即卖家（27行）。我们希望在拍卖结束时，NFT合约将竞拍所得发送给卖家，因此使用了可支付地址。
在接下来的几节中，我们将创建一个合约，使卖家能够向出价最高者拍卖NFT。这个合约是由<a href="https://solidity-by-example.org/app/english-auction/" target="_blank">Solidity by Example</a>项目创建的。在第一部分中，我们将创建一个接口、必要的状态变量和构造函数。

我们创建一个状态变量`endAt`(28行)，用于存储拍卖的截止日期。 我们还创建了两个布尔值`started`(29 行)和`ended`(30 行)，以跟踪拍卖是否已经开始或结束 。
We also create the two booleans, `started` (line 29) and `ended` (line 30), that keep track of whether the auction has started or ended.

我们创建一个变量`highestBidder`(32行)，用于存储出价最高者的地址。一旦拍卖结束，我们将向出价最高者发送NFT。 We will send the highest bidder the NFT once the auction has ended.

最后，我们需要一个uint类型的`highestBid`变量（33行）来存储最高出价和一个mapping类型的变量`bids`（34 行），在其中可以存储账户在撤回之前所做出的所有投标总值；下一节中会详细介绍这方面内容。

### 构造函数

当拍卖人部署合约时，他们需要提供几个参数：他们想要进行拍卖的NFT合约地址`_nft`（37行）、他们想要进行拍卖的NFT的token id`_nftId`（38行）以及必须超过起始价格才能在竞标中放置第一笔出价`_startingBid`（39行）。

Once deployed, the state variables `nft` (line 41), `nftId` (line 42), `highestBid` (line 45) will be assigned the values from the arguments. 部署后，状态变量`nft`（41行）、`nftId`（42行）和`highestBid`（45行）将被分配来自参数的值。部署合约的卖家地址将通过`msg.sender`自动读取并存储在状态变量`seller`中（44行）。

在下一节中，我们将使拍卖人能够开始拍卖，并让竞标者进行出价。

## ⭐️ 作业

接下来的作业部分，为您提供在Remix Remix VM环境中测试合约的指导。

1. Deploy an NFT contract. 部署一个NFT合约。您可以使用我们在“3.3 ERC721 - Token Creation”一节中创建的NFT合约。

2. Deploy this EnglishAuction contract. 部署这个EnglishAuction合约。将NFT合约地址用作`_nft`参数的值，0用于`_nftId`的值，1用于`_startingBid`的值。

3. 在部署您的合约后，测试`nft`、`nftId`和`started`等函数是否按预期工作。

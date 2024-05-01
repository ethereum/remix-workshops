在这个部分，我们将创建一个函数来开始拍卖，并创建一个函数来对NFT进行竞标。

### 开始

我们使用一些控制结构来检查是否满足条件，然后才允许卖家开始拍卖。

首先，我们检查拍卖是否已经开始（第49行）。如果已经开始并且状态变量`started`返回true，则退出函数并抛出异常。 If it has started and our state variable `started` returns `true` we exit the function and throw an exception.

第二个条件是检查执行该启动功能的帐户是否为卖方（第50行）。当他们部署合约时，我们已经创建了一个用于存储销售者地址的功能，并且现在可以检查执行`start`函数的帐户是否为销售者。如果不是，则抛出异常。 接下来，我们想将正在拍卖的NFT从销售者转移到合约中（第52行）。 我们将状态变量`started`设置为`true`（第53行），并创建了一个结束日期以结束拍卖（第54行）。在这种情况下，它将是从调用start函数开始的七天。我们可以使用像`days`这样的后缀来指定时间单位。如果您想了解更多关于时间单位的信息，请查看<a href="https://docs.soliditylang.org/en/latest/units-and-global-variables.html#time-units" target="_blank">solidity 文档</a>。 If not we throw an exception.

Next, we want to transfer the NFT that is up for auction from the seller to the contract (line 52).
We set the state variable `started` to `true` (line 53), and create an end date for the auction (line 54). In this case, it will be seven days from when the start function has been called. We can use a suffix like `days` after a literal number to specify units of time. If you want to learn more about time units have a look at the <a href="https://docs.soliditylang.org/en/latest/units-and-global-variables.html#time-units" target="_blank">solidity documentation</a>.

最后，我们会发出`Start`事件（第56行）。

### Bid

Before the function caller can make a bid, we need to be sure that certain conditions are met. 在函数调用者进行出价之前，我们需要确保满足某些条件。拍卖必须已经开始（第60行），拍卖不能已经结束（第61行），并且出价（与调用相关联的值）必须高于当前最高出价（第62行）。

Now we want to store the bid of the current highest bidder before we make a new bid.
First, we check if there is a bidder (line 64). If this function call is the first bid then the next line would be irrelevant.
In our mapping `bids` (line 34) we map the key, the `address` of the bidder, to the value, a `uint` that represents the total amount of ETH a bidder has bid in the auction before withdrawing.
If there is a bidder, we add the last bid (`highestBid`) of the `highestBidder` to the total value of the bids they have made (line 65) before withdrawing.
We store the bids because we want to enable the bidder to withdraw the ETH they used to make bids if they are no longer the highest bidder.

接下来，我们将`highestBidder`设置为调用该函数的账户( 第68 行)，并将`highestBid`设置为其所提交的`bid`即与该调用相关联发送过来金额(第69行)。

最后，我们发出`Bid`事件(第71行)。

## ⭐️ Assignment

1. Deploy an NFT contract. 部署一个NFT合约。您可以使用我们在“Solidity NFT Course” Learneth课程中创建的NFT合约。

2. 铸造自己tokenId为0的NFT。

3. Deploy this EnglishAuction contract. 部署这个EnglishAuction合约。将NFT合约地址作为`_nft`的参数，`_nftId`设置为0，`_startingBid`设置为1。

4. 调用您的NFT合约的`approve`函数，并将拍卖合同地址作为to的参数，`tokenId`设置为0。这将允许该合约转移要拍卖的代币。 This will allow the contract to transfer the token to be auctioned.

5. Call the `start` function of your auction contract. If you call the `started` function now, it should return `true`. 调用您拍卖合约的`start`函数。如果现在调用`started`函数，则应返回true。如果调用`highestBid`函数，则应返回1。

6. 将可以附加到交易中的值设置为3 Wei，并调用拍卖合同的`bid`函数。如果现在调用`highestBid`函数，则应返回3。 If you call the `highestBid` function it should now return 3.

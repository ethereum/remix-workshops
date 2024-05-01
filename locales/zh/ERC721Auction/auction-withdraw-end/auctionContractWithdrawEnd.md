在这个部分，我们将完成合约、创建一个函数来撤回账户所做的出价，并创建一个结束拍卖的函数。

### 撤回

我们创建了一个本地变量`bal`（余额），它存储了函数调用者自上次提款以来所做出价的总值（第75行）。我们可以通过使用函数调用者地址作为键访问`bids`映射并将该值赋给 `bal`。 We can assign this value to `bal` by accessing the bids mapping using the address of the function caller as the key.

接下来，在`bids`映射中将函数调用者地址的值设置为 0，因为他们将提取其所有出价的总值（第76行）。

现在，我们从合约向函数调用者转移相应数量的 ETH 并发出`Withdraw`事件（第79行）。

### 结束

Before the function caller can execute this function and end the auction, we need to check if certain conditions are met. 在执行此函数并结束拍卖之前，需要检查是否满足某些条件。拍卖必须已经开始（第83行），到达了拍卖截止日期（第84行），且拍卖还没有结束过（第85行）。

一旦拍卖结束，我们就将状态变量`ended`设置为`true`（第87行）。

然后，我们检查是否有人参与竞标 NFT （第88行）。

如果有人竞标，则将NFT从合约转移到最高竞标人那里 (第89行)，并把从最高竞标人发送到合约中的 ETH 转移到拍卖者即NFT的销售方地址 (第90行) 中去.

如果没有人对NFT进行竞标，则将NFT发送回拍卖者 (第92行)。

最后，我们发出`End`事件（第95行）。

## ⭐️ 作业

1. Deploy an NFT contract. 部署一个NFT合约。您可以使用我们在Learneth“Solidity NFT课程”中创建的NFT合约。

2. 铸造自己的tokenId为0的NFT。

3. 为了方便测试，将`endAt`状态变量（第54行）的值从7天更改为5分钟。

4. Deploy this EnglishAuction contract. 部署这个EnglishAuction合约。将`_nft`设置为NFT合约的地址，`_nftId`设置为0，`_startingBid`设置为1。

5. 调用您的NFT合同`approve`函数，并将拍卖合同地址作为参数传递给`to`，并将`tokenId`设置为0。

6. 调用拍卖合约的`start`函数。

7. 使用帐户1出价2 Ether，并使用帐户2出价3 Ether。如果调用`highestBidder`函数，则现在应返回帐户2的地址。 If you call the `highestBidder` function, it should now return the address of account 2.

8. Call the `withdraw` function with account 1. 调用帐户1的`withdraw`函数。在账户1余额中，您应该看到减去一些交易费用后的2 Ether金额。

9. After 5 minutes have passed, call the `end` function. 等待5分钟后，调用`end`函数。然后，调用`ended`函数应返回true。

在NFT合约中，如果您调用以tokenId 0为参数的`ownerOf`函数，则它应返回帐户2的地址。如果查看账户1余额，则其应增加3 Ether并减去一些交易费。 If you look at the balance of account 1 it should have increased by 3 Ether minus some transaction fees.

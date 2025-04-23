このセクションでは、オークションを開始する関数とNFTを入札する関数を作成します。

### 開始

いくつかの制御構造を使用して、必要な条件が満たされているかどうかを確認します。その後、売り手がオークションを開始します。

まず、オークションが既に開始されているかどうかを確認します(49行目)。 既に開始されており、状態変数`started`が`true`を返した場合、関数が終了して例外を投げます。

2つ目の条件は、売り手が関数を実行しているかどうかを確認します(50行目)。 既に作成した関数が、コントラクトをデプロイした時に、`seller`状態変数にある売り手のアドレスを格納しており、現在のアカウントを開始している関数が売り手であるかを確認できます。 そうでない場合は、例外を投げます。

Next, we want to transfer the NFT that is up for auction from the seller to the contract (line 52).
We set the state variable `started` to `true` (line 53), and create an end date for the auction (line 54). In this case, it will be seven days from when the start function has been called. We can use a suffix like `days` after a literal number to specify units of time. If you want to learn more about time units have a look at the <a href="https://docs.soliditylang.org/en/latest/units-and-global-variables.html#time-units" target="_blank">solidity documentation</a>.

Finally, we will emit our `Start()` event (line 56).

### 入札

Before the function caller can make a bid, we need to be sure that certain conditions are met. The auction needs to have started (line 60), the auction can not have ended (line 61) and the bid (the value attached to the call) needs to be higher than the current highest bid (line 62).

Now we want to store the bid of the current highest bidder before we make a new bid.
First, we check if there is a bidder (line 64). If this function call is the first bid then the next line would be irrelevant.
In our mapping `bids` (line 34) we map the key, the `address` of the bidder, to the value, a `uint` that represents the total amount of ETH a bidder has bid in the auction before withdrawing.
If there is a bidder, we add the last bid (`highestBid`) of the `highestBidder` to the total value of the bids they have made (line 65) before withdrawing.
We store the bids because we want to enable the bidder to withdraw the ETH they used to make bids if they are no longer the highest bidder.

Next, we set the `highestBidder` to the account calling the function (line 68), and the `highestBid` to their bid, the value that was sent with the call (line 69).

Finally, we emit the `Bid` event (line 71).

## ⭐️ 演習

1. Deploy an NFT contract. You can use the NFT contract that we create in our "Solidity NFT Course" Learneth course.

2. Mint yourself an NFT with the tokenId 0.

3. Deploy this EnglishAuction contract. Use the address of the NFT contract as an argument for the `_nft` parameter, 0 for `_nftId`, and 1 for `_startingBid`.

4. Call the `approve` function of your NFT contract with the address of the auction contract as an argument for the `to` parameter, and 0 for `tokenId`. This will allow the contract to transfer the token to be auctioned.

5. Call the `start` function of your auction contract. If you call the `started` function now, it should return `true`. If you call the `highestBid` function it should return 1.

6. Set the value that you can attach to transactions to 3 Wei and call the `bid` function of the auction contract. If you call the `highestBid` function it should now return 3.
このセクションでは、オークションを開始する関数とNFTを入札する関数を作成します。

### 開始

いくつかの制御構造を使用して、必要な条件が満たされているかどうかを確認します。その後、売り手がオークションを開始します。

まず、オークションが既に開始されているかどうかを確認します(49行目)。 既に開始されており、状態変数`started`が`true`を返した場合、関数が終了して例外を投げます。

2つ目の条件は、売り手が関数を実行しているかどうかを確認します(50行目)。 既に作成した関数が、コントラクトをデプロイした時に、`seller`状態変数にある売り手のアドレスを格納しており、現在のアカウントを開始している関数が売り手であるかを確認できます。 そうでない場合は、例外を投げます。

次に、オークションに出品されるNFTを売り手からコントラクトに送信します(52行目)。
状態変数を`started`から`true`(53行目)に設定し、オークションの終了日を作成します(54行目)。 この場合、start関数が呼ばれてから7日間とします。 時間の単位では、数値リテラルのあとに`days`のような接尾辞を使用することができます。 時間の単位について、より詳細に学びたい場合は、<a href="https://docs.soliditylang.org/en/latest/units-and-global-variables.html#time-units" target="_blank">solidityのドキュメント</a>をご覧ください。

最後に、`Start()`イベントを発行します(56行目)。

### 入札

関数の呼び出し元が入札を行う前に、特定の条件が満たされることを確認する必要があります。 このオークションでは、開始されいること(60行目)、終了していないこと(61行目)、入札(呼び出しに付随する値)が現在の最高入札額より高額であること(62行目)が必須条件になります。

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
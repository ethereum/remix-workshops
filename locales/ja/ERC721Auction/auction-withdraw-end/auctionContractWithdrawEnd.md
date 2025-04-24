このセクションでは、コントラクトを完成させます。引き出し用の関数を作成し、入札を引き出せるようにします。また、オークションを終了するための関数を作成します。

### 引き出し

ローカル変数である`bal`(balance)を作成し、前回の引き出し以降に関数の呼び出し元が入札した入札の総額を格納します(75行目)。 関数の呼び出し元のアドレスをキーとして、bidsマッピングにアクセスすることで、値を`bal`に割り当てます。

次に、bidsマッピングでは、関数の呼び出しているアドレスの値に対して0を設定します。このアドレスが入札の総額を引き出すためです(76行目)。

それから、ETHをコントラクトから関数の呼び出し元へ送信します。また、`Withdraw`イベントを発行します(79行目)。

### 終了

Before the function caller can execute this function and end the auction, we need to check if certain conditions are met. The auction needs to have started (line 83), the end date of the auction needs to have been reached (line 84), and the auction must not have ended already (line 85).

Once the auction has ended, we set the state variable `ended` to `true` (line 87).

We check if anybody participated in the auction and bid on the NFT (line 88).

If there was a bid, we transfer the NFT from the contract to the highest bidder (line 89) and transfer the ETH that was sent from the highest bidder to the contract, now to the address of the auctioneer, the seller of the NFT (line 90).

If nobody bids on the NFT, we send the NFT back to the auctioneer (line 92).

Finally, we emit the `End` event (line 95).

## ⭐️ 演習

1. Deploy an NFT contract. You can use the NFT contract that we created in our Learneth "Solidity NFT Course".

2. Mint yourself an NFT with the tokenId 0.

3. For testing purposes, change the value that is assigned to the `endAt` state variable (line 54) from `7 days` to `5 minutes`.

4. Deploy this EnglishAuction contract. Use the address of the NFT contract as an argument for the `_nft` parameter, 0 for `_nftId`, and 1 for `_startingBid`.

5. Call the `approve` function of your NFT contract with the address of the auction contract as an argument for the `to` parameter, and 0 for the `tokenId`.

6. Call the `start` function of your auction contract.

7. Bid 2 Ether using account 1, and 3 Ether using account 2. If you call the `highestBidder` function, it should now return the address of account 2.

8. Call the `withdraw` function with account 1. In the balance of account 1, you should see the 2 Ether minus some transaction fees.

9. After 5 minutes have passed, call the `end` function. Then, call the `ended` function which should return `true`.

In the NFT contract, if you call the `ownerOf` function with the tokenId 0, it should return the address of account 2. If you look at the balance of account 1 it should have increased by 3 Ether minus some transaction fees.

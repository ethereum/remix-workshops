In this tutorial, we'll explore the Uniswap V3 Swap contract to learn about how single-hop and multi-hop swaps work.

But first, some Uniswap fundamentals.

## What is Uniswap?

Uniswap is a decentralized cryptocurrency exchange. It allows users to exchange tokens without the need for a centralized intermediary. Uniswap is a key player in the decentralized finance (DeFi) space.

## How does Uniswap work?

Instead of using an order book like a traditional centralized exchange, Uniswap uses an automated market maker (AMM) model. In Uniswap, the AMM is a smart contract that holds reserves of tokens (Liquidity Pool). Users can trade between tokens in the Liquidity Pool. The price of each token is determined by the ratio of the reserves.

### Step-by-step example of a Uniswap trade

1. Alice wants to trade 1 ETH for DAI.
2. Alice sends 1 ETH to the Uniswap smart contract.
3. The Uniswap smart contract calculates the amount of DAI that Alice should receive based on the current exchange rate.
4. The Uniswap smart contract sends the DAI to Alice.
5. The Uniswap smart contract adds the 1 ETH to its reserves.
6. The Uniswap smart contract recalculates the exchange rate based on the new reserves.

The tokens in the Liquidity Pool are provided by Liquidity Providers. When a Liquidity Provider deposits tokens into a Liquidity Pool, they receive Liquidity Provider Tokens in return. Liquidity Provider Tokens represent a user's share of a Liquidity Pool.

Users of Uniswap pay a fee for each trade. The fee is paid to the Liquidity Providers in the form of additional Liquidity Provider Tokens.

## Uniswap Swap Contract

The Uniswap Swap contract allows users to swap tokens using Uniswap V3. It can do single-hop swaps, which allow users to exchange one token for another directly. It can also do multi-hop swaps, which means that users can exchange one token for another by routing through multiple tokens. Routing in this context means that the swap contract will exchange the token for another token, then exchange that token for another token, and so on until it reaches the desired token.

## Conclusion

In this section, we learned about Uniswap, how it works, and how we are going to use it to swap tokens.

## ⭐️ Assignment: Multiple Choice Test

### 1. What is Uniswap?

1. A centralized exchange protocol.
2. A decentralized exchange protocol that uses an order book.
3. A decentralized exchange protocol that uses an automated market maker (AMM) model.
4. A decentralized exchange protocol that uses an order book and an automated market maker (AMM) model.

### 2) How does Uniswap determine the price of a token?

1. The price of a token is determined by the ratio of the reserves.
2. The price of a token is determined by the ratio of the reserves and the number of trades.
3. The price of a token is determined by the ratio of the reserves and the number of Liquidity Providers.
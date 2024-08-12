En este tutorial, exploraremos el contrato Uniswap V3 Swap para aprender sobre cómo funcionan los swaps de un solo salto y varios saltos.

Pero primero, algunos fundamentos de Uniswap.

## ¿Qué es Uniswap?

Uniswap es un intercambio descentralizado de criptomonedas. Permite a los usuarios intercambiar tokens sin necesidad de un intermediario centralizado. Uniswap es un jugador clave en el espacio de las finanzas descentralizadas (DeFi).

## ¿Cómo funciona Uniswap?

En lugar de utilizar un libro de pedidos como un intercambio centralizado tradicional, Uniswap utiliza un modelo de creador de mercado automatizado (AMM). En Uniswap, el AMM es un contrato inteligente que tiene reservas de tokens (Liquidity Pool). Users can trade between tokens in the Liquidity Pool. The price of each token is determined by the ratio of the reserves.

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

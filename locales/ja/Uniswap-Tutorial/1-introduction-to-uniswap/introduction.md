このチュートリアルでは、Uniswap V3スワップコントラクトがシングルホップスワップやマルチホップスワップをする仕組みについて学びます。

まず初めに、Uniswapの基礎について学びます。

## Uniswapとは

Uniswapは、分散型暗号通貨取引所です。 ユーザーは、中央集権型の仲介者を必要とせずにトークンを交換できます。 Uniswapは、分散型ファイナンス(DeFi)スペースにおけるキープレーヤーです。

## Uniswapの仕組み

従来の中央集権化された取引所のようなオーダーブックを使うのではなく、Uniswapでは自動マーケットメーカー(AMM)モデルを使用します。 Uniswapで、AMMはスマートコントラクトであり、トークンのリザーブ(流動性プール)を保持しています。 ユーザーは、流動性プール内でトークン同士の交換ができます。 各トークンの価格は、リザーブの比率によって決定されます。

### ステップバイステップによるUniswap取引例

1. アリスは、ETHをDAIに交換したいとします。
2. Aliceは、1 ETHをUniswapスマートコントラクトに送信します。
3. Uniswapスマートコントラクトは、現在の交換レートを基にしてAliceが受け取るべきDAIの金額を計算します。
4. Uniswapスマートコントラクトは、アリスにDAIを送信します。
5. Uniswapスマートコントラクトは、受け取った1 ETHをリザーブに追加します。
6. Uniswapスマートコントラクトは、更新されたリザーブを基に新しいレートを再計算します。

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

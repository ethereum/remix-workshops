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

## Uniswapスワップコントラクト

ユーザーは、UniswapスワップコントラクトのV3を使用してトークンのスワップができます。 シングルホップスワップでは、ユーザー1つのトークンをもう一つのトークンと直接交換できます。 V3では、マルチホップスワップも可能で、ユーザーはルーティングによって複数のトークンを経由してトークンを交換できます。 このコンテキストにおいてルーティングが意味するところは、スワップコントラクトがトークンを別のトークンに交換し、その後に別のトークンがもう一つの別のートークンと交換されます。これが、欲しいトークンに交換されるまで行われます。

## 結論

このセクションでは、Uniswapの仕組み、トークンのスワップで必要な知識を学びました。

## ⭐️ 宿題: 多肢選択式テスト

### Uniswapとは何でしょうか？

1. 中央集権型の取引プロトコル
2. オーダーブックを使用する分散型の取引プロトコル
3. 自動マーケットメーカー(AMM)モデルを使用する分散型の取引プロトコル
4. オーダーブックと自動マーケットメーカー(AMM)モデルを使用する分散型の取引プロトコル

### 2) Uniswapでは、どのようにしてトークンの価格を決定するでしょうか？

1. リザーブの比率によってトークンの価格が決定される
2. リザーブの比率と取引数によってトークンの価格が決定される
3. リザーブの比率と流動性プロバイダーの数によってトークンの価格が決定される

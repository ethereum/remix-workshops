UniswapSwapExamplesコントラクト全体は、このチュートリアルのセクション5になると見ることができます。  それまでは、コードのブロックをビルドしていきます。

このセクションでは、`ISwapRouter` インターフェースについて学びます。これで関数を定義してUniswapスワップコントラクトから呼び出せるようにします。

ユーザーは、シングルホップスワップを使って流動性プール内でトークンと別のトークンを交換できます。
ユーザーは、マルチホップスワップを使い、トークンを別のトークンに複数のトークンを経由するルーティングにより交換できます。

Solidityのインターフェースでは、継承するコントラクトが含まなければならない関数を指定します。  インターフェースにより、どの関数がサポートされているかを宣言することで、異なるコントラクト間の統合や、やり取りを容易にすることができるので有用です。

構造体は、カスタムデータ型を定義するのに使われます。

## ISwapRouterインターフェース

ISwapRouterインターフェースは、Uniswapスワップコントラクトで呼び出すことのできる関数を定義します。 このインターフェースは、Uniswapスワップコントラクトとのやり取りおよびスワップの実行で必要になります。

5行目で、 `ISwapRouter`型の`router`という名の定数変数が定義されています。 この変数の値にスマートコントラクトのインスタンスでデプロイされたアドレスである`0xE592427A0AEce92De3Edee1F18E0157C05861564`を設定しています。 This is the address of the Uniswap V3 Swap contract on the Ethereum mainnet.

On line 9, we define an interface called `ISwapRouter`. This interface defines two functions: `exactInputSingle` and `exactInput`.

## exactInputSingle

On line 25, we define a struct called `ExactInputSingleParams`. This struct defines the parameters that are required for our exactInputSingle function on line 21, which will execute a single-hop swap. The struct has the following parameters:

- **`address tokenIn`**: The address of the token being sent.
- **`address tokenOut`**: The address of the token being received.
- **`uint24 fee`**: The fee associated with the swap.
- **`address recipient`**: The address that will receive the output token.
- **`uint deadline`**: A timestamp by which the transaction must be processed, for time-limiting the swap.
- **`uint amountIn`**: The amount of the input token being sent.
- **`uint amountOutMinimum`**: The minimum amount of the output token that the sender is willing to accept, to protect against unfavorable price movements.
- **`uint160 sqrtPriceLimitX96`**: A limit on the price, represented in a specific format, to prevent the swap from occurring at unfavorable prices.

## exactInput

On line 25, we define a struct called `ExactInputParams`. This struct defines the parameters that are required for our `exactInput` function on line 33. This function will execute a multi-hop swap. The struct has the following parameters:

- **`bytes path`**: Encoded information about the swap path (i.e., which tokens to swap through).
- **`address recipient`**: The address receiving the output tokens.
- **`uint deadline`**: Similar to above, a timestamp by which the transaction must be processed.
- **`uint amountIn`**: The amount of the input token.
- **`uint amountOutMinimum`**: The minimum amount of the output token the sender expects to receive.

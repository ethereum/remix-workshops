ユーザーは、シングルホップスワップで流動性プール内にあるトークンと別のトークンを交換することができます。 このセクションでは、Uniswap V3 スワップコントラクトを使用してシングルホップスワップの実行をする方法を学びます。

## 関数パラメータ

8行目で`swapExactInputSingleHop`とういう名の関数を定義しています。 この関数は、シングルホップスワップを実行します。 この関数は、以下のパラメータを受け取ります。

- **`address tokenIn`**: 送信されるトークンのアドレス
- **`address tokenOut`**: 受け取るトークンのアドレス
- **`uint24 poolFee`**: スワップの手数料
- **`uint amountIn`**: The amount of the input token being sent.

It returns a `uint` called `amountOut`, which is the amount of the output token that was received.

## 関数の本体

In the function body, we first transfer the input token from the sender to our contract, line 14.
Then, we approve the Uniswap Swap contract to spend the input token on our behalf, line 15.

On line 17, we create an instance of the `ExactInputSingleParams` struct. This struct contains the parameters that are required for our `exactInputSingle` function on line 45, which will execute the single-hop swap. We repeat `ISwapRouter.ExactInputSingleParams` two times on that line because we are making an instance of a struct that is defined in an interface.

## ExactInputSingleParams構造体のパラメータ

We set the parameters of the struct as follows:

- **`tokenIn`**: We set this to the `tokenIn` parameter of our function.
- **`tokenOut`**: We set this to the `tokenOut` parameter of our function.
- **`fee`**: We set this to the `poolFee` parameter of our function.
- **`recipient`**: We set this to the sender of the transaction.
- **`deadline`**: We set this to the current timestamp. We do this because we want the transaction to be processed as soon as possible.
- **`amountIn`**: We set this to the `amountIn` parameter of our function.
- **`amountOutMinimum`**: We set this to 0 because we do not want to specify a minimum amount of the output token that we are willing to accept.
- **`sqrtPriceLimitX96`**: We set this to 0 because we do not want to specify a limit on the price.

## シングルホップスワップの実行

On line 29, we assign the output of the `exactInputSingle` function to the `amountOut` variable. This function executes the single-hop swap and returns the amount of the output token that was received.

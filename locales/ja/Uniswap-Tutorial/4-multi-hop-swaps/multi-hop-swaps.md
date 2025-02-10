このセクションでは、`UniswapV3SwapExamples`コントラクトにある`swapExactInputMultiHop`関数について詳しく解説します。 この関数は、ユーザーがカスタムパスを指定することで複数の流動性プールを介することができます。これにより、より複雑なトークンスワップが可能になります。

例えば、ユーザーがトークンAをトークンDに交換したいとして、直接交換するAとDの流動性プールが無いとします。この場合は、ユーザーが複数のトークンを経由するパスを指定することができます。 For example, the user can swap A for B, then B for C, and finally C for D. This is of course automatically done by the Uniswap V3 Swap contract.

### Parameters and Return Value

On line 32, we define a function called `swapExactInputMultiHop`. This function executes a multi-hop swap. It takes the following parameters:

- **`bytes calldata path`**: Encoded information about the swap path (i.e., which tokens to swap through).
- **`address tokenIn`**: The address of the token being sent.
- **`uint amountIn`**: The amount of the input token being sent.

It returns a `uint` called `amountOut`, which is the amount of the output token that was received.

### Function Body

In the function body, we first transfer the input token from the sender to our contract, line 38.
Then, we approve the Uniswap Swap router to spend the input token on our behalf, line 41.

On line 43, we create an instance of the `ExactInputParams` struct, line 73. This struct contains the parameters that are required for our `exactInput` function on line 81, which will execute the multi-hop swap.

We set the parameters of the struct as follows:

- **`path`**: We set this to the `path` parameter of our function.
- **`recipient`**: We set this to the sender of the transaction.
- **`deadline`**: We set this to the current timestamp. We do this because we want the transaction to be processed as soon as possible.
- **`amountIn`**: We set this to the `amountIn` parameter of our function.
- **`amountOutMinimum`**: We set this to 0 because we do not want to specify a minimum amount of the output token that we are willing to accept.

On line 53, we execute the multi-hop swap by calling the `exactInput` function. This function returns the amount of the output token that was received.

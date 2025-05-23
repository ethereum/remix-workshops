Single-hop swaps allow users to exchange one token for another directly within a liquidity pool. In this section, we will learn how to use the Uniswap V3 Swap contract to execute single-hop swaps.

## Function Parameters

On line 8, we define a function called `swapExactInputSingleHop`. This function executes a single-hop swap. It takes the following parameters:

- **`address tokenIn`**: The address of the token being sent.
- **`address tokenOut`**: The address of the token being received.
- **`uint24 poolFee`**: The fee associated with the swap.
- **`uint amountIn`**: The amount of the input token being sent.

It returns a `uint` called `amountOut`, which is the amount of the output token that was received.

## Function Body

In the function body, we first transfer the input token from the sender to our contract, line 14.
Then, we approve the Uniswap Swap contract to spend the input token on our behalf, line 15.

On line 17, we create an instance of the `ExactInputSingleParams` struct. This struct contains the parameters that are required for our `exactInputSingle` function on line 45, which will execute the single-hop swap. We repeat `ISwapRouter.ExactInputSingleParams` two times on that line because we are making an instance of a struct that is defined in an interface.

## Parameters of the ExactInputSingleParams Struct

We set the parameters of the struct as follows:

- **`tokenIn`**: We set this to the `tokenIn` parameter of our function.
- **`tokenOut`**: We set this to the `tokenOut` parameter of our function.
- **`fee`**: We set this to the `poolFee` parameter of our function.
- **`recipient`**: We set this to the sender of the transaction.
- **`deadline`**: We set this to the current timestamp. We do this because we want the transaction to be processed as soon as possible.
- **`amountIn`**: We set this to the `amountIn` parameter of our function.
- **`amountOutMinimum`**: We set this to 0 because we do not want to specify a minimum amount of the output token that we are willing to accept.
- **`sqrtPriceLimitX96`**: We set this to 0 because we do not want to specify a limit on the price.

## Executing the Single-hop Swap

On line 29, we assign the output of the `exactInputSingle` function to the `amountOut` variable. This function executes the single-hop swap and returns the amount of the output token that was received.
En esta sección, profundizaremos en la función `swapExactInputMultiHop` en el contrato `UniswapV3SwapExamples`. Esta función permite intercambios de tokens más complejos al permitir a los usuarios especificar una ruta personalizada a través de múltiples grupos de liquidez.

Si, por ejemplo, un usuario quiere cambiar el token A por el token D, pero no hay un fondo de liquidez directo para A y D, el usuario puede especificar una ruta a través de varios tokens. Por ejemplo, el usuario puede cambiar A por B, luego B por C y, finalmente, C por D. Por supuesto, esto se hace automáticamente mediante el contrato de intercambio V3 de Uniswap.

### Parámetros y valor de devolución

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

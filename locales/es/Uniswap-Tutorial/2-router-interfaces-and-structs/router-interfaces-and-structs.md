The entire UniswapSwapExamples contract will only be presented in section 5 of this tutorial.  Before then, we'll build up blocks of code.

This section explores the `ISwapRouter` interface, which defines the functions that can be called on the Uniswap Swap contract.

Single-hop swaps allow users to exchange one token for another directly within a liquidity pool.
Multi-hop swaps allow users to exchange one token for another by routing through multiple tokens.

Interfaces in Solidity specify functions that must be included in a contract that inherits them.  Son útiles para declarar qué funciones son compatibles y permiten una integración e interacción más fáciles entre los diferentes contratos.

Las estructuras se utilizan para definir tipos de datos personalizados.

## ISwapRouter Interfaz

La interfaz ISwapRouter define las funciones que se pueden llamar en el contrato de intercambio de Uniswap. Tendremos que usar esta interfaz para interactuar con el contrato de intercambio de Uniswap y ejecutar swaps.

En la línea 5, definimos una variable constante llamada `router` que es del tipo `ISwapRouter`. Establecemos el valor de esta variable en la instancia de interfaz de un contrato inteligente que se implementa en la dirección `0xE592427A0AEce92De3Edee1F18E0157C05861564`. Esta es la dirección del contrato Uniswap V3 Swap en la red principal de Ethereum.

En la línea 9, definimos una interfaz llamada "ISwapRouter". Esta interfaz define dos funciones: `exactInputSingle` y `exactInput`.

## exactInputSingle

En la línea 25, definimos una estructura llamada "ExactInputSingleParams". Esta estructura define los parámetros que se requieren para nuestra función exactInputSingle en la línea 21, que ejecutará un intercambio de un solo salto. La estructura tiene los siguientes parámetros:

- **`dirección tokenIn`**: La dirección del token que se está enviando.
- **`address tokenOut`**: La dirección del token que se recibe.
- **`tarifa uint24`**: La tarifa asociada con el intercambio.
- **`destinatario de la dirección`**: La dirección que recibirá el token de salida.
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

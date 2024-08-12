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
- **`uint deadline`**: Una marca de tiempo con la que se debe procesar la transacción, para limitar el tiempo de la operación.
- **`uint amountIn`**: La cantidad del token de entrada que se envía.
- **`uint amountOutMinimum`**: La cantidad mínima del token de salida que el remitente está dispuesto a aceptar, para proteger contra los movimientos de precios desfavorables.
- **`uint160 sqrtPriceLimitX96`**: Un límite en el precio, representado en un formato específico, para evitar que el intercambio se produzca a precios desfavorables.

## exactInput

En la línea 25, definimos una estructura llamada "ExactInputParams". Esta estructura define los parámetros necesarios para nuestra función "exactInput" en la línea 33. Esta función ejecutará un intercambio de varios saltos. La estructura tiene los siguientes parámetros:

- **`ruta de bytes`**: Información codificada sobre la ruta de intercambio (es decir, a través de qué tokens intercambiar).
- **`receptor de la dirección`**: La dirección que recibe los tokens de salida.
- **`fecha límite`**: Similar a la anterior, una marca de tiempo con la que se debe procesar la transacción.
- **`uint amountIn`**: La cantidad del token de entrada.
- **`uint amountOutMinimum`**: La cantidad mínima del token de salida que el remitente espera recibir.

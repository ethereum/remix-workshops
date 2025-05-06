Los swaps de un solo salto permiten a los usuarios intercambiar un token por otro directamente dentro de un fondo de liquidez. En esta sección, aprenderemos a usar el contrato de intercambio V3 de Uniswap para ejecutar swaps de un solo salto.

## Parámetros de función

En la línea 8, definimos una función llamada "swapExactInputSingleHop". Esta función ejecuta un intercambio de un solo salto. Toma los siguientes parámetros:

- **`dirección tokenIn`**: La dirección del token que se está enviando.
- **`address tokenOut`**: La dirección del token que se recibe.
- **`uint24 poolFee`**: La tarifa asociada con el intercambio.
- **`uint amountIn`**: La cantidad del token de entrada que se envía.

Devuelve un `uint` llamado `amountOut`, que es la cantidad del token de salida que se recibió.

## Cuerpo de función

En el cuerpo de la función, primero transferimos el token de entrada del remitente a nuestro contrato, línea 14.
Luego, aprobamos el contrato de intercambio de Uniswap para gastar el token de entrada en nuestro nombre, línea 15.

En la línea 17, creamos una instancia de la estructura "ExactInputSingleParams". Esta estructura contiene los parámetros que se requieren para nuestra función "exactInputSingle" en la línea 45, que ejecutará el intercambio de un solo salto. Repetimos `ISwapRouter.ExactInputSingleParams` dos veces en esa línea porque estamos haciendo una instancia de una estructura que está definida en una interfaz.

## Parámetros de la estructura ExactInputSingleParams

Estapuemos los parámetros de la estructura de la siguiente manera:

- **`tokenIn`**: Establamos esto en el parámetro `tokenIn` de nuestra función.
- **`tokenOut`**: Establamos esto en el parámetro `tokenOut` de nuestra función.
- **`tarifa`**: Establamos esto en el parámetro `poolFee` de nuestra función.
- **`destinatario`**: Lo establecemos en el remitente de la transacción.
- **`fecha límite`**: Estamos esto en la marca de tiempo actual. Hacemos esto porque queremos que la transacción se procese lo antes posible.
- **`amountIn`**: Establecimos esto en el parámetro `amountIn` de nuestra función.
- **`amountOutMinimum`**: Establemos esto en 0 porque no queremos especificar una cantidad mínima del token de salida que estamos dispuestos a aceptar.
- **`sqrtPriceLimitX96`**: Establecemos esto en 0 porque no queremos especificar un límite en el precio.

## Ejecución del intercambio de un solo salto

En la línea 29, asignamos la salida de la función "exactInputSingle" a la variable "mountOut". Esta función ejecuta el intercambio de un solo salto y devuelve la cantidad del token de salida que se recibió.
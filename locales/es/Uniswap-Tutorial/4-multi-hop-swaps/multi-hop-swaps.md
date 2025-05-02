En esta sección, profundizaremos en la función `swapExactInputMultiHop` en el contrato `UniswapV3SwapExamples`. Esta función permite intercambios de tokens más complejos al permitir a los usuarios especificar una ruta personalizada a través de múltiples grupos de liquidez.

Si, por ejemplo, un usuario quiere cambiar el token A por el token D, pero no hay un fondo de liquidez directo para A y D, el usuario puede especificar una ruta a través de varios tokens. Por ejemplo, el usuario puede cambiar A por B, luego B por C y, finalmente, C por D. Por supuesto, esto se hace automáticamente mediante el contrato de intercambio V3 de Uniswap.

### Parámetros y valor de devolución

En la línea 32, definimos una función llamada `swapExactInputMultiHop`. Esta función ejecuta un intercambio de varios saltos. Toma los siguientes parámetros:

- **`ruta de datos de llamada de bytes`**: información codificada sobre la ruta de intercambio (es decir, a través de qué tokens intercambiar).
- **`address tokenIn`**: La dirección del token que se está enviando.
- **`uint amountIn`**: La cantidad del token de entrada que se envía.

Devuelve un `uint` llamado `amountOut`, que es la cantidad del token de salida que se recibió.

### Cuerpo de función

En el cuerpo de la función, primero transferimos el token de entrada del remitente a nuestro contrato, línea 38.
Luego, aprobamos el enrutador Uniswap Swap para gastar el token de entrada en nuestro nombre, línea 41.

En la línea 43, creamos una instancia de la estructura "ExactInputParams", línea 73. Esta estructura contiene los parámetros necesarios para nuestra función "exactInput" en la línea 81, que ejecutará el intercambio de varios saltos.

Estapuemos los parámetros de la estructura de la siguiente manera:

- **`ruta`**: Establamos esto en el parámetro `ruta` de nuestra función.
- **`destinatario`**: Lo establecemos en el remitente de la transacción.
- **`fecha límite`**: Estamos esto en la marca de tiempo actual. Hacemos esto porque queremos que la transacción se procese lo antes posible.
- **`amountIn`**: Establecimos esto en el parámetro `amountIn` de nuestra función.
- **`amountOutMinimum`**: Establemos esto en 0 porque no queremos especificar una cantidad mínima del token de salida que estamos dispuestos a aceptar.

En la línea 53, ejecutamos el intercambio de varios saltos llamando a la función "exactInput". Esta función devuelve la cantidad del token de salida que se recibió.
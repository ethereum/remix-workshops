En esta sección, crearemos una función para comenzar la subasta y una función para pujar sobre el NFT. 

### Start
Usaremos estructuras de control para comprobar si las condiciones necesarias son cumplidas antes de dejar a la vendedora comenzar la subasta. 

Primero, comprobaremos que la subasta ya ha comenzado (línea 49). Si ha comenzado y nuestra variable de estado `started`  devuelve `true`, salimos de la función y lanzamos una excepción. 

La segunda condición que comprobaremos para la vendedora es la ejecución de la función (línea 50). Ya hemos creado una función para almacenar la dirección de la vendedora cuando desplieguen el contrato en la variable de estado y puede ahora comprobar si la cuenta que ejecuta la función de inicio es la vendedora. Si no, lanzamos una excepción. 

Después, queremos transferir el NFT listo para la subasta desde la vendedora al contrato (línea 52). Establecemos la variable de estado  `started` como `true` (línea 53), y creamos una fecha límite para la subasta (línea 54). En este caso, serán siete días desde que la función de inicio se haya llamado. Podemos usar un sufijo como `days` después de un número literal para especificar unidades de tiempo. Si quiere aprender más sobre unidades de tiempo eche un vistazo a la <a href="https://docs.soliditylang.org/en/latest/units-and-global-variables.html#time-units" target="_blank">documentación de solidity</a>.

Finalmente, emitiremos nuestro evento `Start()`(línea 56).

### Bid
Antes de que la llamada de la función pueda hacer una puja, necesitamos estar seguros de que ciertas condiciones se cumplen. La subasta necesita haber empezado (línea 60), la subasta no puede haber terminado (línea 61) y la puja (el valor asignado a la llamada) necesita ser más alta que la de la puja actual (línea 62)

Ahora queremos almacenar la actual mayor puja antes de hacer una nueva.
Primero, comprobamos si hay un mayor postor (línea 64). Si esta llamada de función es la primera puja, la siguiente línea resultará irrelevante. 
En nuestras pujas de mapeo (línea 34) mapeamos las claves, la dirección del postor, al valor, una  `uint`  que representa la cantidad toral de ETH  que un postor ha pujado en la subasta antes de retirarse. 

Si hay un postor, añadimos la última puja (`highestBid`) del `highestBidder` al valor total de las pujas que se hayan hecho (línea 65) antes de retirarse. 

Almacenamos las pujas porque queremos permitir al postor retirar los ETH que hayan usado para pujar si ya es el que ofrece la puja más alta. 

Después, establecemos el `highestBidder` como la cuenta que llama a la función (línea 68), y el `highestBid` como su puja, el valor que se haya enviado con la llamada (línea 69).

Finalmente, emitimos el evento `Bid` (línea 71).

## ⭐️ Misión
1. Despliegue un contrato de NFT. Puede usar el contrato de NFT que hemos creado en nuestro curso LearnEth "Solidity NFT Course".

2. Acuñe su propio NFT con el tokenId 0.

3. Despliegue este contrato EnglishAuction. Use la dirección del contrato NFT como argumento para el parámetro  `_nft`, 0 para `_nftId`, y 1 para `_startingBid`.

4. Llame la función  `approve` de su contrato de NFT con la dirección del contrato de la subasta como argumento para el parámetro `to` y 0 para el parámetro `tokenId`. Esto permitirá al contrato transferir el token que será subastado. 

5. Llame la función `start` en su contrato de subasta. Si llama la función `started`  ahora, debería devolver `true`. Si llama la función `highestBid` debería retornar 1. 

6. Establezca el valorque pueda asociar a transacciones de 3 Wei y llame la función `bid`  del contrato de subasta. Si puede llamar la función  `highestBid` ahora debería de devolver 3.
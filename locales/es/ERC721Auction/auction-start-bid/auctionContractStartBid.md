En esta sección, crearemos una función para iniciar la subasta y una función para pujar en el NFT.

### Inicio

Utilizamos algunas estructuras de control para comprobar si se cumplen las condiciones necesarias antes de dejar que el vendedor inicie la subasta.

En primer lugar, comprobamos si la subasta ya ha comenzado (línea 49). Si se ha iniciado y nuestra variable de estado `started` devuelve `true` salimos de la función y arrojamos una excepción.

La segunda condición que verificamos es si el vendedor está ejecutando la función (línea 50). Ya hemos creado una función para almacenar la dirección del vendedor cuando desplieguen el contrato en la variable de estado 'seller' y ahora podemos comprobar si la cuenta que ejecuta la función de inicio es el vendedor. Si no es así, lanzamos una excepción.

Después, queremos transferir el NFT que está en subasta del vendedor al contrato (línea 52).
Establecemos la variable de estado `started` a `true` (línea 53), y creamos una fecha de fin para la subasta (línea 54). En este caso, serán siete días desde que se haya llamado la función de inicio. Podemos utilizar un sufijo como `days` después de un número literal para especificar unidades de tiempo. Si desea obtener más información sobre las unidades de tiempo, consulte la <a href="https://docs.soliditylang.org/en/latest/units-and-global-variables.html#time-units" target="_blank">solidity documentation</a>.

Finalmente, emitiremos nuestro evento `Start()` (línea 56).

### Puja

Antes de que la llamada a la función pueda hacer una oferta, tenemos que estar seguros de que ciertas condiciones se cumplen. La subasta tiene que haber comenzado (línea 60), la subasta no puede haber terminado (línea 61) y la oferta (el valor adjunto a la llamada) debe ser mayor que la actual mayor oferta (línea 62).

Ahora queremos guardar la oferta de la oferta más alta actual antes de hacer una nueva oferta.
En primer lugar, comprobamos si hay un postor (línea 64). Si esta llamada de función es la primera oferta, entonces la siguiente línea sería irrelevante.
En nuestro mapeo `bids` (línea 34) asignamos la clave, la `address ` del postor, al valor, un `uint` que representa la cantidad total de ETH un postor tiene puja en la subasta antes de retirar.
Si existe un postor, añadimos la última oferta (`highestBid`) del `highestBidder` al valor total de las ofertas que han hecho (línea 65) antes de retirar.
Almacenamos las ofertas porque queremos permitir que la oferta retire el ETH que usaron para hacer pujas si ya no son la oferta más alta.

A continuación, establecemos el `highestBidder` en la cuenta llamando a la función (línea 68), y la `highestBid` a su oferta, el valor que fue enviado con la llamada (línea 69).

Por último, emitimos el evento `Bid` (línea 71).

## ⭐ Tarea

1. Despliegue del contrato de NFT. Puedes usar el contrato de NFT que creamos en nuestro curso de Learneth "Solidity NFT Course".

2. Publica un NFT con el tokenid que tenga valor 0.

3. Despliegue de este contrato EnglishAuction. Usa la dirección del contrato NFT como argumento para el parámetro `_nft`, 0 para `_nftId` y 1 para `_startingBid`.

4. Llama a la función 'approve' de tu contrato NFT con la dirección del contrato de subasta como argumento para el parámetro 'to', y 0 para 'tokenId'. Esto permitirá que el contrato transfiera el token para ser subastado.

5. Llama la función `start` de tu contrato de subasta. Si llamas ahora a la función `started`, te debería devolver `true`. Si llamas a la función `highestBid` debería devolver 1.

6. Establece el valor que puedes adjuntar a las transacciones a 3 Wei y llamar a la función 'bid' del contrato de subasta. Si llamas a la función `highestBid` ahora te debería devolver 3.
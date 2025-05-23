En esta sección, terminaremos el contrato, crear una función para retirar las ofertas que una cuenta ha hecho, y crear una función para terminar la subasta.

### Retirar

Creamos una variable local `bal` (balance) que almacena el valor total de las ofertas que el llamador de función ha realizado (línea 75) desde su último retiro. Podemos asignar este valor a `bal` accediendo al mapeo de pujas usando la dirección del llamador de función como clave.

A continuación, establecemos el valor de la dirección de la llamada a la función a 0 en el mapeo de las pujas porque retirarán el valor total de sus ofertas (línea 76).

Ahora transferimos esa cantidad de ETH desde el contrato al llamador de función y emitimos el evento `Withdraw` (línea 79).

### Finalizar

Antes de que la llamador de la función pueda ejecutar esta función y terminar la subasta, tenemos que comprobar si se cumplen ciertas condiciones. La subasta necesita haber comenzado (línea 83), la fecha final de la subasta debe haber sido alcanzada (línea 84), y la subasta no debe de haber terminado ya (línea 85).

Una vez que la subasta ha terminado, establecemos la variable de estado `ended` a `true` (línea 87).

Comprobamos si alguien participó en la subasta y pujó en el NFT (línea 88).

Si había una oferta, transferimos el NFT del contrato a la oferta más alta (línea 89) y transferimos el ETH que fue enviado de la oferta más alta al contrato, ahora a la dirección del subastador, el vendedor de la NFT (línea 90).

Si nadie puja en el NFT, le devolvemos el NFT a la subastador (línea 92).

Finalmente, emitimos el evento `End` (línea 95).

## ⭐ Tarea

1. Despliega un contrato de NFT. Puedes utilizar el contrato NFT que hemos creado en nuestro curso Learneth "Solidity NFT Course".

2. Conéctate a ti mismo un NFT con el token 0.

3. Para propósitos de prueba, cambia el valor asignado a la variable de estado `endAt` (línea 54) de `7 days` a `5 minutes`.

4. Despliega este contrato EnglishAuctio. Usa la dirección del contrato NFT como argumento para el parámetro `_nft`, 0 para `_nftId` y 1 para `_startingBid`.

5. Llama a la función `approve` de tu contrato NFT con la dirección del contrato de subasta como argumento para el parámetro `to`, y 0 para el `tokenId`.

6. Llama a la función `start` de tu contrato de subasta.

7. Puja 2 Ether utilizando la cuenta 1, y 3 Ether usando la cuenta 2. Si llama a la función `highestBidder`, ahora debería devolver la dirección de la cuenta 2.

8. Llama a la función `retirar` con la cuenta 1. En el balance de la cuenta 1, debería ver el 2 Ether menos algunas comisiones de transacción.

9. Después de pasar 5 minutos, llama a la función 'end'. Luego, llama a la función `ended` la cual debería devolver `true`.

En el contrato de NFT, si llamas a la función `ownerOf` con el tokenid 0, debería devolver la dirección de la cuenta 2. Si observas el balance de la cuenta 1, debería haber aumentado en 3 Ether menos algunas tasas de transacción.

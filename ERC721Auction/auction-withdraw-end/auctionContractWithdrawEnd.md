En esta sección, finalizaremos el contrato, creando una función que retire las pujas que la cuenta ha realizado, y crear una función al final de la subasta. 


### Withdraw
Podemos crear una variante local `bal` (balance)  que almacene el valor total de las pujas que la llamada de la función ha generado (línea 75) , desde la última retirada. Podemos asignar este valor a`bal`  accediendo a los mapas usando las direcciones de la llamada de la función como la clave.  

Después, establecemos el valor de la dirección de la llamada de la función a 0 en el mapeo de las pujas ya que retirarán el valor total de sus pujas (línea 76).

Ahora transferimos la cantidad de ETH desde el contrato a la llamada de la función y emitimos el evento `Withdraw` (línea 79).

### End
Antes de que la llamada de la función pueda ejecutar esta función y terminar la subasta, necesitamos comprobar si ciertas condiciones son alcanzadas. La subasta necesita haber empezado (línea 83), la fecha final de la subasta necesita haber sido alcanzada (línea 84), y la subasta no debe de haberse terminado (línea 85).

Una vez que la subasta haya terminado, estableceremos la variable de estado `ended` como `true` (línea 87).

Comprobamos si alguien participó en la subasta y pujó en el NFT (línea 88).

Si hay pujas, transferimos el NFT del contrato al mayor postor (línea 89) y transferimos el ETH que ha sido envíado del mejor postor al contrato, ahora a la dirección de la subastadora, vendedora del NFT (línea 90).

Si nadie pujó por el NFT, enviamos el NFT de vuelta a la subastadora (línea 92).
If nobody bids on the NFT, we send the NFT back to the auctioneer (line 92).

Finalmente, emitimos el evento `End` (line 95).

## ⭐️ Misión

1. Despliegue un contrato NFT. Puede usar el contrato NFT que hemos creado en nuestro  "Solidity NFT Course" de Learneth.


2. Mintee su NFT con el tokenId 0.

3. Con el propósito de testear, cambie el valor que es asignado a la variable de estado `endAt`  (line 54) desde `7 días` a `5 minutos'. 

4. Despliegue el contrato EnglishAuction. Use la dirección del contrato NFT  como argumento para el parámetro `_nft`, 0 para `_nftId`, y 1 para `_startingBid`.



5. Llame a la función  `approve` en su contrato NFT con la dirección del contrato de la subasta como argumento para el parámetro `to` y 0 para `tokenId`. 

6. Llame la función `start` en su contrato de subasta. 

7. Puje 2 Ether usando la cuenta 1, y 3 Ether usando la cuenta 2. Si llama la función `highestBidder`, debería de devolver la dirección de la cuenta 2.

8. Llame la función `withdraw` con la cuenta 1. En el balance de la cuenta 1, debe de ver los 2 Ether menos los costes de la transferencia. 

9. Después de 5 minutos llame la función `end`. Después, llame la función `ended`, la cual debería devolver `true`.

En el contrato de NFT, si llama a la función `ownerOf` con el tokenId 0, debe retornar la dirección de la cuenta 2. Si mira al balance de la cuenta 1 debe de haberse incrementado en 3 Ether menos el coste de la transacción. 

En esta tutorial del contrato, vamos a aprender cómo crear un contrato de subasta de ERC721 (NFT). Antes de comenzar esta tutorial, le recomendamos realizar el "Solidity NFT Course" de Learneth.

En las secciones siguientes, crearemos un contrato que permitirá a la vendedora subastar un NFT al mayor postor. Este contrato ha sido creado por el proyecto <a href="https://solidity-by-example.org/app/english-auction/" target="_blank">Solidity by Example</a>. En esta primera sección, crearemos una interfaz, la variable de estado necesaria y el constructor. 

### Interfaz
Crearemos la interfaz (línea 5) para el token ERC721 , pues nuestro contrato necesitará interactuar con él. Necesitaremos los métodos `safeTransferFrom` (línea 5) y ` transferFrom` (línea 11).

### EnglishAuction
Creamos los cuatro eventos `Start`, `Bid`, `Withdraw`, `End` (líneas 19-22), para poder cargar interacciones importantes. 
Después crearemos las variables de estado que almacenan todas la información posible sobre la subasta en la blockchain. 

Creamos dos variables de estado para el NFT que queremos subastar. El la variable `nft` (línea 24) almacenamos una representación del contrato NFT, que permitirá llamar a sus funciones combinando la interfaz IERC721 y la dirección del contrato NFT. 
En  `nftId` (line 25), almacenamos el identificador de token específico en nuestro contrato de NFT que ha de ser subastado. 

Después,  necesitamos una variable para almacenar las direcciones de la persona que está subastando el NFT, el `seller` (línea 27). Queremos que nuestro contrato NFT envíe a la vendedora los procedimientos de la subasta cuando ésta haya terminado, para ello usará `address payable`.

Creamos una variable de estado `endAt` (línea 28) donde almacenaremos la fecha límite de la subasta. También crearemos los dos booleanos `started` (línea 29) y `ended` (línea 30), que mantendrán un seguimiento de si la subasta ha comenzado o terminado. 

Creamos una variable `highestBidder` (línea 32) donde almacenaremos la dirección del mejor postor. Enviaremos el NFT al mejor postor cuando la subasta haya finalizado. 

Finalmente necesitamos una uint `highestBid` (línea 33) para almacenar la mejor puja y un mapeo de `bids` (línea 34), en el que se pueden almacenar los valores totales de pujas que una cuenta ha hecho antes de retirarse; más información sobre este tema en la siguiente sección. 

### Constructor
Cuando la subastadora despliega el contrato, necesita proporcionar algunos argumentos: la dirección del contrato de los NFTs que quieren subastar  `_nft` (línea 37), el identificador de token del NFT que quieren subastar `_nftId` (línea 38) y un precio de salida que ha de ser sobrepujado para emplazar la primera puja de la subasta,`_startingBid` (línea 39).

Una vez desplegadas, a las variables de estado `nft` (línea 41), `nftId` (línea 42), `highestBid` (línea 45) se les asignan los valores de los argumentos. Las direcciones del `seller`  que despliega el contrato será automáticamente leído vía msg.sender y almacenadoen la variable de estado `seller` (line 44).

En la siguiente sección, permitiremos a la subastadora comenzar la subasta y a los postores emplazar sus pujas. 

## ⭐️ Misión
Usaremos la parte de la misión de las siguientes secciones para darle instrucciones sobre comprobaciones de su contrato en el ambiente de la máquina virtual de JavaScript en Remix.

1. Despliegue un contrato de NFT. Puede usar el contrato de NFT que hemos creado en nuestra sección "3.3 ERC721 - Token Creation".

2. Despliegue el contrato EnglishAuction. Use la dirección del contrato como argumento para el `_nft` parameter, 0 para el parámetro  `_nftId y 1 para _startingBid`.

3. Después de desplegar su contrato, compruebe si las funciones del contrato `nft`, `nftId`, y `started`  funcionan como deberían.
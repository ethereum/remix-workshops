En este tutorial de contrato, aprenderemos cómo crear un contrato de subasta ERC721 (NFT).
Te recomendamos que hagas el curso Learneth "Solidity NFT Course" antes de comenzar este tutorial.

En las siguientes secciones, crearemos un contrato que permitirá al vendedor subastar un NFT a la mayor oferta. Este contrato fue creado por el proyecto <a href="https://solidity-by-example.org/app/english-auction/" target="_blank">Solidity by Example</a>. En esta primera sección, crearemos una interfaz, las variables de estado necesarias y el constructor.

### Interfaz

Creamos la interfaz (línea 5) para el autentificador ERC721 ya que nuestro contrato tendrá que interactuar con él. Necesitaremos los métodos `safeTransferFrom` (línea 5), y` transferFrom` (línea 11).

### EnglishAuction

Creamos los cuatro eventos `Start`, `Bid`, `Withdraw`, `End` (línea 19-22) para poder registrar interacciones importantes.

A continuación, crearemos las variables de estado que almacenarán toda la información necesaria sobre nuestra subasta en cadena.

Creamos dos variables de estado para el NFT que queremos subastar. En la variable `nft` (línea 24) guardamos una representación del contrato NFT, que nos permitirá llamar a sus funciones combinando la interfaz IERC721 con la dirección del contrato NFT.
En `nftId` (línea 25), almacenamos el identificador de autentificador específico en nuestro contrato NFT que se subastará.

A continuación, necesitamos una variable para almacenar la dirección de la persona que subasta del NFT, el `seller` (línea 27).
Queremos que nuestro contrato NFT envíe al vendedor los ingresos de la subasta cuando haya terminado, por eso utiliza `address payable`.

Creamos una variable de estado `endAt` (línea 28) donde almacenaremos la fecha de fin de la subasta.
También creamos los dos booleanos, `started` (línea 29) y `ended` (línea 30), que hacen un seguimiento de si la subasta ha comenzado o terminado.

Creamos una variable `highestBidder` (línea 32) donde almacenaremos la dirección de la mayor oferta. Enviaremos la oferta más alta el NFT una vez que la subasta haya terminado.

Por último, necesitamos un uint `highestBid` (línea 33) para almacenar la oferta más alta y un mapeo de `bids` (línea 34), donde podemos almacenar el valor total de las ofertas que una cuenta ha realizado antes de retirarse; más sobre esto en la próxima sección.

### Constructor

Cuando el subastador despliegue el contrato, necesitan proveer algunos argumentos:
la dirección del contrato del NFT que quieren subastar `_nft` (línea 37), el id del token del NFT que quieren subastar `_nftId` (línea 38), y un precio inicial que debe ser sobrepujada para hacer la primera oferta en la subasta,`_startingBid` (línea 39).

Una vez desplegadas, las variables de estado `nft` (línea 41), `nftId` (línea 42), `highestBid` (línea 45) serán asignadas a los valores de los argumentos. La dirección del 'sellerr' que desplegó el contrato será automáticamente leída a través de msg.sender y almacenada en la variable de estado 'seller' (línea 44).

En la siguiente sección, vamos a permitir que el subastador inicie la subasta y los licitadores hagan sus ofertas.

## ⭐ Tarea

Utilizaremos la parte de asignación de las siguientes secciones para darle instrucciones sobre la prueba de su contrato en el entorno de Remix VM.

1. Desplegar un contrato de NFT. Puedes utilizar el contrato de NFT que creamos en nuestra sección "3.3 ERC721 - Creación de Token".

2. Despliegue de este contrato EnglishAuction. Usa la dirección del contrato de NFT como argumento para el parámetro `_nft`, 0 para `_nftId` y 1 para `_startingBid`.

3. Después de desplegar tu contrato, prueba si las funciones del contrato como `nft`, `nftId` y `started` funcionan como se esperaba.
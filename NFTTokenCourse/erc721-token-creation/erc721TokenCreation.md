En este contrato, usamos una implementación de contrato de token ERC721 de OpenZeppelin (línea 4).

Eche un vistazo a su implementación de un <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol" target="_blank">ERC721 contrato</a>. Además de las funcionalidades especificadas en el estándar ERC721, el contrato proporciona funciones adicionales que veremos muy pronto. 

## myToken 
Creamos nuestro propio contrato llamado MyToken (línea 7), que hereda (línea 7) la funcionalidad de una implementación de contrato de token OpenZepplin `ERC721` y `Ownable` que hemos importado (línea 4). Si no recuerda el módulo del contrato Ownable, eche un vistazo al ERC20 en la sección de extensiones. 

Esta implementación ERC721 hace uso de la extensión IERC721Metadata que es especificada en el EIP. Nuestro contrato hereda las funciones `name()` y `symbol()` y tiene un constructor que permite que sus valores sean establecidos durante el despliegue del contrato (línea 8).

En este caso, vamos a usar los valores por defecto. Nombraremos nuestro token de la misma manera que el contrato `"MyToken"` y haremos de "MTK" su símbolo. 

### URI Base
Con un contrato ERC721, somos capaces de acuñar varios tokens, cada uno de ellos con su propio tokenId. Cuando vimos en la interfaz IERC721Metadata, cada token puede tener su propio `tokenURI`, lo que típicamente apunta a un archivo JSON para almacenar metadata como nombre, descripción y el link de la imagen. 
Si un contrato acuña múltiples tokens, las implementaciones ERC721 usan a menudo el mismo URI que una base (`baseURI`) para todos los tokens y sólamente les diferencia añadiendo su `tokenId` al final vía concatenación. En la siguiente parte, veremos qué aspecto tiene esto en la práctica. 

En este ejemplo estamos almacenando nuestra data en  IPFS — más sobre este tema en la siguiente sección. Nuestra baseURI <a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/</a> (línea 11).
A través de la concatenación, el tokenURI para el token con el identificador 0 sería  <a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/0" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/0</a> , el  tokenURI para el token con el identificador  1 sería <a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/1" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/1</a>, y así sucesivamente.

Cuando se usa IPFS y aparece un error "504 Gateway Time-out", puede ser que tenga que esperar e intentar de nuevo hasta que el data esté disponible. 

### safeMint
Con la función safeMint (línea 14) permitiremos que la propietaria pueda crear nuevos tokens con un identificador de token dedicado tras el despliegue del contrato. 
La función  safeMint es parte de la implementación ERC721 de OpenZeppelin y nos permite de manera segura acuñar un token con el identificador `tokenId` a la cuenta con la dirección `to`.
Para el control de acceso usamos el modificador  `onlyOwner` desde el módulo del contrato de control de acceso Apropiable que hemos importado (línea 5).

En la siguiente sección, vamos a ver cómo podemos crear y hospedar la metadata para nuestros NFTs. 

## ⭐️ Misión
1. Renombre su contrato a `Geometry`.
2. Renombre su token a  `Geometry`.
3. Cambie el símbolo de su token a `GEO`.
4. Cambie el `_baseURI` a <a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/" target="_blank">https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/</a>.

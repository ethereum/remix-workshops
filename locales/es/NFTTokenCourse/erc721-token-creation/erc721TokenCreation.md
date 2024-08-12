En este contrato, utilizamos una implementación de contrato de token ERC721 de OpenZeppelin (línea 4).

Eche un vistazo a su implementación de un contrato <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol" target="_blank">ERC721</a>. Además de la funcionalidad especificada en el estándar ERC721, el contrato proporciona funciones adicionales que veremos en un momento.

## myToken

Creamos nuestro propio contrato llamado MyToken (línea 7), que hereda (línea 7) la funcionalidad de la implementación del contrato de tokens OpenZepplin `ERC721` y "Ownable\` que importamos (línea 4). Si no recuerdas el módulo de contrato propietario, eche un vistazo a la sección de extensiones de ERC20.

Esta implementación de ERC721 hace uso de la extensión de metadatos IERC721 que se especifica en el EIP. Nuestro contrato hereda las funciones `name()` y `symbol()`
Y tiene un constructor que permite establecer sus valores durante el despliegue del contrato (línea 8).
En este caso, vamos a usar los valores predeterminados. Nombramos nuestro token igual que el contrato "MyToken"\` y hacemos de "MTK" su símbolo.

### Base URI

Con un contrato ERC721, podemos acuñar varios tokens, cada uno con su propio tokenId. Como vimos en la interfaz de metadatos IERC721, cada token puede tener su propio "tokenURI", que normalmente apunta a un archivo JSON para almacenar metadatos como el nombre, la descripción y el enlace de la imagen.
Si un contrato acuña varios tokens, las implementaciones de ERC721 a menudo utilizan el mismo URI como base (`baseURI`) para todos los tokens y solo los diferencian agregando su `tokenId` único al final a través de la concatenación. En la siguiente parte, veremos cómo se ve esto en la práctica.

En este ejemplo, estamos almacenando nuestros datos en IPFS; más sobre eso en la siguiente sección. Nuestra Uri base es <a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/</a> (línea 11).
A través de la concatenación, el tokenURI para el token con la identificación 0 sería <a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/0" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/0</a> , el tokenURI para el token con la identificación 1 sería <a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/1" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/1</a>, y así sucesivamente.

Al usar IPFS y se topa con errores de "504 Gateway Time-out", es posible que tenga que esperar y volver a intentarlo hasta que los datos estén disponibles.

### safeMint

Con la función safeMint (línea 14) permitimos al propietario crear nuevos tokens con un Id de token dedicado después de la implementación del contrato.
La función safeMint es parte de la implementación ERC721 de OpenZeppelin y nos permite acuñar de forma segura un token con el id `tokenId` a la cuenta con la dirección `to`. Para el control de acceso, utilizamos el modificador "onlyOwner" del módulo de contrato de control de acceso propietario que importamos (línea 5).

En la siguiente sección, veremos cómo podemos crear y alojar los metadatos para nuestros NFT.

## ⭐️ Asignación

1. Renombra tu contrato a "Geometry".
2. Campie el nombre de su token a "Geometry".
3. Cambia el símbolo de tu token a `GEO`.
4. Cambie el `_baseURI` a <a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/" target="_blank">https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/</a>.

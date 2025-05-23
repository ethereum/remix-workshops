ERC721 es un estándar para los contratos de tokens que gestionan tokens no fungibles (NFT) en la cadena de bloques de Ethereum.

Cada token no fungible es único y no es intercambiable. Los NFT pueden tener diferentes propiedades, comportamientos o derechos. Los tokens no fungibles se utilizan para representar la propiedad de activos digitales y físicos únicos como arte, objetos de colección o bienes raíces.

Si desea saber más sobre el estándar de tokens ERC721, eche un vistazo a las especificaciones en su <a href="https://eips.ethereum.org/EIPS/eip-721" target="_blank">Propuesta de mejora de Ethereum</a>.

## Interfaz

El estándar ERC721 es más complejo que el estándar ERC20 y cuenta con extensiones opcionales. Los contratos que cumplen con ERC721 deben, como mínimo, implementar las interfaces ERC721 y ERC165, que examinaremos en esta sección.

Esta interfaz (línea 11) forma parte de la biblioteca de contratos de código abierto proporcionada por <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/IERC721.sol" target="_blank">OpenZeppelin</a>.

## Funciones básicas de IERC721

Los contratos que cumplen con el estándar ERC721 tienen que implementar las siguientes funciones:

### balanceOf

La función "balanceOf" (línea 30) devuelve la cantidad de tokens propiedad de la cuenta con la dirección "propietario".

### ownerOf

La función `ownerOf` (línea 39) devuelve la dirección `owner` de la cuenta que contiene el token con el id `tokenId`.

### safeTransferFrom

La función `safeTransferFrom` (línea 55) transfiere la propiedad de un token con el id `tokenId` desde la cuenta con la dirección `from` a la cuenta con la dirección `to`.

La función `safeTransferFrom` (línea 137) es casi idéntica a la función `safeTransferFrom` (línea 55). La única diferencia es que esta función tiene un "datos" de carga útil no vacía.

Un contrato inteligente debe implementar la interfaz ERC721TokenReceiver si va a recibir una transferencia. Esto garantizará que el contrato pueda manejar las transferencias de tokens ERC721 y evitar que los tokens se bloqueen en un contrato que no puede.

### transferFrom

La función `transferFrom` (línea 55) transfiere la propiedad de un token con el id `tokenId` de la cuenta con la dirección `from` a la cuenta con la dirección `to`.

\*\*Se recomienda usar safeTransferFrom en lugar de transferFrom siempre que sea posible. \*\*
La función "transferFrom" no es segura porque no comprueba si el contrato inteligente que es el destinatario de la transferencia ha implementado la interfaz ERC721TokenReceiver y es capaz de manejar los tokens ERC721.

## Funciones avanzadas de IERC721

### approve

La función "approve" (línea 94) le da a la cuenta con la dirección "a" el permiso para administrar el token con el id "tokenId" en nombre de la cuenta que llama a la función.

### getApproved

La función `getApproved` (línea 103) devuelve la dirección de la cuenta (return var `operator`) que está aprobada para administrar el token con el id `tokenId`.

### setApprovalForAll

La función `setApprovalForAll` (línea 115) establece el permiso (`_approved`) para la cuenta con la dirección especificada (input param - `operator`) para administrar todos los tokens de la cuenta que llama a la función.

### isApprovedForAll

La función "getApproved" (línea 103) devuelve el booleano verdadero si la cuenta con la dirección "operador" está aprobada para administrar todos los tokens de la cuenta con la dirección "propietario".

## Eventos IERC721

Los contratos ERC721 también deben emitir los siguientes eventos:

### Transferir

El evento "Transferencia" (línea 15) debe emitirse cuando el token con el id `tokenId` se transfiere desde la cuenta con la dirección `from` a la cuenta con la dirección `to`.

### Aprobación

El evento "Aprobación" (línea 20) debe emitirse cuando la cuenta con la dirección "propietario" aprueba la cuenta con la dirección "propisador" para administrar el token con el id "tokenId" en su nombre.

### Aprobación para todos

El evento `ApprovalForAll` (línea 25) debe emitirse cuando la cuenta con la dirección "propietario" da o elimina el permiso (`_aprobado`) de la cuenta con la dirección "operador" para administrar todos sus tokens.

## IERC165

Además de la interfaz ERC721, los contratos que cumplen con ERC721 también deben implementar la interfaz ERC165.

Con la implementación de la interfaz ERC165, los contratos pueden declarar el soporte de interfaces específicas. Un contrato que quiere interactuar con otro contrato puede preguntar si el otro contrato es compatible con esta interfaz antes de realizar una transacción, por ejemplo, enviarle tokens que podrían no admitir.

Nuestra interfaz IERC721 aquí importa (línea 6) y hereda (línea 11) de la interfaz IERC165.

Así es como se ve la implementación de <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/introspection/IERC165.sol" target="_blank">OpenZeppelins</a> de la interfaz ERC165:

```
interfaz IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
```

Por ejemplo, el identificador ERC165 para la interfaz ERC721 como se especifica en el EIP721 es "0x80ac58cd". Aprenda a calcular un identificador de interfaz y más sobre el ERC165 en su <a href="https://eips.ethereum.org/EIPS/eip-165" target="_blank">propuesta de mejora</a>.

## Otras interfaces

La interfaz <a href="https://eips.ethereum.org/EIPS/eip-721#specification" target="_blank">IERC721TokenReceiver</a> debe implementarse para aceptar transferencias seguras.

Hay dos extensiones opcionales para los contratos ERC721 especificadas en el EIP721:

IERC721Enumerable permite a un contrato publicar su lista completa de tokens y hacerlos detectables.

IERC721Metadata permite a un contrato asociar información adicional a un token. Tendremos un vistazo más detallado a esto en la siguiente sección.

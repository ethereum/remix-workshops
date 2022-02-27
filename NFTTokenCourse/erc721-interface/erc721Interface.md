ERC721 es un estándar para contratos de token que administra tokens no fungibles (NFTs) en la blockchain de Ethereum. 

Cada token no fungible es único y no intercambiable y no intercambiable. NFTs pueden tener diferentes propiedades, comportamiento o derechos. Los tokens no fungibles son usados para representar autorías de activos digitales y físicos como por ejemplo arte, coleccionables o propiedades inmobiliarias. 

Si desea saber más sobre el estándar
If you want to know more about the ERC721 token standard, have a look at the specifications in its <a href="https://eips.ethereum.org/EIPS/eip-721" target="_blank">Propuesta de mejora de Ethereum</a>.

## Interfaz
El estándar ERC721 es más complejo que el estándar ERC20 y muestra extensiones opcionales. Los contratos compatibles con ERC721 deben, como mínimo, implementar las interfaces ERC721 y ERC165, que veremos en esta sección. 

Esta interfaz (línea 11) es parte de la librería de contratos de fuente libre proporcionados por <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/IERC721.sol" target="_blank">OpenZeppelin</a>.

## Funciones IERC721 
Los contratos compatibles con el estándar ERC20 hand e implementar las siguientes funciones: 

### balanceOf
La función  `balanceOf` (línea 30) devuelve la cantidad de tokens poseída por la cuenta de la propietaria (`owner`) de la dirección. 


### ownerOf
La función `ownerOf` (línea 39) devuelve la dirección  `owner` de la cuenta que tiene el token con el identificador  `tokenId`.

### safeTransferFrom
La función  `safeTransferFrom` (línea 55) transfiere la propiedad a un token con el identificador 
`tokenId` desde la cuenta con la dirección `from` hasta la cuenta con la dirección `to`.

La función `safeTransferFrom` (línea 137) es casi idéntica a la función `safeTransferFrom` (línea 55). La única diferencia es que esta función tiene una carga de `data` no-vacía. 

Un contrato inteligente ha de implementar la interfaz ERC721TokenReceiver, si quiere recibir una transferencia. Esto asegurará que el contrato pueda asumir las transferencias del token ERC721 y prevenir que los tokens se bloqueen en un contrato que no pueda realizar las transferencias. 

### transferFrom
La función`transferFrom` (línea 55) transfiere la propiedad de un token con el identificador `tokenId` desde la cuenta con la dirección `from`  hasta la cuenta con la dirección `to`.

**Es recomendable usar seguridad TransferFrom en lugar de transferFrom cuando sea posible. **
La función `transferFrom` no es segura porque no comprueba si el contrato inteligente que es el receptor de las transferencias ha implementado la interfaz RC721TokenReceiver y es capaz de llevar tokens ERC721.

### approve
La función `approve` (línea 94) ofrece a la cuenta con la dirección `to` el permiso para administrar el token con el identificador `tokenId` en nombre de la cuenta que llama a la función.

### getApproved
La función `getApproved` (línea 103) devuelve la dirección `operator` de la cuenta que se ha aprobado para administrar el token con el identificador `tokenId`.

### setApprovalForAll
La función `setApprovalForAll` (línea 115) ofrece o elimina el permiso  (`_approved`) a la cuenta con la dirección  `operator`  para administrar todos los tokens de la cuenta que llaman a la función.

### isApprovedForAll
La función `getApproved` (línea 103) devuelve el booleano verdadero si la cuenta con la dirección `operator` es aprobada para administrar todos los tokens de la cuenta con la dirección `owner`.

## IERC721 Events
Los contratos ERC721 deben también emitir los siguientes eventos: 

### Transfer
El evento  `Transfer` (línea 15) puede ser emitido cuando el token con el identificador `tokenId` es transferido desde la cuenta con la dirección `from` hasta la cuenta con la dirección `to`.

### Approval
El evento `Approval` (línea 20) debe de ser emitido cuando una cuenta con la dirección `owner`  aprueba la cuenta con la dirección  `spender` para administrar el token con el identificador `tokenId` en su nombre. 

### ApprovalForAll
El evento  `ApprovalForAll` (línea 25) debe ser emitido cuando la cuenta con la dirección `owner`ofrece o borra el permiso  (`_approved`) de la cuenta con la dirección `operator`  para gestionar todos sus tokens. 

## IERC165
Además de las interfaces  ERC721, los contratos ERC721 han de ser implementados en las interfaces ERC165.

Con la implementación de la interfaz  ERC165, los contratos pueden declarar el apoyo de interfaces específicas. Un contrato que quiere interactuar con otro contrato puede requerir que el otro contrato apoye esta interfaz antes de hacer una transacción, por ejemplo enviar tokens que sean incompatibles. 

Nuestra interfaz IERC721 aquí importa (línea 6) y hereda (línea 11) de la interfaz IERC165.

Este es el aspecto de la interfaz ERC165 de la <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/introspection/IERC165.sol" target="_blank">implementación OpenZeppelins</a>

```
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
```
Por ejemplo, el identificador ERC165 de la interfaz  ERC721, especificado en el EIP721, es “0x80ac58cd”. Aprenda cómo calcular el identificador de una interfaz y más sobre el ERC165 en su <a href="https://eips.ethereum.org/EIPS/eip-165" target="_blank">proposición de mejora</a>.

## Otras interfaces
La interfaz<a href="https://eips.ethereum.org/EIPS/eip-721#specification" target="_blank">IERC721TokenReceiver</a> ha de ser implementada para recibir transacciones seguras. 

Hay dos extensiones opcionales para los contratos ERC721 especificada en el EIP721:

IERC721Enumerable permite al contrato publicar su lista completa de tokens y hacerla descubrible.

IERC721Metadata permite al contrato asociar información adicional con un token. Echaremos un vistazo más a fondo en la siguiente sección.
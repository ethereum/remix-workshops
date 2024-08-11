ERC721 is a standard for token contracts that manage non-fungible tokens (NFTs) on the Ethereum blockchain.

Each non-fungible token is unique and not interchangeable. NFTs can have different properties, behavior, or rights. Non-fungible tokens are used to represent ownership of unique digital and physical assets like art, collectibles, or real estate.

If you want to know more about the ERC721 token standard, have a look at the specifications in its <a href="https://eips.ethereum.org/EIPS/eip-721" target="_blank">Ethereum improvement proposal</a>.

## Interface

The ERC721 standard is more complex than the ERC20 standard and it features optional extensions. ERC721 compliant contracts must, at a minimum, implement the ERC721 and ERC165 interfaces, which we will look at in this section.

This interface (line 11) is part of the open-source contract library provided by <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/IERC721.sol" target="_blank">OpenZeppelin</a>.

## Basic IERC721 Functions

Contracts compliant with the ERC721 standard have to implement the following functions:

### balanceOf

The function `balanceOf` (line 30) returns the amount of tokens owned by the account with the address `owner`.

### ownerOf

The function `ownerOf` (line 39) returns the address `owner` of the account that holds the token with the id `tokenId`.

### safeTransferFrom

The function `safeTransferFrom` (line 55) transfers the ownership of a token with the id `tokenId` from the account with the address `from` to the account with the address `to`.

The function `safeTransferFrom` (line 137) is almost identical to the function `safeTransferFrom` (line 55) .The only difference is that this function has a non-empty payload `data`.

A smart contract must implement the ERC721TokenReceiver Interface if it is to receive a transfer. This will ensure that the contract can handle ERC721 token transfers and prevent the tokens from being locked in a contract that can’t.

### transferFrom

The function `transferFrom` (line 55) transfers the ownership of a token with the id `tokenId` from the account with the address `from` to the account with the address `to`.

**It is recommended to use safeTransferFrom instead of transferFrom whenever possible.**
The `transferFrom` function is not secure because it doesn’t check if the smart contract that is the recipient of the transfer has implemented the ERC721TokenReceiver interface and is capable of handling ERC721 tokens.

## Advanced IERC721 Functions

### approve

The function `approve` (line 94) gives the account with the address `to` the permission to manage the token with the id `tokenId` on behalf of the account calling the function.

### getApproved

The function `getApproved` (line 103) returns the address of the account (return var `operator`) that is approved to manage the token with the id `tokenId`.

### setApprovalForAll

The function `setApprovalForAll` (line 115) sets the permission (`_approved`) for the account with the specified address (input param - `operator`) to manage all tokens of the account calling the function.

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

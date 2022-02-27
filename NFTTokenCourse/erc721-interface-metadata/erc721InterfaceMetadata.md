La extensión de metadata es opcional. Permite añadir información adicional a nuestros tokens ERC721. Podemos especificar un nombre, un símbolo y una URI (Uniform Resource Identifier)  que apunte a un archivo donde añadir aún más información en forma de JSON. 

## Funciones ERC721 de Metadata 

### nombre
La función  `name` (línea 16) devuelve el nombre de la colección de tokens. Una colección de tokens significa que todos los tokens han sido creados con la implementación del contrato de token ERC721. Cada token en esta colección tendrá su nombre, independientemente de su tokenId.

### símbolo
La función `symbol` (línea 21) devuelve el símbolo de la colección de tokens. 

### tokenURI
La función  `tokenURI` (línea 26) devuelve el URI para el token con el identificador `tokenId`. En este caso no es el URI de la colección entera sino de un token individual en la colección. 

## ERC721 Metadata JSON Schema
## ERC721 Metadata JSON Schema
El archivo al que apunta el tokenURI debe ajustarse al Schema JSON de Metadata como está especificado en el <a href="https://eips.ethereum.org/EIPS/eip-721#specification" target="_blank">EIP-721</a>.

 
```
{
    "title": "Activo Metadata",
    "type": "object",
    "properties": {
        "name": {
            "type": "string",
            "description": "Identifica el activo al que representa el NFT"
        },
        "description": {
            "type": "string",
            "description": "Describe el activo al que representa el NFT"
        },
        "image": {
            "type": "string",
 "description": "Un URI apuntando con mimo tipo de imagen /* representa el activo al que este NFT representa. Considere crear imágenes de una anchura de entre 320 y 1080 píxeles y un aspecto ratio entre 1.91:1 y 4:5 inclusive."

        }
    }
}
```

El elemento de raíz puede ser del tipo objeto. Este objeto raíz debe de tener propiedades con las claves: nombre, descripción, e imagen, los que deben pertenecer al tipo string.

El estándar ERC721 es muy flexible, el  tokenURI no necesita apuntar al documento JSON y el documento JSON no tiene que tener todas las propiedades y de hecho, a menudo posee propiedades adicionales. 
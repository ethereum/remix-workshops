La extensión de metadatos es opcional. Nos permite añadir información adicional a nuestros tokens ERC721. Podemos especificar un nombre, un símbolo y un URI (Identificador Uniforme de Recursos) que puede apuntar a un archivo donde podemos agregar aún más información en forma de JSON.

## Funciones de metadatos ERC721

### nombre

La función "nombre" (línea 16) devuelve el nombre de la colección de tokens. Una colección de tokens significa todos los tokens creados con la implementación de su contrato de tokens ERC721. Cada token de esta colección tendrá este nombre, independientemente de su tokenId.

### símbolo

La función "símbolo" (línea 21) devuelve el símbolo de la colección de tokens.

### tokenURI

La función `tokenURI` (línea 26) devuelve el URI del token con el id `tokenId`. En este caso, no es el URI de toda la colección, sino de un token individual en la colección.

## Esquema JSON de metadatos ERC721

El archivo al que apunta el tokenURI debe ajustarse al esquema JSON de metadatos tal y como se especifica en el <a href="https://eips.ethereum.org/EIPS/eip-721#specification" target="_blank">EIP-721</a>.

```
{

"Título": "Metadatos de activos",

"Tipo": "objeto",

"Propiedades": {

"Nombre": {

"Tipo": "cadena",

"Descripción": "Identifica el activo al que representa este NFT"

},

"Descripción": {

"Tipo": "cadena",

"Descripción": "Describe el activo al que representa este NFT"

},

"Imagen": {

"Tipo": "cadena",

"Descripción": "Un URI que apunta a un recurso con una imagen de tipo mimo/* que representa el activo al que representa este NFT. Considere la posibilidad de hacer cualquier imagen con un ancho entre 320 y 1080 píxeles y una relación de aspecto entre 1,91:1 y 4:5 inclusive".

}

}

}
```

El elemento raíz debe ser del tipo de objeto. Este objeto raíz debe tener propiedades con las claves: nombre, descripción e imagen que deben ser toda la cadena de tipo.

El estándar ERC721 es bastante flexible, el tokenURI no necesita apuntar a un documento JSON y el JSON no necesita tener todas las propiedades y a menudo tiene propiedades adicionales.
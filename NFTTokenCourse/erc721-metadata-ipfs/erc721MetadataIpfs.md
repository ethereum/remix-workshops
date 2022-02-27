En esta sección, crearemos nuestra metadata y almacén de una manera descentralizada. 

IPFS (sistema de archivos interplanetario) es una red peer-to-peer para almacenar  archivos de una manera distribuida. Pinata.cloud es un servicio de pinning que permite a los usuarios hospedar archivos en la red IPFS. También queremos hospedar nuestras imágenes y  los archivos JSON con su metadata en los  IPFS.

### Cree una carpeta de imágenes
En este ejemplo, crearemos metadata para tres tokens. Como puede ver debajo, crearemos tres imágenes que se almacenarán en la carpeta.

```
geo-img
├── geo_1.png
├── geo_2.png
├── geo_3.png
```

### Regístrese en Pinata
Ahora, necesitamos hospedar estas imágenes en algún lugar para poder apuntarlas hacia el metadata de nuestros tokens. Hagámoslo de un modo descentralizado usando Pinata para almacenar los IPFs.

Primero necesita una cuenta en Pinata. Vaya a <a href="https://app.pinata.cloud/register" target="_blank">Pinata.cloud</a> and create an account. En Pinata puede subir hasta 1Gb de data gratuitamente. 

Una vez que se haya registrado debería encontrarse en la pantalla Pin Manager. 

<img src="https://i.imgur.com/yKpD65m.png" alt="Pin Manager Pinata" width="300"/>

### Suba imágenes al IPFS
Clique sobre el botón de subidas y actualice la carpeta con sus imágenes. 
Una vez que haya subido su carpeta, debería ver el nombre de su carpeta y el CID (identificador de contenido) asociado con él. Si el contenido el la carpeta cambia, el CID también cambiará. 

Para acceder a su carpeta en IPFS, introduzca su dirección  "https://ipfs.io/ipfs/" y añada si CID. Para nuestro ejemplo actual, puede acceder a la carpeta usando: <a href="https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P" target="_blank">https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P</a>

Puede acceder a una imágen específica usando: <a href="https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_1.png" target="_blank">
    https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_1.png
</a>

### Cree archivos JSON 
Crearemos otra carpeta donde almacenaremos tres archivos JSON. 

```
geo-json
├── 0
├── 1
├── 2
```
Dentro de los archivos JSON crearemos la metadata para los tokens, como por ejemplo nombre, descripción, e imagen. Para la imagen URL, usaremos el URL de nuestras imágenes en IPFS. Puede añadir data adicional si quiere, en este ejemplo, hemos añadido atributos únicos para cada token. 

Esto es el aspecto que podría tener el JSON para el primer token: 

```
{
    "name": "Geometry#0",
    "description": "Geometry is an NFT collection for educational purposes.",
    "image": "https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_1.png
",
    "attributes": [
        { "trait_type": "background", "value": "cyan" },
        { "trait_type": "color", "value": "red" },
        { "trait_type": "shape", "value": "circle" }
    ]
}

```
Esto es el aspecto que podría tener el JSON para el segundo  token: 

```
{
    "name": "Geometry#1",
    "description": "Geometry is an NFT collection for educational purposes.",
    "image": "https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_2.png",
    "attributes": [
        { "trait_type": "background", "value": "magenta" },
        { "trait_type": "color", "value": "green" },
        { "trait_type": "shape", "value": "square" }
    ]
}
```

Como hemos mostrado anteriormente, la carpeta en este ejemplo se llama "geo-json".. Dentro de esta carpeta, tenemos tres archivos JSON. El primer archivo JSON se llama "0", el segundo archivo JSON se llama “1”, el tercero se llama “2”.

Asegúrese de que sus archivos JSON no tienen un archivo acabado y que son llamados como sus correspondientes identificadores de token (tokenIds).
En el manager de pin de pinata.cloud, clique en el botón de carga y cargue la carpeta con sus archivos JSON. 

Para acceder a su carpeta en IPFS, introduzca su dirección "https://ipfs.io/ipfs/" y añada su CID. Para ejemplos actuales, puede acceder a su carpeta usando:
<a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp" target="_blank">
    https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp
</a>

Esto se convertirá en una baseURI.

Puede acceder a un archivo JSON específico añadiendo sencillamente una barra y un tokenId (identificador de token) usando: 
<a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/0" target="_blank">
    https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/0
</a>

En el contrato, reemplace la baseURI con su propia baseURI. En este ejemplo, la baseURI consiste en la URL "https://ipfs.io/ipfs/", the CID containing the JSON files, and a slash at the end "/".

Una baseURI individual será creada ahora para cada token añadiendo el tokenId de la baseURI — exactamente lo que hicimos manualmente en el ejemplo a­nteriorpara acceder a los archivos JSON.

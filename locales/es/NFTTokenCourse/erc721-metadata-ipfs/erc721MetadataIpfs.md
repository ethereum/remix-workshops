En esta sección, crearemos nuestros metadatos y los almacenaremos de forma descentralizada.

IPFS (InterPlanetary File System) es una red de igual a igual para almacenar archivos de forma distribuida. Pinata.cloud es un servicio de fijación que permite a los usuarios alojar fácilmente archivos en la red IPFS.

Queremos alojar nuestras imágenes y los archivos JSON con sus metadatos en IPFS.

### Crear carpeta de imágenes

En este ejemplo, crearemos metadatos para tres tokens. Como puedes ver a continuación, creamos tres imágenes que almacenamos en una carpeta.

```
geo-img
├── geo_1.png
├── geo_2.png
├── geo_3.png
```

### Regístrate en Pinata

Ahora, queremos alojar estas imágenes en algún lugar para poder señalarlas en los metadatos de nuestros tokens. Hagámoslo de forma descentralizada y usemos Pinata para alojarlos en IPFS.

Primero necesitas una cuenta en Pinata. Vaya a <a href="https://app.pinata.cloud/register" target="_blank">Pinata.cloud</a> y cree una cuenta. En Pinata puedes subir hasta 1 GB de datos de forma gratuita.

Una vez que te hayas registrado, deberías estar en la vista del Administrador de Pines.

<img src="https://i.imgur.com/yKpD65m.png" alt="Pin Manager Pinata" width="300"/>

### Subir imágenes a IPFS

Haz clic en el botón de carga y sube la carpeta con tus imágenes.
Una vez que haya cargado su carpeta, debería ver el nombre de su carpeta y el CID (identificador de contenido) asociado a ella. Si el contenido de la carpeta cambia, el CID también cambiará.

Para acceder a su carpeta en IPFS, introduzca esta dirección "https://ipfs.io/ipfs/" y agregue su CID. Para nuestro ejemplo actual, puede acceder a su carpeta utilizando: <a href="https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P" target="_blank">
https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P </a>

Puede acceder a una imagen específica usando: <a href="https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_1.png" target="_blank">
https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_1.png </a>

### Crear archivos JSON

Creamos otra carpeta donde almacenamos tres archivos JSON.

```
geo-json
├── 0
├── 1
├── 2
```

Inside the JSON files, create the metadata for the tokens, like name, description, and image.
For the image URL, we are going to use the URL of our images on IPFS. You can add additional data if you like; in this example, we added some unique attributes for each token.

This is how the JSON for the first token could look:

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

This is how the JSON for the second token could look:

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

As shown above, the folder in this example is called "geo-json". Inside this folder, we have three JSON files.
The first JSON file is called "0", the second JSON file is called "1", and the third JSON file is called "2".

Make sure that your JSON files don't have a file ending and are named like their corresponding tokenIds.
In the pin manager on pinata.cloud, click on the upload button and upload the folder with your JSON files.

To access your folder on IPFS, enter this address "https://ipfs.io/ipfs/" and add your CID.
For our current example, you can access your folder by using: <a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp" target="_blank">
https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp </a>
This will become our baseURI.

You can access a specific JSON file then by just adding a slash and the tokenId by using: <a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/0" target="_blank">
https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/0 </a>

In the contract, replace the baseURI with your own baseURI. In this example, the baseURI consists of the URL
"https://ipfs.io/ipfs/", the CID containing the JSON files, and a slash at the end "/".

An individual tokenURI will now be created for each token by adding the tokenId to the baseURI — exactly what we did manually in the example above to access the JSON file.

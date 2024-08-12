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

Dentro de los archivos JSON, crea los metadatos para los tokens, como el nombre, la descripción y la imagen.
Para la URL de la imagen, vamos a usar la URL de nuestras imágenes en IPFS. Puede agregar datos adicionales si lo desea; en este ejemplo, hemos añadido algunos atributos únicos para cada token.

Así es como podría verse el JSON para el primer token:

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

Así es como podría verse el JSON para el segundo token:

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

Como se muestra arriba, la carpeta de este ejemplo se llama "geo-json". Dentro de esta carpeta, tenemos tres archivos JSON.
El primer archivo JSON se llama "0", el segundo archivo JSON se llama "1" y el tercer archivo JSON se llama "2".

Asegúrese de que sus archivos JSON no tengan un final de archivo y tengan el nombre de sus tokensIds correspondientes.
En el administrador de pines de pinata.cloud, haga clic en el botón de carga y cargue la carpeta con sus archivos JSON.

Para acceder a su carpeta en IPFS, introduzca esta dirección "https://ipfs.io/ipfs/" y agregue su CID.
Para nuestro ejemplo actual, puede acceder a su carpeta utilizando:<a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp" target="_blank">
https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp
</a>Esto se convertirá en nuestra Uri base.

Puede acceder a un archivo JSON específico simplemente agregando una barra diagonal y el tokenId usando: <a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/0" target="_blank">
https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/0 </a>

En el contrato, reemplace el baseURI con su propio baseURI. En este ejemplo, la URI base consiste en la URL
"https://ipfs.io/ipfs/", the CID containing the JSON files, and a slash at the end "/".

Ahora se creará un tokenURI individual para cada token agregando el tokenId a la baseURI, exactamente lo que hicimos manualmente en el ejemplo anterior para acceder al archivo JSON.

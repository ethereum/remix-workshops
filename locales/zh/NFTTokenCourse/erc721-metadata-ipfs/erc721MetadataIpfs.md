在这个部分，我们将创建元数据并以去中心化的方式存储它。

IPFS ( InterPlanetary File System) is a peer-to-peer network for storing files in a distributed way. IPFS（星际文件系统）是一种用于以分布式方式存储文件的点对点网络。Pinata.cloud 是一个固定服务，允许用户轻松地在 IPFS 网络上托管文件。

我们希望将图像和其元数据的 JSON 文件托管到 IPFS 上。

### Create Image Folder

In this example, we will create metadata for three tokens. 在这个例子中，我们将为三个代币创建元数据。如下所示，我们创建了三张图片并将它们存储在一个文件夹中。

```
geo-img
├── geo_1.png
├── geo_2.png
├── geo_3.png
```

### 注册Pinata

Now, we want to host these images somewhere so we can point to them in the metadata of our tokens. 现在，我们想要将这些图像托管到某个地方，以便我们可以在代币的元数据中指向它们。让我们使用去中心化的方式并使用Pinata将它们托管到IPFS。

First you need an account on Pinata. Go to <a href="https://app.pinata.cloud/register" target="_blank">Pinata.cloud</a> and create an account. On Pinata you can upload up to 1 GB of data for free.

注册完成后，您应该会看到`Pin Manager`视图。

<img src="https://i.imgur.com/yKpD65m.png" alt="Pin Manager Pinata" width="300"/>

### 将图片上传到IPFS

Click on the upload button and upload the folder with your images.
点击上传按钮并上传包含您的图像的文件夹。一旦您上传了文件夹，您应该会看到文件夹名称和与之关联的CID（内容标识符）。如果文件夹中的内容发生更改，则CID也会更改。 If the content in the folder changes, the CID will also change.

要在IPFS上访问您的文件夹，请输入此地址"https://ipfs.io/ipfs/"并添加您的CID。对于我们当前的示例，您可以使用以下方式访问您的文件夹： <a href="https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P" target="_blank">
https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P </a> For our current example, you can access your folder by using: <a href="https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P" target="_blank">
https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P </a>

通过使用以下方式，可以访问特定图像： <a href="https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_1.png" target="_blank">
https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_1.png </a>

### Create JSON files

我们创建另一个文件夹，其中包含三个JSON文件。

```
geo-json
├── 0
├── 1
├── 2
```

Inside the JSON files, create the metadata for the tokens, like name, description, and image.
For the image URL, we are going to use the URL of our images on IPFS. You can add additional data if you like; in this example, we added some unique attributes for each token.

以下是第一个代币的JSON示例：

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

第二个代币的JSON可能如下所示：

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

As shown above, the folder in this example is called "geo-json". 在JSON文件中，为代币创建元数据，例如名称、描述和图像。对于图像URL，我们将使用IPFS上的图像URL。如果您愿意，可以添加其他数据；在此示例中，我们为每个代币添加了一些独特属性。
如上所示，此示例中的文件夹名为“geo-json”。在该文件夹内，我们有三个JSON文件。第一个JSON文件名为“0”，第二个JSON文件名为“1”，第三个JSON文件名为“2”。

确保您的JSON文件没有扩展名，并按其对应的tokenIds进行命名。在pinata.cloud上的pin manager中，单击上传按钮并上传包含您的JSON文件的整个文件夹。
首先，您需要在<a href="https://app.pinata.cloud/register" target="_blank">Pinata.cloud</a>上创建一个帐户。您可以免费上传高达1GB的数据。

要访问IPFS上的您的文件夹，请输入此地址"https://ipfs.io/ipfs/"并添加CID。对于我们当前的示例，您可以使用以下方式访问您的文件夹： <a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp" target="_blank">
https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp </a>
这将成为我们的baseURI。
For our current example, you can access your folder by using: <a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp" target="_blank">
https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp </a>
This will become our baseURI.

然后只需通过添加斜杠和tokenId即可访问特定JSON文件： <a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/0" target="_blank">
https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/0 </a>

In the contract, replace the baseURI with your own baseURI. 在合约中用自己的baseURI替换原来的baseURI。在本例中，baseURI由URL"https://ipfs.io/ipfs/"、包含JSON文件的CID和一个斜杠“/”。

现在，通过将tokenId添加到baseURI来为每个代币创建单独的tokenURI —— 就像我们在上面的示例中手动访问JSON文件一样。

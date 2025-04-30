このセクションでは、メタデータを作成して、分散化された方法で保存します。

IPFS(InterPlanetary File System)は、ピアツーピアネットワークにファイルを分散して保存します。 Pinata.cloudは、ピンニングサービスと呼ばれ、ユーザーはIPFSネットワークに簡単にファイルをホストすることができます。

私たちの画像とJSONファイルをメタデータと一緒にIPFSに保存したいと思います。

### 画像フォルダーの作成

この例では、3つのトークンのメタデータを作成します。 以下に示すように、3つの画像を作成してフォルダに保存します。

```
geo-img
├── geo_1.png
├── geo_2.png
├── geo_3.png
```

### Pinataに登録

では、これらの画像をどこかにホストして、私たちのトークンのメタデータを指し示すようにします。 分散化された方法を用いるため、Pinataを使用してIPFSに保存します。

まず、Pinataのアカウントが必要になります。 <a href="https://app.pinata.cloud/register" target="_blank">Pinata.cloud</a>に移動して、アカウントを作成します。 Pinataでは、1GBまで無料でアップロードできます。

サインアップが完了すると、Pin Managerビューに移動します。

<img src="https://i.imgur.com/yKpD65m.png" alt="Pin Manager Pinata" width="300"/>

### IPFSに画像をアップロード

uploadボタンをクリックして、イメージの入ったフォルダをアップロードします。
フォルダのアップロードが完了すると、フォルダーの名前と、それに関連付けられたCID(Content Identifer)が表示されます。 フォルダの内容が変更されると、CIDも変更されます。

IPFSのフォルダにアクセスするには、アドレス「https://ipfs.io/ipfs/」を入力し、CIDを追加します。 現在の例では、次のようにフォルダにアクセスします。 <a href="https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P" target="_blank">
https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P </a>

特定の画像は、次のようにアクセスします。 <a href="https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_1.png" target="_blank">
https://ipfs.io/ipfs/QmTJok2tju9zstjtAqESdZxTiUiFCBAyApHiDVj4maV75P/geo_1.png </a>

### JSONファイルの作成

別のフォルダを作成して、そこにJSONファイルを保存します。

```
geo-json
├── 0
├── 1
├── 2
```

JSONファイルの中に「name」、「description」、「image」などのトークンのメタデータを作成します。
画像のURLでは、IPFSの画像のURLを使用します。 追加のデータを加えることができます。この例では、各トークンに一意の属性を追加しました。

1つ目のトークンのJSONは、次のようになります。

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

2つ目のトークンのJSONは、次のようになります。

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

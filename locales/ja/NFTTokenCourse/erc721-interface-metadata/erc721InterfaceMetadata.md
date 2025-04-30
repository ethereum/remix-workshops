メータデータエクステンションは、オプションです。 このエクステンションでERC721トークンに、追加の情報を付加することができます。 名前(name)、シンボル(symbol)、URI(統一資源識別子)を明記することで、ファイルを指し示すことでJSONの形式でさらに追加の情報を加えることができます。

## ERC721メタデータ関数

### name

関数`name`(16行目)は、トークンコレクションの名前を返します。 トークンコレクションとは、このERC721トークンコントラクトの実装で作成されたトークンのすべてです。 このコレクションのすべてのトークンには、tokenIdに関わらず名前があります。

### symbol

関数`symbol`(21行目)は、トークンコレクションのシンボルを返します。

### tokenURI

関数`tokenURI`(26行目)は、idである`tokenId`のトークンのURIを返します。 このケースでは、コレクションすべてのURIではなく、コレクションの個々のトークンのURIです。

## ERC721メタデータJSONスキーマ

tokenURIが指し示すファイルは、<a href="https://eips.ethereum.org/EIPS/eip-721#specification" target="_blank">EIP-721</a>に明記してあるメタデータJSONスキーマに準拠している必要があります。

```
{
    "title": "Asset Metadata",
    "type": "object",
    "properties": {
        "name": {
            "type": "string",
            "description": "Identifies the asset to which this NFT represents"
        },
        "description": {
            "type": "string",
            "description": "Describes the asset to which this NFT represents"
        },
        "image": {
            "type": "string",
            "description": "A URI pointing to a resource with mime type image/* representing the asset to which this NFT represents. Consider making any images at a width between 320 and 1080 pixels and aspect ratio between 1.91:1 and 4:5 inclusive."
        }
    }
}
```

ルート要素は、オブジェクト型である必要があります。 このルートオブジェクトは、「name」、「description」、「image」をキーに持つ文字列型のプロパティが必要になります。

ERC721標準は、柔軟でtokenURIがJSONドキュメントを指し示す必要はなく、JSONがプロパティのすべてを備える必要はありません。また、追加のプロパティも、しばしば持っています。
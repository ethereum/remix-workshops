メータデータエクステンションは、オプションです。 このエクステンションでERC721トークンに、追加の情報を付加することができます。 名前(name)、シンボル(symbol)、URI(統一資源識別子)を明記することで、ファイルを指し示すことでJSONの形式でさらに追加の情報を加えることができます。

## ERC721メタデータ関数

### name

The function `name` (line 16) returns the name of the token collection. A token collection means all tokens created with your ERC721 token contract implementation. Every token in this collection will have this name, regardless of their tokenId.

### symbol

The function `symbol` (line 21) returns the symbol of the token collection.

### tokenURI

The function `tokenURI` (line 26) returns the URI for the token with the id `tokenId`. In this case it’s not the URI of the whole collection but of an individual token in the collection.

## ERC721メタデータJSONスキーマ

The file that the tokenURI points to should conform to the Metadata JSON Schema as it is specified in the <a href="https://eips.ethereum.org/EIPS/eip-721#specification" target="_blank">EIP-721</a>.

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

The root element must be of the type object. This root object should have properties with the keys: name, description, and image that should be all of the type string.

The ERC721 standard is pretty flexible, the tokenURI does not need to point to a JSON document and the JSON does not need to have all properties and often has additional properties.
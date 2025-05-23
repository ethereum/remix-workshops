元数据扩展是可选的。 它允许我们向ERC721代币添加附加信息。 元数据扩展是可选的。它允许我们向ERC721代币添加附加信息。我们可以指定名称、符号和URI（统一资源标识符），该URI可以指向一个文件，在其中以JSON格式添加更多信息。

## ERC721元数据函数

### name

函数`name`（第16行）返回代币集合的名称。代币集合是指使用您的ERC721代币合约实现的。无论其`tokenId`是什么，该集合中的每个代币都将具有此名称。 代币集合是指使用您的ERC721代币合约实现的。 无论其 tokenId 是什么，该集合中的每个代币都将具有此名称。

### symbol

函数`symbol`（第21行）返回代币集合的符号。

### tokenURI

函数`tokenURI`（第26行）返回id为`tokenId`的token的URI。在这种情况下，它不是整个集合而是集合中单个代币的URI。 在这种情况下，它不是整个集合而是集合中单个代币的URI。

## ERC721 Metadata JSON Schema

tokenURI指向的文件应符合<a href="https://eips.ethereum.org/EIPS/eip-721#specification" target="_blank">EIP-721</a>中指定的元数据JSON模式。

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

根元素必须是对象类型。 根元素必须是对象类型。该根对象应具有以下键的属性：名称、描述和图像，这些属性都应为字符串类型。

ERC721标准非常灵活，`tokenURI`不需要指向JSON文档，并且JSON不需要具有所有属性，通常还会有其他属性。
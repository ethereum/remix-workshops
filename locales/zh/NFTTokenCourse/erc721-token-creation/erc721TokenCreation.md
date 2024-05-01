在本合约中，我们使用了OpenZeppelin的ERC721代币合约实现（第4行）。

请查看他们的<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol" target="_blank">ERC721 合约</a>实现。除了符合ERC721标准规定的功能外，该合约还提供了一些额外的函数，稍后我们将会看到。 Apart from the functionality specified in the ERC721 standard, the contract provides additional functions which we will see in a bit.

## myToken

我们创建了一个名为MyToken的合约（第7行），该合约继承了我们导入的OpenZepplin ERC721代币合约实现和Ownable（第4行）。如果您不记得Ownable合约，请查看ERC20扩展部分。 If you don't remember the Ownable contract module, have a look at the ERC20 extensions section.

This ERC721 implementation makes use of the IERC721Metadata extension that is specified in the EIP. Our contract inherits the functions `name()` and `symbol()`
and has a constructor that allows their values to be set during the deployment of the contract (line 8).
In this case, we are going to use the default values. We name our token the same as the contract `"MyToken"` and make `"MTK"` its symbol.

### baseURI

With an ERC721 contract, we are able to mint various tokens, each with its own tokenId. As we saw in the IERC721Metadata interface, each token can have its own `tokenURI`, which typically points to a JSON file to store metadata like name, description, and image link.
If a contract mints multiple tokens, ERC721 implementations often use the same URI as a base (`baseURI`) for all tokens and only differentiate them by adding their unique `tokenId` at the end via concatenation. In the next part, we will see what this looks like in practice.

In this example, we are storing our data on IPFS — more on that in the next section. 在此示例中，我们将数据存储在IPFS上——关于此内容，请参见下一节。我们的baseURI是<a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/</a>（第11行）。通过连接操作，在id为0的代币tokenURI是<a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/0" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/0</a>，在id为1 的代币tokenURI是<a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/1" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/1</a>等等。
使用ERC721合约，我们能够铸造各种代币，每个代币都有自己的tokenId。正如我们在IERC721Metadata接口中看到的那样，每个代币可以拥有自己的`tokenURI`，通常指向一个JSON文件来存储元数据，例如名称、描述和图像链接。如果一个合约铸造多个代币，则ERC721实现通常使用相同的URI，只通过不同的tokenId来区分它们。在下一部分中，我们将看到这在实践中是什么样子。

当使用IPFS遇到“504网关超时”错误时，您可能需要等待并重试，直到数据可用。

### safeMint

With the safeMint function (line 14) we enable the owner to create new tokens with a dedicated token id after contract deployment.
通过safeMint函数（第14行），我们使所有者能够在合约部署后使用专用代币ID创建新的代币。safeMint函数是OpenZeppelin ERC721实现的一部分，它让我们安全地将`tokenId`的ID代币铸造到地址为`to`的账户中。对于访问控制，我们使用了导入的Ownable访问控制合约模块中的onlyOwner修饰符（第5行）。 For access control, we use the `onlyOwner` modifier from the Ownable access control contract module that we imported (line 5).

在下一节中，我们将看到如何为NFT创建和托管元数据。

## ⭐️ 作业

1. 将您的合约名称更改为`Geometry`。
2. 将您的代币名称更改为`Geometry`。
3. 将您代币符号更改为`GEO`。
4. 将`_baseURI`更改为<a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/" target="_blank">https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/</a>。

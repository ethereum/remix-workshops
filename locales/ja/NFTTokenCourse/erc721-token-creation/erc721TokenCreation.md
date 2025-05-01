このコントラクトでは、OpenZeppelin(4行目)によって実装されたERC721トークンコントラクトを使用します。

<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol" target="_blank">ERC721コントラクト</a>の実行を見てみましょう。 ERC721標準に規定されている機能とは別に、このコントラクトでは、後ほど使う追加の機能も提供しています。

## myToken

MyToken(7行目)という独自のコントラクトを作成し、OpenZepplinの`ERC721`トークンコントラクト実装から機能を継承します(7行目)。そして、`Ownable`をインポートします(4行目)。 Ownableモジュールについて知らない場合は、ERC20のエクステンションセクションでご確認ください。

This ERC721 implementation makes use of the IERC721Metadata extension that is specified in the EIP. Our contract inherits the functions `name()` and `symbol()`
and has a constructor that allows their values to be set during the deployment of the contract (line 8).
In this case, we are going to use the default values. We name our token the same as the contract `"MyToken"` and make `"MTK"` its symbol.

### Base URI

With an ERC721 contract, we are able to mint various tokens, each with its own tokenId. As we saw in the IERC721Metadata interface, each token can have its own `tokenURI`, which typically points to a JSON file to store metadata like name, description, and image link.
If a contract mints multiple tokens, ERC721 implementations often use the same URI as a base (`baseURI`) for all tokens and only differentiate them by adding their unique `tokenId` at the end via concatenation. In the next part, we will see what this looks like in practice.

In this example, we are storing our data on IPFS — more on that in the next section. Our baseURI is <a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/</a> (line 11).
Through concatenation the tokenURI for the token with the id 0 would be <a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/0" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/0</a> , the tokenURI for the token with the id 1 would be <a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/1" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/1</a>, and so on.

When using IPFS and you run into "504 Gateway Time-out" errors, you might have to wait and retry until the data is available.

### safeMint

With the safeMint function (line 14) we enable the owner to create new tokens with a dedicated token id after contract deployment.
The safeMint function is part of the ERC721 implementation of OpenZeppelin and lets us safely mint a token with the id `tokenId` to the account with the address `to`. For access control, we use the `onlyOwner` modifier from the Ownable access control contract module that we imported (line 5).

In the next section, we will see how we can create and host the metadata for our NFTs.

## ⭐️ 演習

1. コントラクトを`Geometry`という名前に変更してみましょう。
2. トークンを`Geometry`とう名前に変更してみましょう。
3. トークンのシンボルを`GEO`に変更してみましょう。
4. `_baseURI`を<a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/" target="_blank">https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/</a>に変更してみましょう。

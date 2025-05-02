このコントラクトでは、OpenZeppelin(4行目)によって実装されたERC721トークンコントラクトを使用します。

<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol" target="_blank">ERC721コントラクト</a>の実行を見てみましょう。 ERC721標準に規定されている機能とは別に、このコントラクトでは、後ほど使う追加の機能も提供しています。

## myToken

MyToken(7行目)という独自のコントラクトを作成し、OpenZepplinの`ERC721`トークンコントラクト実装から機能を継承します(7行目)。そして、`Ownable`をインポートします(4行目)。 Ownableモジュールについて知らない場合は、ERC20のエクステンションセクションでご確認ください。

ERC721実装では、EIPで規定されているIERC721Metadataエクステンションを使用しています。 このコントラクトでは、関数 `name()`と`symbol()`が継承し、コントラクトのデプロイ中にコンストラクタが値を設定します(8行目)。
このケースでは、デフォルト値を使用します。 コントラクト`"MyToken"`と同じようにトークンに名前を付け、`"MTK"`とうシンボルで作ります。

### Base URI

ERC721コントラクトでは、さまざまなトークンをミントすることが出来、各トークンはtokenIdを持ちます。 IERC721Metadataインターフェースで確認したように、各トークンは自身の`tokenURI`を持っており、基本的にはJSONファイルを指し示し、そこに「name」、「description」、「imageのリンク」などのメタデータを格納します。
コントラクトが複数のトークンをミントする場合、ERC721実装では、よく同じベースURI(`baseURI`)をトークンのすべてで使用します。それの末尾に一意の`tokenId`を連結することで区別します。 次のパートで、これが実際にどのようになっているかを学びます。

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

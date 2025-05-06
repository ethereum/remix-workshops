このコントラクトでは、OpenZeppelin(4行目)によって実装されたERC721トークンコントラクトを使用します。

<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol" target="_blank">ERC721コントラクト</a>の実行を見てみましょう。 ERC721標準に規定されている機能とは別に、このコントラクトでは、後ほど使う追加の機能も提供しています。

## myToken

MyToken(7行目)という独自のコントラクトを作成し、OpenZepplinの`ERC721`トークンコントラクト実装から機能を継承します(7行目)。そして、`Ownable`をインポートします(4行目)。 Ownableモジュールについて知らない場合は、ERC20のエクステンションセクションでご確認ください。

ERC721実装では、EIPで規定されているIERC721Metadataエクステンションを使用しています。 このコントラクトでは、関数 `name()`と`symbol()`が継承し、コントラクトのデプロイ中にコンストラクタが値を設定します(8行目)。
このケースでは、デフォルト値を使用します。 コントラクト`"MyToken"`と同じようにトークンに名前を付け、`"MTK"`とうシンボルで作ります。

### Base URI

ERC721コントラクトでは、さまざまなトークンをミントすることができ、各トークンはtokenIdを持ちます。 IERC721Metadataインターフェースで確認したように、各トークンは自身の`tokenURI`を持っており、基本的にはJSONファイルを指し示し、そこに「name」、「description」、「imageのリンク」などのメタデータを格納します。
コントラクトが複数のトークンをミントする場合、ERC721実装では、よく同じベースURI(`baseURI`)をすべてのトークンで使い、それの末尾に一意の`tokenId`を連結することで区別します。 次のパートで、これが実際にどのようになっているかを学びます。

この例では、私たちのNFTのデータをIPFSに保存しています。詳細は次のセクションで説明します。 このbaseURIは、「<a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/</a>」(11行目)です。
トークンのid「0」とtokenURIを連結させると「<a href="https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/0" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/0</a>」 となります。トークンのid「1」とtokenURIを連結させると同様に「ZJmCesuu3xKy/1" target="_blank">https://ipfs.io/ipfs/QmUYLUKwqX6CaZxeiYGwmAYeEkeTsV4cHNZJmCesuu3xKy/1</a>」になります。

IPFSの使用時に「504 Gateway Time-out」エラーが発生した場合、データが利用可能になるまで待ち、再度リトライする必要があります。

### safeMint

safeMint関数(14行目)では、所有者が新しいトークンを専用のトークンIDで作成する前にコントラクトをデプロイします。
safeMint関数は、OpenZepellingのERC721実装の一部で、安全にidである`tokenId`でアドレス`to`のアカウントでトークンをミントします。 アクセスコントロールで`onlyOwner` modifierを使用しています。これは、インポートしたOwnableアクセスコントロール・コントラクト・モジュール(5行目)です。

次のセクションでは、このNFTのメタデータを作成してホストする方法を学びます。

## ⭐️ 演習

1. コントラクトを`Geometry`という名前に変更してみましょう。
2. トークンを`Geometry`とう名前に変更してみましょう。
3. トークンのシンボルを`GEO`に変更してみましょう。
4. `_baseURI`を<a href="https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/" target="_blank">https://ipfs.io/ipfs/QmVrsYxXh5PzTfkKZr1MfUN6PotJj8VQkGQ3kGyBNVKtqp/</a>に変更してみましょう。

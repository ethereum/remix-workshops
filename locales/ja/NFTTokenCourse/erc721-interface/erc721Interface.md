ERC721は、非代替トークン(NFT)をイーサリアムブロックチェーンで管理するトークンコントラクトの標準です。

おのおのの非代替トークンは、一意で交換することができません。 NFTは、異なるプロパティ、動作、権利を持ちます。 非代替トークンは、一意なデジタル資産および物理資産(例: アート、コレクティブル、不動産)の所有権を表します。

ERC721トークン標準についてより詳しく知りたい場合は、<a href="https://eips.ethereum.org/EIPS/eip-721" target="_blank">イーサリアム改善提案</a>の仕様をご覧ください。

## インターフェース

ERC721標準は、ERC20標準よりも複雑で、オプションの拡張機能を備えています。 ERC721に準拠したコントラクトは、最低でも、ERC721インターフェースおよびERC165インターフェースを実装している必要があります。このセクションでは、これらのインターフェースを学びます。

このインターフェース(11行目)は、<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/IERC721.sol" target="_blank">OpenZeppelin</a>が提供しているオークションコントラクトライブラリの一部です。

## 基本的なIERC721関数

ERC721標準に準拠したコントラクトは、次の関数を実装する必要があります。

### balanceOf

関数`balanceOf`(30行目)は、アドレス`owner`アカウントによって所有されているトークンの量を返します。

### ownerOf

関数`ownerOf`(39行目)は、idである`tokenId`のトークンを保有しているアカウントであるアドレス`owner`を返します。

### safeTransferFrom

関数`safeTransferFrom`(55行目)は、idである`tokenId`のトークンの所有権をアドレス`from`のアカウントから、アドレス`to`のアカウントへ送信します。

関数`safeTransferFrom`(137行目)は、関数`safeTransferFrom`(55行目)とほぼ同一ですが、1つ違う部分があります。それは、ペイロード`data`が必要な点です。

スマートコントラクトでは、送信されてきたNFTを受け取るのにERC721TokenReceiveインターフェースを実装する必要があります。 これによって、コントラクトがERC721トークンを送信できるようになり、送信できないトークンがロックされてしまうことを防ぎます。

### transferFrom

関数transferFrom`(75行目)は、idである`tokenId`のトークンの所有権をアドレス`from`のアカウントから、アドレス`to\`のアカウントへ送信します。

**可能な限りtransferFromではなく、safeTransferFromを使うことを推奨します。** `transferFrom`関数は、安全ではありません。理由は、スマートコントラクトがtransferの受け取り先の場合、ERC721TokenReceiverインターフェースが実装されており、ERC721トークンを扱えるかどうかを確認しないためです。

## 高度なIERC721関数

### approve

関数`approve`(94行目)は、所有しているアカウントが関数を呼び出すことに代わって、アカウントのアドレス`to`に対して、そのidである`tokenId`のトークンを管理する権限を与えます。

### getApproved

関数`getApproved`(103行目)では、アカウントのアドレスを返します(値`operator`を返却)。このアカウントは、idである`tokenId`のトークンを管理すること許可されたアカウントです。

### setApprovalForAll

関数`setApprovalForAll`(115行目)は、指定されたアドレス(入力パラメータ「`operator`」)のアカウントに、関数を呼び出すアカウントのトークンのすべてを管理する権限を設定します。

### isApprovedForAll

関数`getApproved`(103行目)は、アドレス`operator`のアカウントがアドレス`owner`のトークンのすべてを管理することを許可かされている場合にブール値「true」を返します。

## IERC721 Events

ERC721コントラクトは、次のイベントを発行する必要があります。

### Transfer

`Transfer`イベント(15行目)は、idである`tokenId`がアドレス`from`のアカウントからアドレス`to`のアカウントへ送信された場合に発行される必要があります。

### Approval

`Approval`イベント(20行目)は、アドレス`owner`のアカウントがアドレス`spender`のアドレスに対して、idである`tokenId`を持つトークンを代わりに管理することを許可した場合に発行する必要があります。

### ApprovalForAll

`ApprovalForAll`イベント(25行目)は、アドレス`owner`のアカウントがアドレス`operator`にトークンのすべてを管理する権限(`_approved`)を与えたり削除した場合に発行する必要があります。

## IERC165

RC721に準拠したコントラクトは、ERC721インターフェースに加え、EERC165インターフェースも実装する必要があります。

ERC165インターフェースの実装によりコントラクトは、特定のインターフェースのサポートしていることを宣言することができます。 そして、別のコントラクトとやり取りする必要のあるコントラクトは、トランザクションを作成する前に、別のコントラクトがこのインターフェースをサポートしているかをクエリーすることができます(例: トークンの送信をサポートしていないなど)。

IERC721インターフェースは、ここ(6行目)でインポートされ、IERC165インターフェースから継承(11行目)されています。

ERC165インターフェースの<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/introspection/IERC165.sol" target="_blank">OpenZeppelinsの実装</a>は、次のようになっています。

```
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
```

例えば、ERC721インターフェースのERC165の識別子は、EIP721では「0x80ac58cd」として指定されています。 インターフェースの識別子の計算方法や、ERC165についてより詳細に知りたい場合は、 <a href="https://eips.ethereum.org/EIPS/eip-165" target="_blank">改善提案</a>をご覧ください。

## 他のインターフェース

<a href="https://eips.ethereum.org/EIPS/eip-721#specification" target="_blank">IERC721TokenReceiver</a>インターフェースは、安全な送信で受け入れる場合に必要になります。

EIP721に明記されているERC721コントラクトには、次の2つのオプションのエクステンションがあります。

IERC721Enumerableは、コントラクトが全トークンの一覧を発行し、発見可能にします。

IERC721Metadataは、コントラクトにトークンに追加の情報を関連付けること可能にします。 次のセクションでは、このことについて詳しく学習します。

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

The function `setApprovalForAll` (line 115) sets the permission (`_approved`) for the account with the specified address (input param - `operator`) to manage all tokens of the account calling the function.

### isApprovedForAll

The function `getApproved` (line 103) returns the boolean true if the account with the address `operator` is approved to manage all tokens of the account with the address `owner`.

## IERC721 Events

ERC721 contracts must also emit the following events:

### Transfer

The `Transfer` event (line 15) must be emitted when the token with the id `tokenId` is transferred from the account with the address `from` to the account with the address  `to`.

### Approval

The `Approval` event (line 20) must be emitted when the account with the address `owner` approves the account with the address `spender` to manage the token with the id `tokenId` on its behalf.

### ApprovalForAll

The `ApprovalForAll` event (line 25) must be emitted when the account with the address `owner` gives or removes the permission (`_approved`) of the account with the address `operator` to manage all its tokens.

## IERC165

In addition to the ERC721 interface, ERC721 compliant contracts must also implement the ERC165 interface.

With the implementation of the ERC165 interface, contracts can declare the support of specific interfaces. A contract that wants to interact with another contract can then query if the other contract supports this interface before making a transaction e.g. sending tokens to it that they might not support.

Our IERC721 interface here imports (line 6) and inherits (line 11) from the IERC165 interface.

This is how <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/introspection/IERC165.sol" target="_blank">OpenZeppelins implementation</a> of the ERC165 interface looks like:

```
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
```

For example, the ERC165 identifier for the ERC721 interface as specified in the EIP721 is “0x80ac58cd”. Learn how to calculate an interface identifier and more about the ERC165 in its <a href="https://eips.ethereum.org/EIPS/eip-165" target="_blank">improvement proposal</a>.

## 他のインターフェース

The <a href="https://eips.ethereum.org/EIPS/eip-721#specification" target="_blank">IERC721TokenReceiver</a> interface must be implemented to accept safe transfers.

There are two optional extensions for ERC721 contracts specified in the EIP721:

IERC721Enumerable enables a contract to publish its full list of tokens and make them discoverable.

IERC721Metadata enables a contract to associate additional information to a token. We will have a more detailed look into this in the next section.

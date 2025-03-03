本コースのこのセクションでは、ブロックチェーンベースのトークンの理論的な紹介を行います。

ブロックチェーントークンは、ブロックチェーン技術によってもたらされた新しい技術要素(インターネットにおけるウェブサイトのようなもの)で、分散型かつ所有できるインターネット(web3)を可能にします。

### はじめに

we3のコンテキストでは、トークンは所有権を表します。 トークンは、あらゆるものの所有権を表します。例えば、アート、評判、ビデオゲームのアイテム、会社の株、投票権、通貨などの所有権です。

ブロックチェーン技術の革新的なイノベーションにより、イミュータブル(不変)な方法で、公にデータを保存することができるようになりました。
この新しいデータストレージは、所有権を追跡し、真に所有可能なデジタルアイテムをはじめて可能にしました。

ブロックチェーン技術は、もともとBitcoin、分散型デジタル通貨、代替可能トークンの所有権を追跡するために開発されました。

### 代替トークンと非代替トークン

お金のような資産、例えばBitcoinや１ドル札などは代替可能です。 代替可能という言葉が意味するのは、すべての資産は同一で交換可能であることです。 アート、コレクティブル、家のような資産は、非代替可能です。これらは、すべて個別であり交換可能ではありません。

トークンを2つのタイプに分けることができます。代替トークンは、すべてのトークンが同一であり、非代替トークン(NFT)は、すべてのトークンが一意になっています。

### トークン標準

トークンの動作は、スマートコントラクト(トークンコントラクト)に記述されています。 このコントラクトは、例えば、トークンを送信する機能、総供給量を確認する機能を含んでいます。

誰もが独自の動作と命名規則を持つ自身のトークンコントラクトを作成することができます。人々がお互いにやり取りするコントラクトやアプリケーションをビルドするのは、非常に困難な作業となります。

そのため、イーサリアムコミュニティは、トークン標準を開発しました。これは、デベロッパーがトークンを作成し、他のコントラクト、プロダクト、サービスと相互運用可能(連携可能)なトークンを作成する方法を定義しています。 コントラクトは、標準の下で開発され、いくつかの関数やイベントのセットを含める必要があります。

最も人気のあるトークン標準は、代替トークンであるERC20と非代替トークンであるERC721です。 このコースでは、ERC20トークン標準を作成し、やり取りする方法を次のセクションから学びます。

NFTとERC721トークン標準について詳しく知りたい場合は、LearnethのNFTコースをご覧ください。

ERC777は、代替トークン標準で、ERC20に似ていますが、ERC20と下位互換性を持ちつつ、より先進的な機能を持っています。例えば、フックなどの機能があります。 ERC777について詳しく知りたい場合は、<a href="https://eips.ethereum.org/EIPS/eip-777" target="_blank">EIP (イーサリアム改善提案)</a>のERC777をご覧ください。

ERC1155は、マルチトークン標準です。単一のコントラクトで代替トークン、非代替トークン、半代替トークンなど様々なタイプのトークンを管理することができます。
ERC1155について詳しく知りたい場合は、こちらの<a href="https://eips.ethereum.org/EIPS/eip-1155" target="_blank">EIP</a>をご覧ください。

## ⭐️ 演習

For this assignment, we will test your knowledge via a short quiz.
Assign the number of the best answer to the variables `question1` (line 5),
`question2` (line 6), `question3` (line 7) in the `Quiz` contract (line 4).

### 問題1:

Why are blockchain based tokens so revolutionary?

1. Because people can now make investments anonymously.
2. Because they represent ownership in digital assets that can be owned and transferred.
3. Because you can use tokens to make transactions without having to pay taxes.

### 問題2:

Why did the community create token standards?

1. So that the community can control and approve the tokens that are created.
2. In order to restrict the functionality of tokens to safe and non-malicious actions.
3. So that the community can create tokens that are interoperable with other contracts, products, and services.

### 問題3:

If you would create a decentralised application for a baseball trading card game where each baseball player would be represented by a token, what token standard would you use to write the token contract?

1. ERC20
2. ERC721
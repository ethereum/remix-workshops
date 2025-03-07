このセクションでは、マルチシグ・スマートコントラクトの**初期化プロセス**に学びます。 コンストラクタ関数を学び、コントラクトを初期状態にするセットアップ方法を確認します。

## 注意

このチュートリアルのセクションから、マルチシグコントラクトの構築が始まります。 セクションを進めるにつれて、コントラクトが完成されていきます。

## 概要

このセクションでは、このコントラクトが、イベント、状態変数、modifier、関数で構成されていることを学びます。 **イベント**は、ブロックチェーンの特定のアクティビティをロギングすることで透明性を提供します。一方で、**modifier**は、認証されたユーザーのみが特定の関数を実行できるようにします。

## 状態変数

4行目では、MultisigWalletコントラクト自体が書かれています。 コントラクトの最初に3つの状態変数があります。

1. **`owners`:** マルチシグネシャ・ウォレットのすべての所有者のアドレスを持つ配列です(5行目)。
2. **`isOwner`:** アドレスが所有者かどうかを示すマッピングです(6行目)。
3. **`numConfirmationsRequired`:** トランザクションで必要になる承認数です(7行目)。

配列とマッピングをセットアップすることで、所有者のリストを簡単に取得でき、アドレスが所有者かどうか確認することができます。

## Modifier

次に、`onlyOwner`というmodifierがあります(9行目)。 Solidityにおいてmodifierは、特別なキーワードで関数の動作を修正するのに使われます。 この場合、`onlyOwner` modifierは、所有者のみが関数の実行ができることを保証します。 **呼び出している**アドレスが所有者かどうか確認することを行っています。

## コンストラクタ関数

`constructor`関数(14行目)では、コントラクトのデプロイ中に一回だけ実行されます。 このケースでは、所有者のリスト、必須パラメータ、必要な承認数の初期化を行っています。

15行目と16行目では、2つの`require`文があり入力が有効であることを確認しています。 このケースでは、少なくとも一人以上の所有者、承認が少なくともゼロより大きく、所有者の数以下であることが必要になります。

次に、address(0)でないことを検証(25行目)、所有者が一意であることの検証(26行目)することでコンストラクトの状態を初期化しています。  Then it adds a key/ value pair to the isOwner mapping (Line 28), and then it populates the `owners` array with the provided owner addresses (Line 29).

Finally, it sets the `numConfirmationsRequired` variable with the specified value (Line 32).

## getOwners関数

The `getOwners` function (Line 36) allows users to retrieve the list of owners of the multi-signature wallet. It returns the `owners` array (Line 37).

## getNumConfirmationsRequired関数

The `getNumConfirmationsRequired` function (Line 41) allows users to retrieve the number of confirmations required for a transaction. It returns the `numConfirmationsRequired` variable (Line 42).

## まとめ

In this section, we explored the initialization process of the Multisig smart contract. We examined the constructor function and understood how it sets up the initial state of the contract.

## ⭐️ 演習: マルチシグ・ウォレットのデプロイ

Deploy a Multisig contract with three owners and require two confirmations for transaction execution.

1. Compile contractInitialization.sol
2. Go to Deploy & Run Transactions in Remix.
3. Expand the "Deploy" section.
4. Under "_OWNERS", enter three an array of three addresses.
5. Under "_NUM_CONFIRMATIONS_REQUIRED", enter the number of confirmations required for a transaction.

**Hints:**

- You can get addresses from the "ACCOUNTS" dropdown menu.
- The array of addresses should be in the format: ["0x123...", "0x456...", "0x789..."].
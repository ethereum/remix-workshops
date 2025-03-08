このセクションでは、マルチシグ・スマートコントラクトの**初期化プロセス**を学びます。 コンストラクタ関数を通して、コントラクトがどのように初期状態にセットアップされるか確認します。

## 注意

チュートリアルのこのセクションから、マルチシグコントラクトの構築が始まります。 セクションを進めるにつれて、コントラクトが完成されていきます。

## 概要

このセクションでは、コントラクトが、イベント、状態変数、modifier、関数で構成されていることを学びます。 **イベント**は、ブロックチェーンの特定のアクティビティをロギングすることで透明性を提供します。一方で、**modifier**は、認証されたユーザーのみが特定の関数を実行できるようにします。

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

次に、address(0)でないことを検証(25行目)、所有者が一意であることの検証(26行目)することでコンストラクトの状態を初期化しています。  その後、キー/バリューのペアをisOwnerマッピングに追加します(28行目)。また、`owners`配列に、指定された所有者のアドレスを追加しています(29行目)。

最後に、`numConfirmationsRequired`変数を特定の値に設定します(32行目)。

## getOwners関数

ユーザーは、`getOwners`関数(36行目)でマルチシグネチャ・ウォレットの所有者のリストを取得できます。 この関数は、`owners`配列を返します(37行目)。

## getNumConfirmationsRequired関数

ユーザーは、 `getNumConfirmationsRequired`関数(41行目)でトランザクションに必要な承認数を取得することができます。  この関数は、 `numConfirmationsRequired` 変数を返します(42行目)。

## まとめ

このセクションでは、マルチシグ・スマートコントラクトの初期化プロセスについて学びました。 コンストラクタ関数を調査して、どのように初期状態にコントラクトがセットアップされるかを理解しました。

## ⭐️ 演習: マルチシグ・ウォレットのデプロイ

Deploy a Multisig contract with three owners and require two confirmations for transaction execution.

1. Compile contractInitialization.sol
2. Go to Deploy & Run Transactions in Remix.
3. Expand the "Deploy" section.
4. Under "_OWNERS", enter three an array of three addresses.
5. Under "_NUM_CONFIRMATIONS_REQUIRED", enter the number of confirmations required for a transaction.

**ヒント:**

- You can get addresses from the "ACCOUNTS" dropdown menu.
- The array of addresses should be in the format: ["0x123...", "0x456...", "0x789..."].
このセクションでは、トランザクションの送信と承認プロセスについて説明します。

## Modifier

コントラクトに新しいmodifierがいくつか加わりました。 1つ1つ確認していきましょう。

1. **`txExists` modifier:** (13行目) トランザクションが存在することを確実にします。 これは、トランザクションのインデックスが`transactions`配列の長さよりも小さいかどうかを確認しています。 このセクションのmodifierについては、後ほど詳しく取り上げます。
2. **`notExecuted` modifier:** (18行目) トランザクションが実行されていないことを確実にします。 これは、トランザクションの`executed`変数がfalseであることを確認しています。
3. **`notConfirmed` modifier:** (23行目) 呼び出すアカウントによってトランザクションが承認されていないことを確実にします。 これにより、トランザクションインデックスのマッピング`isConfirmed`で呼び出し元のアドレスがfalseかどうかを確認しています。

## トランザクション構造体

28行目に、`Transaction`という構造体があります。 構造体のメンバーとして、`to`、`value`、`data`、`executed`、`numConfirmations`という変数がそれぞれ格納されます。

## 承認のマッピング

37行目では、`isConfirmed`というマッピングがあります。 このマッピングは、各トランザクションの承認を追跡するのに使われます。 これは、所有者のアドレスのトランザクションのインデックスをブール値にマッピングしています。 このブール値は、所有者がトランザクションに承認しているかを示しています。

## トランザクション配列

39行目には、`transactions`という配列があります。 この配列は、マルチシグネチャ・ウォレットに送信されたすべてのトランザクションを格納するのに使われます。

## イベント

このコントラクトのイテレーションでは、4つの新しいイベントが加わりました。

1. **`SubmitTransaction` event:** マルチシグネシャ・ウォレットにトランザクションが送信されるたびに発行されます。
2. **`ConfirmTransaction` event:** 所有者によってトランザクションが承認されるたびに発行されます。
3. **`RevokeConfirmation` event:** 所有者によって承認が取り消されるたびに発行されます。
4. **`ExecuteTransaction` event:** トランザクションが実行されるたびに発行されます。

## submitTransaction関数

`submitTransaction`関数(78行目)は、ユーザーがマルチシグ・ウォレットにトランザクションを送信することを可能にします。 この関数は、3つのパラメータ `to`、`value`、`data`を取ります。  `to`パラメータは、トランザクションの受信者のアドレスです。 `value`パラメータは、送信されるEtherの量です。 `data`パラメータは、受信者に送信されるデータです。 所有者のみがトランザクションを送信できます。

85行目では、新しいトランザクション構造体を作成し、`transactions`配列にプッシュしています。そして、`SubmitTransaction`イベントを発行しています。 `txIndex`変数は、トランザクションインデックスを追跡するのに使われます。

## confirmTransaction関数

`confirmTransaction`関数(98行目)は、ユーザーがトランザクションを承認することができます。 この関数は、パラメータ「`txIndex`」を取ります。
また、3つのmodifier「`onlyOwner`」、「`txExists`」、「 `notExecuted`」があります。 `onlyOwner` modifierによって、所有者のみがトランザクションを承認できることを確実にしています。 `txExists` modifierにより、トランザクションが存在することを確実にしています。 `notExecuted` modifierにより、トランザクションが実行されていないことを確実にしています。

101行目で、`transaction`というローカル変数にトランザクションを格納しています。 そして、トランザクションの`numConfirmations`変数をインクリメントしてから、トランザクションインデックスの `isConfirmed`マッピングで、呼び出しているアドレスにtrueを設定します。 Finally, we emit the `ConfirmTransaction` event.

## executeTransaction関数

The `executeTransaction` function (Line 108) allows users to execute a transaction. On line 113, we require that the number of confirmations of the transaction is greater than or equal to the required number of confirmations. We then set the `executed` variable of the transaction to true. Finally, send the funds using the `call` function.  This is the `call` of the recipient address with the value and data of the transaction. If the transaction is successful, we emit the `ExecuteTransaction` event.

## getTransactionCount関数

The `getTransactionCount` function (Line 132) allows users to retrieve the number of transactions in the multi-signature wallet. It returns the length of the `transactions` array.

## getTransaction関数

The `getTransaction` function (Line 136) allows users to retrieve a transaction. It returns the transaction struct members that we explored earlier in this section.

## まとめ

In this section, we explored the process of submitting, confirming, and executing transactions. We examined the `submitTransaction`, `confirmTransaction`, and `executeTransaction` functions and understood how they work together to allow multiple users to submit and confirm transactions.

## ⭐️ 演習: トランザクションの作成

Submit, confirm, and execute a transaction to send 2 Ether to the first account in the "ACCOUNTS" dropdown menu.

1. Deploy the Multisig contract as in the previous assignment. Make sure that the required number of confirmations is 2.
2. Fund the multisig from any address by sending 4 Ether as you did in the previous assignment.
3. Try sending 2 Ether to the first account in the "ACCOUNTS" dropdown menu.  Once you have submitted this transaction (with submitTransaction), click on `getTransactionCount` and should see one transaction or you can click on `getTransaction`, insert 0 as the transaction index and see the transaction you just submitted.
4. Now you can click on `confirmTransaction` and insert 0 as the transaction index. If you click on `getTransaction` again, you should see that the transaction has been confirmed once.
5. Switch to the second owner account and confirm the transaction again. If you click on `getTransaction` again, you should see that the transaction has been confirmed twice.
6. The last step is to execute the transaction. Click on `executeTransaction` and insert 0 as the transaction index. If you click on `getTransaction` again, you should see that the transaction has been executed. You can also check the balance of the first account in the "ACCOUNTS" dropdown menu. It should now be 2 Ether higher and the balance of the multi-signature wallet should be 2 Ether lower.

**Hint:**
If you submit a transaction make sure that the value is in Wei and that the _data field is correctly filled in. E.g. it could look like this: "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 2000000000000000000, 0x" for 2 Ether.
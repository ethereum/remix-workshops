このセクションでは、承認の取り消しプロセスについて取り組みます。 このプロセスは、該当のトランザクションについて所有者の考えに変更があり、実行されるのを止めたい時に必要になります。 このセクションは、非常にシンプルです。

## revokeConfirmationイベント

14行目では、`RevokeConfirmation`イベントを追加しています。 このイベントは、所有者によってトランザクションが取り消された場合に発行されます。

## revokeConfirmation関数

129行目では、`revokeConfirmation`関数を加えています。 この関数は、ユーザーがトランザクションの承認を取り消すことができます。

`revokeConfirmation`は、パラメーターで`txIndex`を取ります。 また、この関数は、3つのmodifierで`onlyOwner`、`txExists`、`notExecuted`があります。

134行目では、呼び出すアカウントによってトランザクションが承認されていることを要求しています。 これにより、トランザクションを承認した所有者のみが自身の承認を取り消せるようにしています。
We then decrement the `numConfirmations` variable of the transaction and set the `isConfirmed` mapping of the transaction index and the caller's address to false. Finally, we emit the `RevokeConfirmation` event.

## まとめ

このセクションでは、承認の取り消しプロセスについて取り組みました。 `revokeConfirmation`関数を調査して、この関数でユーザーが承認を取り消せる仕組みを理解しました。

## ⭐️ 課題: 承認の取り消し

「ACCOUNTS」ドロップダウンメニュー内の最初のアカウントに2 Etherを送信するトランザクションの承認と取り消しをしてみましょう。

1. 前の課題と同様に、マルチシグ・コントラクトをデプロイシ、コントラクトにいくらかのEtherを送信します。それから、「ACCOUNTS」ドロップダウンメニュー内の最初のアカウントに2 Etherの値をもつトランザクションを送信します。
2. 前の課題と同様に、2回トランザクションを承認します。
3. `revokeConfirmation`をクリックし、トランザクションインデックスには0を入力してトランザクションを取り消します。 `getTransaction`を再度クリックし、トランザクションが一度承認されたことを確認してください。

## 最後に

このチュートリアルでは、マルチシグネシャ・ウォレットを作成するプロセスに取り組みました。 コントラクトの初期化方法、Etherの入金、トランザクションの送信・承認・取り消しなどを学びました。 また、マルチシグネシャ・ウォレットでのトランザクションの実行方法、情報の取得方法についても学びました。
このセクションでは、Etherの送信および受信をする方法について学びます。

### Etherの送信

Etherを送信するのには、 `transfer()`、`send()`、`call()`の異なる3つの方法があります。

#### **transfer**

`<address payable>.transfer(uint256 amount)`

- `transfer()`は、失敗時に例外をスローします。
- 固定で決められた2300ガスを転送します。

`SendEther`コントラクトに`transfer()`の例があります(35行目)。
**`Transfer()`を使用することは推奨されていません。**

#### **send**

`<address payable>.send(uint256 amount) returns (bool)`

- `send()`は失敗時にfalseを返します。
- 固定で決められた2300ガスを転送します。

`SendEther`コントラクトに`send()`の例があります(41行目)。
**`send()`を使用することは推奨されていません。**

#### **call**

`<address>.call(bytes memory) returns (bool, bytes memory)`

- `call()`は失敗時にfalseを返します。
- 最大量のガスを転送するものの、調整可能です。

`SendEther`コントラクトに`call()`の例があります(48行目)。
現在、Etherの送信に`Call()`を使用することが推奨されています。

`transfer()`と`send()`が導入された理由としては、転送されるガスを2300までにすることで_リエントランシー_攻撃を防ぐためです。これで、ストレージを変更する再入呼び出しに対して不十分にすることができます。

前のセクションで説明したように、イーサリアム上での各オペレーションには、それに関連する特定のコストがかかります。 特定のオペレーションには、よりコストが掛かり、それに関するガス代についても跳ね上がります。 変更されるオペレーションのガス代は、transfer()やsend()のようなハードコートされたガス量を使うのに適していません。

それがEtherの送信には、`transfer()`の代わりに`call()`を使うことが推奨されている理由です。

このテーマについて詳しく学びたい場合は、<a href="https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/" target="_blank">Consensysのブログ記事</a>をご覧ください。

### リエントランシー攻撃

_リエントランシー攻撃_は、関数が信頼されていないコントラクトへ外部呼び出しを行い、攻撃者がそのコントラクトを使って元の関数が実行を終える前に再帰コールバックをします。 この方法で攻撃者は、資金を抜き出したり、データを予期しない方法で操作したりすることができます。

_リエントランシー攻撃_を防ぐには、外部コントラクトを呼び出す前に状態のすべてを変更をする必要があります。 これは、 <a href="https://docs.soliditylang.org/en/latest/security-considerations.html#re-entrancy" target="_blank">Checks-Effects-Interactions</a>パターンと呼ばれています。

リエントランシーを防ぐもう一つの方法としては、_Reentrancy Guard_を使用することです。これで、そのような呼び出しを拒否することができます。 この例は、このコントラクトのmodifierセクションにあります。また、<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/ReentrancyGuard.sol" target="_blank">Open Zepplin</a>に、よりガス効率の良いバージョンがあります。

### Etherの受け取り

関数が呼び出されることなくEtherを受け取れるようにするには、`receive`関数(22行目)や`fallback`関数(25行目)を作成する必要があります。そうしないと、Etherは拒否され、コントラクトは例外をスローします。

`receive`関数は、空のcalldataで呼び出されると実行されます(例えば、send()やtransfer()による簡単なEtherの送信)。一方、fallback関数は、calldataを伴う呼び出しで実行されます。 receive関数が無く、fallback関数がある場合、空のcalldataの呼び出しでもfallback関数が使われます。

### payable関数修飾子

`payable`関数修飾子は、関数がEtherを受け取ることを許可します。

`receive`関数は、`payable`が必要です(22行目)。 `payable`修飾子を削除すると、コンパイラでエラーが発生します。 `fallback`関数から`payable`修飾子を削除してコンパイルすると、Etherを受け取ることが出来なくなります(25行目)。
関数 `sendViaTransfer`、`sendViaSend`、`sendViaCall`(33行目、38行目、45行目)がEtherを受け取るには、`payable`が必要になります。

### Payable address

Solidityでは、アドレス型でaddressとaddress payableを異なるものとして区別しています。

`address`は、20バイトの値を保持します。
`address payable`は、20バイトの値を保持し、メンバーであるtransferやsendを通してEtherを受け取ることができます。

関数`sendViaTransfer`や`sendViaSend`のパラメータの型を`payable address`から`address`に変えた場合は、`transfer()`(35行目)や`send()`(41行目)が使用不可になります。

<a href="https://www.youtube.com/watch?v=_5vGaqgzlG8" target="_blank">Etherの送信に関するビデオチュートリアルをご覧ください</a>。

## ⭐️ 演習

charityコントラクトを作成し、beneficiary(受益者)がEtherを引き出すことで受け取れるようにしてみましょう。

1. `Charity`というコントラクトを作成します。
2. address型の`owner`というpublicの状態変数を加えます。
3. publicかつpayableでパラメータや関数のコードを持たないdonate関数を作成します。
4. publicでコントラクトの残高すべてを`owner`アドレスに送信するwithdraw関数を作成します。

ヒント: コントラクトのテストでは、あるアカウントでコントラクトをデプロイして、別のアカウントからEtherをそのコントラクトに送信します。 そして、withdraw関数を実行します。
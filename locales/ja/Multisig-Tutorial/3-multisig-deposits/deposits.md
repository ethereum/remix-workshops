このセクションでは、`receive`関数と、それに関連するDopositイベントについて説明します。 マルチシグネチャ・ウォレットにEtherを入金するときに`receive` 関数が使われ、どのようにDepositイベントが透明性を提供するかを調べます。

## Depositイベント

9行目に、Depositイベントがあります。 Depositイベントは、Etherがマルチシグネチャ・ウォレットに入金されたときに発行されます。 次の3つのパラメータを含んでいます。

1. `sender`: Etherを送信するアドレス
2. `amount`: 入金されるEtherの量
3. `balance`: 入金後に更新されたコントラクトの残高

Depositイベントを使いマルチシグネチャ・ウォレットへのEtherのフローを追跡し、イベントに基づいて他のアクションをトリガーすることもできます。

## receive関数

On line 43, we have the `receive` function. The `receive` function is a special function that is executed whenever Ether is sent to the contract.

The `receive` function is marked as `external` and `payable`. The `external` modifier means that the function can only be called from outside the contract. The `payable` modifier means that the function can receive Ether.

The `receive` function emits the Deposit event (Line 44) with the address of the sender, the amount of Ether sent, and the updated balance of the contract. It doesn't return anything.

To receive Ether, a contract must have a `receive`, `fallback`, or a function with the `payable` modifier. If none of these are present, the contract will reject any Ether sent to it.

## まとめ

In this section, we explored the `receive` function and the associated Deposit event. We examined how the `receive` function is used to deposit Ether into the multi-signature wallet and how the Deposit event provides transparency.

## ⭐️演習: Etherの入金

Deposit 2 Ether into the Multisig contract.

1. Deploy the Multisig contract as in the previous assignment.
2. Enter a Value of 2 Ether in the Value field and select Ether in the dropdown menu.
3. At the bottom of your deployed contract in the "Low level interactions" section, click on the "Transact" button.
4. On top of your deployed contract, it should now say "Balance: 2 Ether".
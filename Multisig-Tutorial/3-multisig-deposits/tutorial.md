# Deposit
In this section, we'll explore the `receive` function and the associated Deposit event. We'll examine how the `receive` function is used to deposit Ether into the multi-signature wallet and how the Deposit event provides transparency.

## Deposit Event
On line, 9 we have the Deposit event. The Deposit event is emitted whenever Ether is deposited into the multi-signature wallet. It includes three parameters:
1. `sender`: The address that sent the Ether.
2. `amount`: The amount of Ether deposited.
3. `balance`: The updated balance of the contract after the deposit.

We can use the Deposit event to track the flow of Ether into the multi-signature wallet and maybe trigger other actions based on the event.

## `receive` Function
On line 43, we have the `receive` function. The `receive` function is a special function that is executed whenever Ether is sent to the contract. 

The `receive` function is marked as `external` and `payable`. The `external` modifier means that the function can only be called from outside the contract. The `payable` modifier means that the function can receive Ether.

The `receive` function emits the Deposit event (Line 44) with the address of the sender, the amount of Ether sent, and the updated balance of the contract. It doesn't return anything.

To receive Ether, a contract must have a `receive`, `fallback`, or a function with the `payable` modifier. If none of these are present, the contract will reject any Ether sent to it. 

## Conclusion
In this section, we explored the `receive` function and the associated Deposit event. We examined how the `receive` function is used to deposit Ether into the multi-signature wallet and how the Deposit event provides transparency.

## ⭐️ Assignment: Deposit Ether
Deposit 2 Ether into the Multisig contract.

1. Deploy the Multisig contract as in the previous assignment.
2. Enter a Value of 2 Ether in the Value field and select Ether in the dropdown menu.
3. At the bottom of your deployed contract in the "Low level interactions" section, click on the "Transact" button.
4. On top of your deployed contract, it should now say "Balance: 2 Ether". 
# Submitting and Confirming Transactions
In this section, we'll explore the process of submitting and confirming transactions. 

## Modifiers
We have new modifiers in this iteration of the contract. Let's examine them one by one.

1. **`txExists` modifier:** The `txExists` modifier (Line 13) ensures that the transaction exists. It does this by checking whether the transaction index is less than the length of the `transactions` array, that we'll explore later in this section.
2. **`notExecuted` modifier:** The `notExecuted` modifier (Line 18) ensures that the transaction has not been executed. It does this by checking whether the `executed` variable of the transaction is false.
3. **`notConfirmed` modifier:** The `notConfirmed` modifier (Line 23) ensures that the transaction has not been confirmed by the caller. It does this by checking whether the `isConfirmed` mapping of the transaction index and the caller's address is false.

## Transaction Struct
On line 28, we have a struct called `Transaction`. We store the struct members: `to`, `value`, `data`, `executed`, and `numConfirmations` in individual variables.

## Mapping of Confirmations
On line 37, we have a mapping called `isConfirmed`. The mapping is used to track the confirmations of each transaction. It maps the transaction index to a mapping of owner addresses to a boolean value. The boolean value indicates whether the owner has confirmed the transaction.

## Transactions Array
On line 39, we have an array called `transactions`. The array is used to store all the transactions submitted to the multi-signature wallet.

## Events
We have four new events in this iteration of the contract:
1. **`SubmitTransaction` event:** This event is emitted whenever a transaction is submitted to the multi-signature wallet. 
2. **`ConfirmTransaction` event:** This event is emitted whenever a transaction is confirmed by an owner.
3. **`RevokeConfirmation` event:** This event is emitted whenever a transaction confirmation is revoked by an owner.
4. **`ExecuteTransaction` event:** This event is emitted whenever a transaction is executed.

## `submitTransaction` Function
The `submitTransaction` function (Line 78) allows users to submit a transaction to the multi-signature wallet. It takes three parameters: `to`, `value`, and `data`. The `to` parameter is the address of the recipient of the transaction. The `value` parameter is the amount of Ether to be sent. The `data` parameter is the data to be sent to the recipient. Only owners can submit transactions.

On line, 85 we create a new transaction struct and push it to the `transactions` array and emit the `SubmitTransaction` event. The `txIndex` variable is used to keep track of the transaction index.

## `confirmTransaction` Function
The `confirmTransaction` function (Line 98) allows users to confirm a transaction. It takes one parameter: `txIndex`. 
It has three modifiers: `onlyOwner`, `txExists`, and `notExecuted`. The `onlyOwner` modifier ensures that only owners can confirm transactions. The `txExists` modifier ensures that the transaction exists. The `notExecuted` modifier ensures that the transaction has not been executed.

On line 101, we store the transaction in a local variable called `transaction`. We then increment the `numConfirmations` variable of the transaction and set the `isConfirmed` mapping of the transaction index and the caller's address to true. Finally, we emit the `ConfirmTransaction` event.

## `executeTransaction` Function
The `executeTransaction` function (Line 108) allows users to execute a transaction. On line 113, we require that the number of confirmations of the transaction is greater than or equal to the required number of confirmations. We then set the `executed` variable of the transaction to true. Finally, we call the `call` function of the recipient address with the value and data of the transaction. If the transaction is successful, we emit the `ExecuteTransaction` event.

## `getTransactionCount` Function
The `getTransactionCount` function (Line 132) allows users to retrieve the number of transactions in the multi-signature wallet. It returns the length of the `transactions` array.

## `getTransaction` Function
The `getTransaction` function (Line 136) allows users to retrieve a transaction. It returns the transaction struct members that we explored earlier in this section.

## Conclusion
In this section, we explored the process of submitting and confirming transactions. We examined the `submitTransaction`, `confirmTransaction`, and `executeTransaction` functions and understood how they work together to allow users to submit and confirm transactions.

## ⭐️ Assignment: Submit and Confirm Transactions
Submit and confirm a transaction to send 1 Ether to the first account in the "ACCOUNTS" dropdown menu.

1. Deploy the Multisig contract as in the previous assignment.
2. Submit a transaction to any address with a value of 4 Ether and any data.
3. Confirm the submitted transaction using the `confirmTransaction` function.
4. Once the required confirmations are reached, execute the transaction using the `executeTransaction` function.
5. Call the `getTransactionCount` function to verify that the transaction has been executed. The total count should have increased by one.
6. Call the `getTransaction` function with the transaction index to verify that the transaction has been executed. The `executed` property should be set to `true`.
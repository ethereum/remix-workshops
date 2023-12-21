# Revoking Confirmations
In this section, we'll explore the process of revoking confirmations. This process is necessary when an owner changes their mind about a transaction and wants to stop it from being executed. This section will be pretty straightforward. 

## revokeConfirmation Event
On line 14, we have added the `RevokeConfirmation` event. The `RevokeConfirmation` event is emitted whenever a transaction confirmation is revoked by an owner. 

## revokeConfirmation Function
On line 129, we have added the `revokeConfirmation` function. The `revokeConfirmation` function allows users to revoke a transaction confirmation. 

It takes one parameter: `txIndex`. It has three modifiers: `onlyOwner`, `txExists`, and `notExecuted`. 

On line 134, we require that the transaction has been confirmed by the caller. This ensures that only owner who has confirmed the transaction can revoke their own confirmation.
We then decrement the `numConfirmations` variable of the transaction and set the `isConfirmed` mapping of the transaction index and the caller's address to false. Finally, we emit the `RevokeConfirmation` event.

## Conclusion
In this section, we explored the process of revoking confirmations. We examined the `revokeConfirmation` function and understood how it works to allow users to revoke confirmations.

## ⭐️ Assignment: Revoke a Confirmation
Confirm and revoke a transaction to send 2 Ether to the first account in the "ACCOUNTS" dropdown menu.

1. As in the previous assignment, deploy the Multisig contract, make an Ether transaction to it, and submit a transaction to the first account in the "ACCOUNTS" dropdown menu with a value of 2 Ether.
2. Confirm the transaction twice as in the previous assignment.
3. Revoke the transaction by clicking on `revokeConfirmation` and inserting 0 as the transaction index. If you click on `getTransaction` again, you should see that the transaction has been confirmed once.

## Final Conclusion
In this tutorial, we explored the process of creating a multi-signature wallet. We learned how to initialize the contract, deposit Ether, submit, confirm, and revoke transactions. We also learned how to execute transactions and retrieve information about the multi-signature wallet.
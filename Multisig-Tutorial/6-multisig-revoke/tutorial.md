# Section 6: Revoking Confirmations

## 6.1 revokeConfirmation Function
The revokeConfirmation function (129) allows owners to revoke their confirmations for a transaction. Let's examine its implementation:
- The revokeConfirmation function takes one parameter: _txIndex, the index of the transaction for which the owner wants to revoke confirmation.

- It is marked as public and has three modifiers:

    - onlyOwner: Ensures that only owners can revoke their confirmations.
    - txExists: Checks if the specified transaction index exists.
    - notExecuted: Ensures that the transaction has not been executed.
-  The function retrieves the specified transaction from the transactions array.

- It requires that the owner has previously confirmed the transaction.

- The function decrements the numConfirmations counter for the transaction and updates the isConfirmed mapping to mark the owner as unconfirmed.

- The contract emits a RevokeConfirmation event (Line 139), providing information about the owner who revoked confirmation and the transaction index.

### 6.2 Transaction Revocation Workflow
An owner calls the revokeConfirmation function, providing the index of the transaction for which they want to revoke confirmation.

The function verifies that the owner is eligible to revoke, the transaction exists, and has not been executed.

It checks if the owner has previously confirmed the transaction.

If conditions are met, the numConfirmations counter for the transaction is decremented, and the owner is marked as unconfirmed.

The contract emits a RevokeConfirmation event, capturing details about the owner who revoked confirmation and the transaction index.

Transaction revocation provides flexibility for owners who may change their mind about confirming a transaction, adding an additional layer of control to the multi-signature wallet. In the next section, we will explore how users can query information about the state of the contract using getter functions


## ⭐️ Assignment: Deepening Your Understanding

Now that we're delving into the process of revoking confirmations in a Multisig wallet, let's evaluate your comprehension with a set of multiple-choice assignments:

- A. What does the revokeConfirmation function in a Multisig wallet enable owners to do?
   - 1: Execute a transaction.
   - 2: Add a confirmation to a transaction.
   - 3: Revoke their previous confirmation for a specific transaction.
   - 4: Update the gas limit for a transaction.

- B. Which of the following modifiers is associated with the revokeConfirmation function?
   - 1: onlyOwner
   - 2: txExists
   - 3: notExecuted
   - 4: All of the above

- C. When an owner successfully revokes their confirmation for a transaction, what happens to the numConfirmations counter for that transaction?
   - 1: It increments.
   - 2: It decrements.
   - 3: It remains unchanged.
   - 4: It depends on the gas limit.

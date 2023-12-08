# Section 4: Submitting and Confirming Transactions

## Overview
In this section, we will delve into the process of submitting transactions to the Multisig contract and obtaining confirmations from multiple owners. This step is crucial for executing actions within the Multisig setup. We'll explore the relevant contract code, understand how it works, and grasp the essential concepts for handling transactions in a Multisig setup.

## Contract Code Explanation

### The `submitTransaction` Function
The `submitTransaction` function  (Line 79) allows an owner to initiate a transaction by providing the destination address, value, and optional data. This function is the starting point for any action within the Multisig contract. Let's break down its key components:

This function makes use of a modifier called `onlyOwner`, which ensures that only owners can submit transactions. 
Modifiers are a convenient way to validate conditions before executing a function. They are defined using the `modifier` keyword and can be applied to any function.  (Line 9)

Finally, we emit the `SubmitTransaction` event, which includes the address of the submitting owner, the transaction index, and the transaction details.

### The `submitTransaction` Function 

- **onlyOwner:** This modifier ensures that only owners can submit transactions.
- **_to:** The destination address of the transaction.
- **_value:** The amount of Ether to send with the transaction.
- **_data:** Optional data for the transaction.

### The `confirmTransaction` Function

The `confirmTransaction` function  (Line 99) allows owners to confirm transactions initiated by other owners. It plays a crucial role in achieving the required number of confirmations for transaction execution. Let's examine its key components:

This function makes use of three modifiers: `onlyOwner`, `txExists`, and `notExecuted`. Let's examine them:
- **onlyOwner:** As we saw earlier, this modifier ensures that only owners can confirm transactions. (Line 9)
- **txExists:** This modifier ensures that the transaction exists in the `transactions` array by checking the `_txIndex` parameter against the array's length.  (Line 14)
- **notExecuted:** This modifier ensures that the transaction has not been executed yet. Firstly, we get the transaction from the `transactions` array using the `_txIndex` parameter. Then, we check the `executed` property of the transaction. (Line 19)


Finally we emit the `ConfirmTransaction` event, which includes the address of the confirming owner and the transaction index.

### Additional Functions

The Multisig contract also includes two additional getter functions to retrieve the transaction details and confirmations. Let's examine them:

#### The getTransactionCount Function
The getTransactionCount function returns the total number of transactions in the Multisig wallet.

#### The getTransaction Function
The getTransaction function returns the details of a specific transaction. It takes the transaction index as a parameter and returns the transaction details as a tuple.

#### The getOwners Function

The getOwners function returns the list of owners in the Multisig wallet.

### Assignment: Manage a Transaction

#### Objective
Submit a transaction, confirm it, and execute it.

#### Steps
1. Use Remix or your preferred development environment to interact with the deployed Multisig contract.
2. Submit a transaction to any address with a value of 4 Ether and any data.
3. Confirm the submitted transaction using the `confirmTransaction` function.
4. Once the required confirmations are reached, execute the transaction using the `executeTransaction` function.
5. Call the `getTransactionCount` function to verify that the transaction has been executed. The total count should have increased by one.
6. Call the `getTransaction` function with the transaction index to verify that the transaction has been executed. The `executed` property should be set to `true`.

This assignment aims to reinforce your understanding of the transaction lifecycle in a Multisig setup. Ensure to check for the emitted events to validate the success of each step.


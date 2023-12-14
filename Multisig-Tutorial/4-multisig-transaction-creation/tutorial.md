# Section 4: Submitting and Confirming Transactions

## 4.1 Overview
In this section, we will delve into the process of submitting transactions to the Multisig contract and obtaining confirmations from multiple owners. This step is crucial for executing actions within the Multisig setup. We'll explore the relevant contract code, understand how it works, and grasp the essential concepts for handling transactions in a Multisig setup.

## 4.2 The `submitTransaction` Function
The `submitTransaction` function  (Line 78) allows an owner to initiate a transaction by providing the destination address, value, and optional data. This function is the starting point for any action within the Multisig contract. Let's break down its key components:

- The submitTransaction function takes three parameters:

    - _to: The destination address of the transaction.
    - _value: The amount of Ether to be sent.
    - _data: Additional data to include in the transaction.


- The function is marked as public and is restricted to be called only by the owners of the multi-signature wallet (onlyOwner modifier(Line 8)). This introduces the concept of modifiers. 
Modifiers are used to modify the behavior of functions in a declarative way. In our case, the onlyOwner modifier ensures that only owners can submit transactions. Let's examine its key components:

    - It checks whether the sender is an owner by accessing the isOwner mapping (Line 9).
    - The _; statement indicates that the rest of the code in the function should be executed only if the condition is met (Line 10).

- Back to the submitTransaction function, it then creates a new transaction object and appends it to the transactions array, initializing its properties:
    - to: Destination address.
    - value: Amount of Ether.
    - data: Additional transaction data.
    - executed: Initially set to false.
    - numConfirmations: Initially set to 0.

The function emits a SubmitTransaction event, providing information about the owner who submitted the transaction, the transaction index, destination address, Ether value, and additional data.

## 4.3 The `confirmTransaction` Function

The `confirmTransaction` function  (Line 98) allows owners to confirm transactions initiated by other owners. It plays a crucial role in achieving the required number of confirmations for transaction execution. Let's examine its key components:

- The confirmTransaction function takes one parameter: _txIndex, the index of the transaction to confirm.

- It is marked as public and has three modifiers:

    - onlyOwner: Ensures that only owners can confirm transactions.
    - txExists: Checks if the specified transaction index exists.
    - notExecuted: Ensures that the transaction has not been executed.
    - notConfirmed: Ensures that the owner has not already confirmed the transaction.
- The function retrieves the specified transaction from the transactions array and increments the numConfirmations counter.

- It updates the isConfirmed mapping for the owner and the transaction index, indicating that the owner has confirmed this transaction.

- The function emits a ConfirmTransaction event, providing information about the owner who confirmed the transaction and the transaction index.

Finally we emit the `ConfirmTransaction` event (Line 105), which includes the address of the confirming owner and the transaction index.

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


# Section 3: Depositing Funds into the Multisig Wallet

## 3.1 Overview
In this section, you will delve into the process of depositing funds into the Multisig Wallet, gaining practical experience in managing the wallet's balance. We will explore the relevant contract code, understand how it works, and grasp the essential concepts for handling deposits in a Multisig setup.

## 3.2 The Receive Function
In Ethereum smart contracts, a fallback function is a function with no name that is executed when a contract receives Ether without calling any function. This function is marked with the receive keyword.

In our multi-signature wallet, we have a fallback function designed to handle incoming Ether transactions(Line 43)

- The receive function is marked as external and payable, indicating that it can receive Ether from external transactions.
- It emits a Deposit event, providing information about the sender, the deposited amount (msg.value), and the current balance of the contract.

## 3.3 The Deposit Event

The Deposit event(Line 9) is emitted whenever Ether is deposited into the multi-signature wallet.
It includes three parameters:
- sender: The address that sent the Ether.
- amount: The amount of Ether deposited.
- balance: The updated balance of the contract after the deposit.

The Deposit event provides transparency by logging key information on the blockchain. In the next section, we will explore the process of submitting and confirming transactions in our multi-signature wallet.

### Assignment: Deposit Ether

#### Objective
Deposit 2 Ether into the Multisig contract.

#### Steps
1. Use Remix or your preferred development environment to interact with the deployed Multisig contract.
2. Utilize the `receive` function to deposit 2 Ether into the contract.
3. Verify the emitted `Deposit` event to confirm a successful deposit.

This assignment aims to reinforce your understanding of the deposit process. Ensure to check for the emitted event to validate the success of your deposit.

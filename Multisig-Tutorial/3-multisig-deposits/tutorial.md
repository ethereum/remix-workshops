# Section 3: Depositing Funds into the Multisig Wallet

## Overview
In this section, you will delve into the process of depositing funds into the Multisig Wallet, gaining practical experience in managing the wallet's balance. We will explore the relevant contract code, understand how it works, and grasp the essential concepts for handling deposits in a Multisig setup.

## Contract Code Explanation

### The receive Function
The `receive` function is a special function in Solidity that allows a contract to receive Ether when it is sent directly to the contract's address. In our Multisig Wallet contract, the `receive` function is used to handle incoming Ether transactions. Let's break down its key components:

- **external:** This keyword indicates that the function can only be called from outside the contract.
- **payable:** This keyword enables the function to receive Ether along with the call.
- **msg.sender:** Refers to the address of the sender.
- **msg.value:** Represents the amount of Ether sent.
- **address(this).balance:** Gives the current balance of the contract.

### Emitting Events
The `Deposit` event is emitted within the `receive` function, providing transparency and a way to track incoming deposits. The event includes details such as the sender's address, the deposited amount, and the updated balance of the Multisig Wallet.

- **indexed:** This keyword allows efficient filtering of events based on specific parameters.

### Assignment: Deposit Ether

#### Objective
Deposit 2 Ether into the Multisig contract.

#### Steps
1. Use Remix or your preferred development environment to interact with the deployed Multisig contract.
2. Utilize the `receive` function to deposit 2 Ether into the contract.
3. Verify the emitted `Deposit` event to confirm a successful deposit.

This assignment aims to reinforce your understanding of the deposit process. Ensure to check for the emitted event to validate the success of your deposit.

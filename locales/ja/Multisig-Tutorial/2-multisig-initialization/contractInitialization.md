このセクションでは、マルチシグ・スマートコントラクトの**初期化プロセス**に学びます。 コンストラクタ関数を学び、コントラクトを初期状態にするセットアップ方法を確認します。

## Note

From this section on in this tutorial, we will be building up a multisig contract. In subsequent sections, the contract will become increasingly complete.

## Overview

In this section, the contract consists of events, state variables, modifiers, and functions. **Events** provide transparency by logging specified activities on the blockchain, while **modifiers** ensure that only authorized users can execute certain functions.

## State Variables

In Line 4, we have the MultisigWallet contract itself. At the beginning of the contract, we have three state variables.

1. **`owners`:** An array containing the addresses of all owners of the multi-signature wallet (Line 5).
2. **`isOwner`:** A mapping indicating whether an address is an owner (Line 6).
3. **`numConfirmationsRequired`:** The number of confirmations required for a transaction (Line 7).

The setup of array and mapping allows us to easily retrieve the list of owners and verify whether an address is an owner.

## Modifiers

Next, we have a modifier called `onlyOwner` (Line 9). Modifiers in Solidity are special keywords that can be used to amend the behavior of functions. In our case, the `onlyOwner` modifier ensures that only owners can execute a function. It does this by checking whether the address of the **caller** is an owner.

## Constructor Function

The `constructor` function (Line 14) is executed only once during the deployment of the contract. It initializes essential parameters, in this case, the list of owners and the required number of confirmations (Line 14).

On lines 15 and 16, we have two `require` statements to ensure that the inputs are valid. In this case, we require that there must be at least one owner and that the number of required confirmations must be greater than zero and less than or equal to the number of owners.

The constructor then initializes the contract state by verifying that is not address(0) (Line 25) and that the owner is unique (Line 26).  Then it adds a key/ value pair to the isOwner mapping (Line 28), and then it populates the `owners` array with the provided owner addresses (Line 29).

Finally, it sets the `numConfirmationsRequired` variable with the specified value (Line 32).

## getOwners Function

The `getOwners` function (Line 36) allows users to retrieve the list of owners of the multi-signature wallet. It returns the `owners` array (Line 37).

## getNumConfirmationsRequired Function

The `getNumConfirmationsRequired` function (Line 41) allows users to retrieve the number of confirmations required for a transaction. It returns the `numConfirmationsRequired` variable (Line 42).

## Conclusion

In this section, we explored the initialization process of the Multisig smart contract. We examined the constructor function and understood how it sets up the initial state of the contract.

## ⭐️ Assignment: Deploy a Multisig Wallet

Deploy a Multisig contract with three owners and require two confirmations for transaction execution.

1. Compile contractInitialization.sol
2. Go to Deploy & Run Transactions in Remix.
3. Expand the "Deploy" section.
4. Under "_OWNERS", enter three an array of three addresses.
5. Under "_NUM_CONFIRMATIONS_REQUIRED", enter the number of confirmations required for a transaction.

**Hints:**

- You can get addresses from the "ACCOUNTS" dropdown menu.
- The array of addresses should be in the format: ["0x123...", "0x456...", "0x789..."].
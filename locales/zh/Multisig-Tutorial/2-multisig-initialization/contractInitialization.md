在本节中，我们将探讨多重签名智能合约的**初始化过程**。 我们将检查构造函数并回顾它如何设置合约的初始状态。

## 备注

从本教程的这一部分开始，我们将构建一个多重签名合约。 在接下来的章节中，合约将会变得越来越完整。

## 概述

在本节中，合约由事件、状态变量、修饰符和函数组成。 **事件**通过在区块链上记录指定的活动来提供透明度，而**修饰符**确保只有授权用户才能执行某些功能。

## 状态变量

在第 4 行中，我们有 MultisigWallet 合约本身。 在合约开始时，我们有三个状态变量。

1. **`owners`:** 包含多重签名钱包所有所有者地址的数组（第 5 行）。
2. **`isOwner`:** 指示地址是否是所有者的映射（第 6 行）。
3. **`numConfirmationsRequired`:** 一笔交易所需的确认数量（第 7 行）。

通过设置数组和映射，我们可以轻松检索所有者列表，并验证某个地址是否为所有者。

## 修饰符

接下来，我们有一个名为 `onlyOwner` 的修饰符（第 9 行）。 Solidity 中的修饰符是特殊的关键字，可用于修改函数的行为。 在我们的例子中，`onlyOwner`修饰符确保只有所有者才能执行函数。 它通过检查 **调用者** 的地址是否是所有者来实现这一点。

## 构造函数

`constructor` 函数（第 14 行）在合约部署期间仅执行一次。 它初始化基本参数，在本例中为所有者列表和所需的确认数量（第 14 行）。

在第 15 行和第 16 行，我们有两个`require`语句来确保输入有效。 In this case, we require that there must be at least one owner and that the number of required confirmations must be greater than zero and less than or equal to the number of owners.

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

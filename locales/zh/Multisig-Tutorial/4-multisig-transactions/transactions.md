在本节中，我们将探讨提交和确认交易的过程。

## 修饰符

我们在合约的本次迭代中添加了新的修饰符。 让我们逐一来研究一下。

1. **`txExists` 修饰符：**（第 13 行）确保交易存在。 它通过检查交易索引是否小于“交易”数组的长度来实现这一点。 我们将在本节后面详细介绍此修饰符。
2. **`notExecuted` 修饰符：**（第 18 行）确保事务尚未执行。 它通过检查交易的`executed` 变量是否为 false 来实现这一点。
3. **`notConfirmed` 修饰符：**（第 23 行）确保交易尚未被调用者确认。 它通过检查交易索引和调用者地址的`isConfirmed`映射是否为 false 来实现这一点。

## 交易结构体

在第 28 行，我们有一个名为`Transaction`的结构体。 我们将结构体成员：`to`, `value`, `data`, `executed`, 和 `numConfirmations`存储在各个变量中。

## 映射确认

在第 37 行，我们有一个名为`isConfirmed`的映射。 该映射用于跟踪每笔交易的确认。 它将交易的索引映射到所有者地址到布尔值的映射。 布尔值表示该所有者是否已确认交易。

## 交易数组

在第 39 行，我们有一个名为`transactions`的数组。 该数组用于存储提交到多重签名钱包的所有交易。

## 事件

在本次合约迭代中，我们有四个新事件：

1. **`SubmitTransaction` 事件：** 每当交易提交到多重签名钱包时就会发出。
2. **`ConfirmTransaction` 事件：** 每当交易被所有者确认时发出。
3. **`RevokeConfirmation` 事件：** 每当所有者撤销交易确认时就会发出。
4. **`ExecuteTransaction` 事件：** 每当执行事务时都会发出。

## submitTransaction 函数

`submitTransaction` 函数（第 78 行）允许用户向多重签名钱包提交交易。 它需要三个参数：`to`、`value`和`data`。 `to`参数是交易接收者的地址。 `value`参数是要发送的以太币数量。 `data` 参数是要发送给接收者的数据。 只有所有者才能提交交易。

在第 85 行，我们创建了一个新的交易结构体，并将其推送到 `transactions` 数组中，然后发出 `SubmitTransaction` 事件。 `txIndex` 变量用于跟踪交易索引。

## confirmTransaction 函数

`confirmTransaction` 函数（第 98 行）允许用户确认交易。 它需要一个参数：`txIndex'。 
它具有三个修饰符：`onlyOwner`, `txExists`, 和 `notExecuted`。 `onlyOwer`修饰符确保只有所有者可以确认交易。`txExists`修饰符确保交易存在。`notExecuted\`修饰符确保交易尚未执行。

在第 101 行，我们将交易存储在名为`transaction`的局部变量中。 然后，我们增加交易的`numConfirmations`变量，并将交易索引和调用者地址的 `isConfirmed`映射设置为 true。 最后，我们发出 `ConfirmTransaction` 事件。

## executeTransaction 函数

`executeTransaction` 函数（第 108 行）允许用户执行交易。 在第113行，我们要求交易的确认数大于或等于所需的确认数。 然后，我们将交易的`executed`变量设置为 true。 最后，使用 `call` 函数发送资金。  这是使用交易的值和数据对接收者地址进行 `call` 。 如果交易成功，我们就会发出 `ExecuteTransaction` 事件。

## getTransactionCount 函数

`getTransactionCount` 函数（第 132 行）允许用户检索多重签名钱包中的交易数量。 它返回 `transactions` 数组的长度。

## getTransaction 函数

`getTransaction` 函数（第 136 行）允许用户检索交易。 它返回我们在本节前面探讨过的交易结构体的成员。

## 结论

在本节中，我们探讨了提交、确认和执行交易的过程。 我们检查了`submitTransaction`、`confirmTransaction`和`executeTransaction`函数，并了解它们如何协同工作以允许多个用户提交和确认交易。

## ⭐ 作业: 进行一笔交易

提交、确认并执行交易，将 2 以太币发送到“账户”下拉菜单中的第一个账户。

1. 按照之前的任务部署多重签名合约。 请确保所需的确认数量为 2。
2. 就像您在之前的任务中所做的那样，通过发送 4 个以太币从任何地址为多重签名提供资金。
3. 尝试将 2 以太币发送到“账户”下拉菜单中的第一个账户。  提交此交易（使用submitTransaction）后，单击`getTransactionCount`，应该会看到一笔交易，或者您可以单击`getTransaction`，插入 0 作为交易索引，然后查看您刚刚提交的交易。
4. 现在您可以点击`confirmTransaction`并插入0作为交易索引。 如果您再次点击`getTransaction`，您应该会看到交易已被确认一次。
5. 切换到第二所有者账户并再次确认交易。 如果您再次点击`getTransaction`，您应该看到交易已被确认两次。
6. 最后一步是执行交易。 单击`executeTransaction`并插入 0 作为事务索引。 如果您再次单击`getTransaction`，您应该看到交易已被执行。 您还可以在“账户”下拉菜单中查看第一个账户的余额。 现在应该增加 2 个以太币，而多重签名钱包的余额应该减少 2 个以太币。

**提示：**
如果您提交了一个交易，请确保值选中了 Wei ，并且 _data 字段填写得正确。 例如， 它看起来像这样: "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 20000000000, 0x" 表示 2 以太币。
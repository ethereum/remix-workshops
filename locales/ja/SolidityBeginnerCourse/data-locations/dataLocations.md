Solidityにおいて変数の値は、さまざまな場所にデータを保存できます。_メモリー_、_ストレージ_、_calldata_などがあります。

以前説明したように、値型の変数は、値のコピーが個別に保存されますが、参照型(配列、構造体、マッピング)の変数は、値のロケーション(参照)のみが保存されます。

関数で参照型を使う場合、その値が保存されるデータロケーションを指定する必要があります。 The price for the execution of the function is influenced by the data location; creating copies from reference types costs gas.

### ストレージ

Values stored in _storage_ are stored permanently on the blockchain and, therefore, are expensive to use.

In this contract, the state variables `arr`, `map`, and `myStructs` (lines 5, 6, and 10) are stored in storage. State variables are always stored in storage.

### メモリー

Values stored in _memory_ are only stored temporarily and are not on the blockchain. They only exist during the execution of an external function and are discarded afterward. They are cheaper to use than values stored in _storage_.

In this contract, the local variable `myMemstruct` (line 19), as well as the parameter `_arr` (line 31), are stored in memory. Function parameters need to have the data location _memory_ or _calldata_.

### Calldata

_Calldata_ stores function arguments. Like _memory_, _calldata_ is only stored temporarily during the execution of an external function. In contrast to values stored in _memory_, values stored in _calldata_ can not be changed. Calldata is the cheapest data location to use.

In this contract, the parameter `_arr` (line 35) has the data location _calldata_. If we wanted to assign a new value to the first element of the array `_arr`, we could do that in the `function g` (line 31) but not in the `function h` (line 35). This is because `_arr` in `function g `has the data location _memory_ and _function h_ has the data location `calldata`.

## 割り当て

### メモリーからメモリー

Assignments from _memory_ to _memory_ create references instead of copies. If you change the value in one variable, the value of all other variables that reference the same data will be changed.

If we were to create a new struct `myMemStruct2` with the data location _memory_ inside the `function f` (line 12) and assign it the value of `myMemStruct` (line 19), any change to `myMemStruct2` would also change the value of `myMemStruct`.

### ストレージからローカルストレージ

Assignments from _storage_ to _local storage_ also create references, not copies.

If we change the value of the local variable `myStruct` (line 17), the value of our state variable `myStructs` (line 10) changes as well.

## ストレージとメモリー/calldata

Assignments between _storage_ and _memory_ (or _calldata_) create independent copies, not references.

If we were to create a new struct `myMemStruct3` with the data location _memory_ inside the `function f` (line 12) and assign it the value of `myStruct`, changes in `myMemStruct3` would not affect the values stored in the mapping `myStructs` (line 10).

As we said in the beginning, when creating contracts we have to be mindful of gas costs. Therefore, we need to use data locations that require the lowest amount of gas possible.

## ⭐️ 演習

1. Change the value of the `myStruct` member `foo`, inside the `function f`, to 4.
2. Create a new struct `myMemStruct2` with the data location _memory_ inside the `function f` and assign it the value of `myMemStruct`. Change the value of the `myMemStruct2` member `foo` to 1.
3. Create a new struct `myMemStruct3` with the data location _memory_ inside the `function f` and assign it the value of `myStruct`. Change the value of the `myMemStruct3` member `foo` to 3.
4. Let the function f return `myStruct`, `myMemStruct2`, and `myMemStruct3`.

Tip: Make sure to create the correct return types for the function `f`.
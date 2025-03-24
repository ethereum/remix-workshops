Solidityにおいて変数の値として、さまざまな場所にデータを保存できます。_メモリー_、_ストレージ_、_calldata_などがあります。

以前説明したように、値型の変数は、値のコピーが個別に保存されますが、参照型(配列、構造体、マッピング)の変数は、値のロケーション(参照)のみが保存されます。

関数で参照型を使う場合、その値が保存されるデータロケーションを指定する必要があります。 関数の実行の価格は、データロケーションに影響します。参照型からコピーを作成するのにはガスがかかります。

### ストレージ

_ストレージ_に保存される値は、ブロックチェーンに永久に保存されます。そのため、使用するのが高価です。

このコントラクトでは、 `arr`、`map`、`myStructs`などの状態変数(5、6、10行目)がストレージに保存されます。 状態変数は、常にストレージに保存されます。

### メモリー

_メモリー_に保存される値は、一時的です。また、ブロックチェーンに保存されません。 external関数の実行の間に存在し、その後破棄されます。 _ストレージ_に保存される値よりも安価です。

このコントラクトでは、ローカル変数である`myMemstruct` (19行目)、`_arr`(31行目)がメモリーとして保存されています。 関数パラメータでは、データロケーションである_memory_や_calldata_が書かれている必要があります。

### Calldata

_Calldata_は、関数の引数を保存します。 _memory_のように、_calldata_は、external関数の実行中に一時的に保存されます。 _memory_に保存される値とは対照的に、_calldata_に保存される値は変更できません。 calldataは、使用するのに最も安いデータロケーションです。

このコントラクトでは、パラメータの`_arr`(35行目)は、データロケーションが_calldata_です。 配列の最初の要素に新しい値を割り当てたい場合、`function g`(31行目)で行えますが、 `function h`(35行目)ではできません。 理由としては、 `function g `の`_arr` は、データロケーションが_memory_になっおり、 _function h_はデータロケーションが`calldata`だからです。

## 割り当て

### メモリーからメモリー

_memory_から_memery_へ割り当てるには、コピーではなく参照を作成します。 変数の1つの値を変更すると、他の変数のすべての値で同じデータを参照しているものは、変更されます。

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
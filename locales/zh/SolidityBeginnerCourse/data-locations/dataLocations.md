Solidity中的变量值可以存储在不同的数据位置：memory、storage和calldata。

正如我们之前讨论过的，值类型的变量存储一个独立副本，而引用类型（array, struct, mapping）只存储值的位置（引用）。

赋值 如果我们在函数中使用引用类型，则必须指定它们的值存储在哪个数据位置。数据位置会影响函数执行价格；从引用类型创建副本需要消耗gas。

### Storage

存储在storage中的值永久地保存在区块链上，因此使用起来很昂贵。

在这个合约中，状态变量`arr`、`map`和`myStructs`（第5行、第6行和第10行）都被存储在storage中。状态变量总是被存储在storage中。 State variables are always stored in storage.

### Memory

存在于memory中的值仅临时保存，并不会出现在区块链上。它们只存在于外部函数执行期间，并且之后就会被丢弃。与存在于storage中的值相比，它们更便宜易用。 They only exist during the execution of an external function and are discarded afterward. They are cheaper to use than values stored in _storage_.

在这个合约里面，局部变量`myMemstruct`（第19行），以及参数`_arr`（第31行），都是存在于memory里面。函数参数需要有数据存储`memory`或者`calldata`. Function parameters need to have the data location _memory_ or _calldata_.

### Calldata

Calldata 存放着函数参数. 与 memory 类似, calldata 只能暂时地保存，在外部函数执行期间才有效. 与存储在 memory 中的值不同，存储在 calldata 中的值不能被更改。Calldata 是使用最便宜的数据位置。 Calldata is the cheapest data location to use.

In this contract, the parameter `_arr` (line 35) has the data location _calldata_. If we wanted to assign a new value to the first element of the array `_arr`, we could do that in the `function g` (line 31) but not in the `function h` (line 35). 在这个合约中，参数`_arr`（第35行）具有calldata数据位置。如果我们想要给数组`_arr`的第一个元素赋新值，则可以在函数`g`（第31行）中执行此操作，但无法在函数`h`（第35行）中执行此操作。这是因为函数`g`中的`_arr`具有memory数据位置而函数h具有calldata数据位置。

## Assignments

### Memory to memory

从memory到memory 的赋值会创建引用而非副本. 如果你改变了其中一个变量的值, 所有其他引用相同数据的变量也会发生改变.

如果我们要在f函数内部创建一个新结构体`myMemStruct2`，并将其分配给`myMemStruct` (line 19)，则对`myMemStruct2`进行任何更改都会同时更改`myMemStruct` 的值。

### Storage to local storage

从storage到local storage 的赋值也会创建引用而非副本.

如果我们更改局部变量`myStruct`(line 17)的值，则状态变量`myStructs`(line 10)的值也会随之发生更改。

## Storage and memory/calldata

storage和memory(calldata)之间互相赋值时, 创建独立副本而非引用.

如果我们要在`f`函数内部创建一个新结构体`myMemstruct3`并将其分配给`myStruct`，则对于`myMemstruct3`进行的更改不会影响存储在映射`myStructs`(line 10) 中的值。

正如我们一开始所说，创建合约时必须注意gas成本。因此，我们需要使用需要消耗最少gas的数据位置。 Therefore, we need to use data locations that require the lowest amount of gas possible.

## ⭐️ 作业

1. 将函数`f`内`myStruct`成员`foo`的值更改为4。
2. 在函数`f`中创建一个新结构体`myMemStruct2`，并将其分配给`myMemStruct`。将`myMemStruct2`成员`foo`的值更改为1。 Change the value of the `myMemStruct2` member `foo` to 1.
3. 在函数`f`中创建一个新结构体`myMemstruct3`，并将其分配给`myStruct`。 将`myMemstruct3`成员`foo`的值更改为3。 Change the value of the `myMemStruct3` member `foo` to 3.
4. 让函数`f`返回`myStruct`、 `myMemStruct2`和`myMemstruct3`。

提示：确保为函数`f`创建正确的返回类型。

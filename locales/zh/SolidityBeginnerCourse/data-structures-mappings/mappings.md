在Solidity中，mapping是一组键类型和相应值类型对的集合。

mapping与数组最大的区别在于映射无法迭代。如果我们不知道一个键，就无法访问其值。如果需要了解所有数据或迭代它们，则应使用数组。 如果我们不知道一个键，就无法访问其值。 如果需要了解所有数据或迭代它们，则应使用数组。

如果我们想根据已知的键检索值，我们可以使用映射（例如，地址通常用作键）。 使用映射查找值比迭代数组更容易、更便宜。 如果数组变得太大，迭代它的 Gas 成本可能会变得太高并导致交易失败。

我们还可以将映射的键存储在可迭代的数组中。

### 创建mappings

映射是使用语法 `mapping(KeyType => ValueType) VariableName` 声明的。
声明语法为`mapping(KeyType => ValueType) VariableName`。`KeyType`可以是任何内置值类型或任何合约，但不能是引用类型；`ValueType`可以是任何类型。 值类型可以是任何类型。

在此合约中，我们创建公共mapping`myMap`(第6行)，将地址(address)作为 key 类型与`uint`作为value类型。

### 访问value

与数组交互时操作 key-value 对象的语法类似于操作数组元素。要查找与特定 key 关联的 value 值，请提供 mapping 的名称和括号内包含该 key (第11行)。
要查找与特定 key 关联的 value ，请提供 mapping 的名称和括号内的 key (第11行)。

如果我们想要根据已知键检索值，可以使用mapping（例如address通常用作键）。使用mapping查找值比遍历数组更容易、更便宜。如果数组变得太大，则遍历它的gas成本可能会变得过高，并导致交易失败。 与数组不同，在试图访问未设置value值的key时不会出现错误。当创建一个新mapping时，每个可能的key都映射到默认值0。

### 设置values

我们可以通过提供 mapping 的名称，并在括号内包含该key，分配一个新value值(第16行)来为key设置新值。

### 删除values

我们可以使用delete运算符来删除与key关联的value值，这将将其设置为默认值0。正如在数组部分中所看到的那样。 正如在数组部分中所看到的那样。

<a href="https://www.youtube.com/watch?v=tO3vVMCOts8" target="_blank">观看有关Mapping的视频教程</a>。

## ⭐️ 作业

1. 创建公共mapping`balances`，将`address`与`uint`作为键类型和值类型。
2. 更改函数`get`和`remove`以使用mapping`balances`。
3. 更改函数`set`，创建一个新条目到`balances`映射中，在其中key是参数地址，value是参数地址相关联的余额。
可见性修饰符用于控制谁可以访问函数和状态变量。

有四种类型的可见性：`external`、`public`、`internal`和`private`。

它们规定了函数和状态变量是否可以在合约内部调用，从继承自该合约的合约（子合约）中调用，或者从其他合约和交易中调用。

### private

- 可以在当前合约内部被调用

### internal

- 可以在当前合约内部被调用
- 可以从子合约调用

### public

- 只能在当前合约内部被调用
- 可以在子合约中被调用
- 可以从其他合约或交易中调用

### external

- 可以从其他合约或交易中调用
- 状态变量不能是`external`

在这个例子中，我们有两个合约，`Base`合约（第4行）和继承了`Base`合约函数和状态变量的`Child`合约（第55行）。

当你取消注释`testPrivateFunc`（第58-60行），你会得到一个错误，因为子合约没有访问来自`Base`合约的`privateFunc` private 函数。

如果您编译并部署这两个合约，则无法直接调用函数`privateFunc`和`internalFunc`。 如果您编译并部署这两个合约，则无法直接调用函数`privateFunc`和`internalFunc`。您只能通过`testPrivateFunc`和`testInternalFunc`来调用它们。

<a href="https://www.youtube.com/watch?v=NBzQVJ6OrrQ" target="_blank">观看关于可见性的视频教程</a>。

## ⭐️ 作业

在`Child`合约中创建一个名为`testInternalVar`的新函数，该函数返回可能返回`Base`合约所有状态变量值。
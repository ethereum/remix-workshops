在本节中，我们将学习如何修改函数的行为以及如何运行合约初始化代码。

### 函数修饰符

_函数修饰符_ 用于更改函数的行为。 例如，他们经常在执行限制访问或验证输入的函数之前检查条件。

这个合约的第一部分是关于更改合约所有权。该合约中的所有权由类型为`address`（第7行）的状态变量`owner`表示。 `changeOwner`函数（第33行）可以更改此所有权。它接受一个`address`类型的输入参数，并将其值分配给状态变量`owner`。

The function `changeOwner` (line 33) can change this ownership. It takes an input parameter of the type `address` and assigns its value to the state variable `owner`.

However, this function cannot simply be executed under all conditions; it has two modifiers, `onlyOwner` and `validAddress`.

让我们先来看看`onlyOwner` (第18行)。
函数修饰符是用`modifier`关键字和唯一的名称定义的；它们也可以有参数。

下划线 `_`（第 23 行）在修饰符内部使用，表示将在修改后的函数体内执行的其余代码。
您放置在修饰符中下划线之前的代码将在被修饰函数主体中的代码之前执行。 下划线后面的代码将在被修饰函数体中的代码之后执行。

在这种情况下，`require`函数（第19行）检查正在执行合约的地址是否与存储在变量`owner`中的值相同。如果相同，则会继续执行其余部分，否则会抛出错误。 如果相同，则会继续执行其余部分，否则会抛出错误。

您可以通过 <a href="https://docs.soliditylang.org/en/latest/control-structures.html#error-handling-assert-require-revert-and-exceptions" target="_blank">Solidity文档</a>了解更多关于`assert`和`require`的信息，它们用于检查条件并在不满足时抛出错误。

`validAddress` 修饰符（第28行）具有`address`类型的参数，并检查提供的地址是否有效。如果有效，则继续执行代码。 如果有效，则继续执行代码。

### 构造函数

函数修饰符用于改变函数的行为。例如，它们经常在执行函数之前检查条件以限制访问或验证输入。 您可以使用它来运行合约初始化代码。 构造函数是在合约创建时执行的。您可以使用它来运行合约初始化代码。构造函数可以有参数，在部署合约之前不知道某些初始化值时特别有用。

您可以使用`constructor`关键字声明一个构造函数。 您可以使用`constructor`关键字声明一个构造函数。该合约中的构造函数（第11行）设置了在创建合约时 `owner` 变量的初始值。

<a href="https://www.youtube.com/watch?v=b6FBWsz7VaI" target="_blank">观看关于函数修饰符的视频教程</a>.

## ⭐️ 作业

1. 在该合约中创建一个名为 `increaseX` 的新函数。 在该合约中创建一个名为 `increaseX` 的新函数。该函数应接受 `uint` 类型的输入参数，并将变量 `x` 的值增加输入参数的值。
2. 确保只能增加 x 的值。
3. `increaseX`函数体应为空。

提示：使用修饰符。
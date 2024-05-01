在本节中，我们将学习如何修改函数的行为以及如何运行合约初始化代码。

### 函数修饰符

_Function Modifiers_ are used to change the behavior of a function. For example, they often check for a condition prior to executing a function to restrict access or validate inputs.

这个合约的第一部分是关于更改合约所有权。该合约中的所有权由类型为`address`（第7行）的状态变量`owner`表示。 `changeOwner`函数（第33行）可以更改此所有权。它接受一个`address`类型的输入参数，并将其值分配给状态变量`owner`。

The function `changeOwner` (line 33) can change this ownership. It takes an input parameter of the type `address` and assigns its value to the state variable `owner`.

However, this function cannot simply be executed under all conditions; it has two modifiers, `onlyOwner` and `validAddress`.

Let's look at `onlyOwner` first (line 18).
Function modifiers are defined with the `modifier` keyword and a unique name; they can also have parameters.

The underscore `_` (line 23) is used inside modifiers to represent the rest of the code that will be executed in the body of the modified function.
The code you place before the underscore in the modifier will be executed before the code in the body of the modified function. The code after the underscore will be executed after the code in the body of the modified function.

在这种情况下，`require`函数（第19行）检查正在执行合约的地址是否与存储在变量`owner`中的值相同。如果相同，则会继续执行其余部分，否则会抛出错误。 If it is, the rest of the code will be executed, otherwise it will throw an error.

您可以通过 <a href="https://docs.soliditylang.org/en/latest/control-structures.html#error-handling-assert-require-revert-and-exceptions" target="_blank">Solidity文档</a>了解更多关于`assert`和`require`的信息，它们用于检查条件并在不满足时抛出错误。

`validAddress` 修饰符（第28行）具有`address`类型的参数，并检查提供的地址是否有效。如果有效，则继续执行代码。 If it is, it continues to execute the code.

### 构造函数

函数修饰符用于改变函数的行为。例如，它们经常在执行函数之前检查条件以限制访问或验证输入。 You can use it to run contract initialization code. 构造函数是在合约创建时执行的。您可以使用它来运行合约初始化代码。构造函数可以有参数，在部署合约之前不知道某些初始化值时特别有用。

You declare a constructor using the `constructor` keyword. 您可以使用`constructor`关键字声明一个构造函数。该合约中的构造函数（第11行）设置了在创建合约时 `owner` 变量的初始值。

<a href="https://www.youtube.com/watch?v=b6FBWsz7VaI" target="_blank">观看关于函数修饰符的视频教程</a>.

## ⭐️ 作业

1. Create a new function, `increaseX` in the contract. 在该合约中创建一个名为 `increaseX` 的新函数。该函数应接受 `uint` 类型的输入参数，并将变量 `x` 的值增加输入参数的值。
2. 确保只能增加 x 的值。
3. `increaseX`函数体应为空。

提示：使用修饰符。

このセクションでは、関数の入力や出力について詳しく学びます。

### 複数の名前付き出力

関数は、複数の値を返すことができ、付けた名前を割り当てることができます。

`returnMany`関数(6行目)では、複数の値を返す方法を示しています。
You will often return multiple values. It could be a function that collects outputs of various functions and returns them in a single function call for example.

The `named` function (line 19) shows how to name return values.
Naming return values helps with the readability of your contracts. Named return values make it easier to keep track of the values and the order in which they are returned. You can also assign values to a name.

The `assigned` function (line 33) shows how to assign values to a name.
When you assign values to a name you can omit (leave out) the return statement and return them individually.

### Deconstructing Assignments

You can use deconstructing assignments to unpack values into distinct variables.

The `destructingAssigments` function (line 49) assigns the values of the `returnMany` function to the new local variables `i`, `b`, and `j` (line 60).

### Input and Output restrictions

There are a few restrictions and best practices for the input and output parameters of contract functions.

"_[Mappings] cannot be used as parameters or return parameters of contract functions that are publicly visible._"
From the <a href="https://docs.soliditylang.org/en/latest/types.html#mapping-types" target="_blank">Solidity documentation</a>.

Arrays can be used as parameters, as shown in the function `arrayInput` (line 71). Arrays can also be used as return parameters as shown in the function `arrayOutput` (line 76).

You have to be cautious with arrays of arbitrary size because of their gas consumption. While a function using very large arrays as inputs might fail when the gas costs are too high, a function using a smaller array might still be able to execute.

<a href="https://www.youtube.com/watch?v=je7dWT6bEZM" target="_blank">Watch a video tutorial on Function Outputs</a>.

## ⭐️ 演習

Create a new function called `returnTwo` that returns the values `-2` and `true` without using a return statement.
Solidity supports different control flow statements that determine which parts of the contract will be executed. The conditional *If/Else statement* enables contracts to make decisions depending on whether boolean conditions are either `true` or `false`.

Solidity differentiates between three different If/Else statements: `if`, `else`, and `else if`.

### if
The `if` statement is the most basic statement that allows the contract to perform an action based on a boolean expression. 

In this contract’s `foo` function (line 5) the if statement (line 6) checks if `x` is smaller than `10`. If the statement is true, the function returns `0`.

### else
The `else` statement enables our contract to perform an action if conditions are not met.

In this contract, the `foo` function uses the `else` statement (line 10) to return `2` if none of the other conditions are met.

### else if
With the `else if` statement we can combine several conditions.

If the first condition (line 6) of the foo function is not met, but the condition of the `else if` statement (line 8) becomes true, the function returns `1`.

<a href="https://www.youtube.com/watch?v=Ld8bFWXLSfs" target="_blank">Watch a video tutorial on the If/Else statement</a>.

## ⭐️ Assignment
Create a new function called `evenCheck` in the `IfElse` contract: 
- That takes in a `uint` as an argument.
- The function returns `true` if the argument is even, and `false` if the argument is odd.
- Use a ternery operator to return the result of the `evenCheck` function.

Tip: The modulo (%) operator produces the remainder of an integer division.
Solidity supports iterative control flow statements that allow contracts to execute code repeatedly.

Solidity differentiates between three types of loops: `for`, `while`, and `do while` loops.

### for
Generally, `for` loops (line 7) are great if you know how many times you want to execute a certain block of code. In solidity, you should specify this amount to avoid transactions running out of gas and failing if the amount of iterations is too high.

### while
If you don’t know how many times you want to execute the code but want to break the loop based on a condition, you can use a `while` loop (line 20).
Loops are seldom used in Solidity since transactions might run out of gas and fail if there is no limit to the number of iterations that can occur.

### do while
The `do while` loop is a special kind of while loop where you can ensure the code is executed at least once, before checking on the condition.

### continue
The `continue` statement is used to skip the remaining code block and start the next iteration of the loop. In this contract, the `continue` statement (line 10) will prevent the second if statement (line 12) from being executed.

### break
The `break` statement is used to exit a loop. In this contract, the break statement (line 14) will cause the for loop to be terminated after the sixth iteration.

<a href="https://www.youtube.com/watch?v=SB705OK3bUg" target="_blank">Watch a video tutorial on Loop statements</a>.

## ⭐️ Assignment
1. Create a public `uint` state variable called count in the `Loop` contract.
2. At the end of the for loop, increment the count variable by 1.
3. Try to get the count variable to be equal to 9, but make sure you don’t edit the `break` statement.
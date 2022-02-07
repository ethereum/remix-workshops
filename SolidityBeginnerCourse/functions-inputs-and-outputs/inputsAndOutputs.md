In this section, we will learn more about the inputs and outputs of functions. 

### Multiple named Outputs
Functions can return multiple values that can be named and assigned to their name.

The `returnMany` function (line 6) shows how to return multiple values.
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

"*[Mappings] cannot be used as parameters or return parameters of contract functions that are publicly visible.*" 
From the <a href="https://docs.soliditylang.org/en/latest/types.html#mapping-types" target="_blank">Solidity documentation</a>.

Arrays can be used as parameters, as shown in the function `arrayInput` (line 71). Arrays can also be used as return parameters as shown in the function `arrayOutput` (line 76).

You have to be cautious with arrays of arbitrary size because of their gas consumption. While a function using very large arrays as inputs might fail when the gas costs are too high, a function using a smaller array might still be able to execute.

<a href="https://www.youtube.com/watch?v=je7dWT6bEZM" target="_blank">Watch a video tutorial on Function Outputs</a>.

## ⭐️ Assignment
Create a new function called `returnTwo` that returns the values `-2` and `true` without using a return statement.
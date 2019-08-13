# Modify a variable

A Solidity `function` works in a similar way to functions in other programming languages, in that they accept parameters, process them, and return variables.

For other contracts running on the Ethereum network to change the variable value using a function you declare it as public using the `public` function modifier.

To recap, the syntax for a function based on what we have discussed so far is:

```solidity
function <functionName>(<parameterType> <parameterName>…) <functionModifiers> returns (<returnVariableTypes>) {
    // Code
}
```

## To Try

Create a new function called `set` that other contracts can access that accepts one parameter of type `uint`.

Inside the function, set the state variable you created in step 2 to the value of the parameter.

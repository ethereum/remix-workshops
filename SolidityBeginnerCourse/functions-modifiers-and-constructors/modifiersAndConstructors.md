In this section, we will learn how to modify the behavior of a function and how to run contract initialization code. 

### Function Modifier
*Function Modifiers* are used to change the behavior of a function. For example, they often check for a condition prior to executing a function to restrict access or validate inputs.

This first part of this contract is about changing ownership of a contract. Ownership in this contract is expressed by the value of the state variable `owner` that is of the type `address` (line 7).

The function `changeOwner` (line 33) can change this ownership. It takes an input parameter of the type `address` and assigns its value to the state variable `owner`.

However, this function cannot simply be executed under all conditions; it has two modifiers, `onlyOwner` and `validAddress`.

Let's look at `onlyOwner` first (line 18). 
Function modifiers are defined with the `modifier` keyword and a unique name; they can also have parameters. 

The underscore `_` (line 23) is used inside modifiers to represent the rest of the code that will be executed in the body of the modified function.
The code you place before the underscore in the modifier will be executed before the code in the body of the modified function. The code after the underscore will be executed after the code in the body of the modified function.

In this case, the `require` function (line 19) checks if the address executing the contract is the same as the value stored in the variable `owner`. If it is, the rest of the code will be executed, otherwise it will throw an error. 

You can learn more about `assert` and `require` in the <a href="https://docs.soliditylang.org/en/latest/control-structures.html#error-handling-assert-require-revert-and-exceptions" target="_blank">Solidity documentation</a>, they are used to check for conditions and throw errors if they are not met. 

The `validAddress` modifier (line 28) has a parameter of type `address` and checks if the provided address is valid. If it is, it continues to execute the code.

### Constructor
A constructor function is executed upon the creation of a contract. You can use it to run contract initialization code. The constructor can have parameters and is especially useful when you don't know certain initialization values before the deployment of the contract. 

You declare a constructor using the `constructor` keyword. The constructor in this contract (line 11) sets the initial value of the owner variable upon the creation of the contract.

<a href="https://www.youtube.com/watch?v=b6FBWsz7VaI" target="_blank">Watch a video tutorial on Function Modifiers</a>.

## ⭐️ Assignment
1. Create a new function, `increaseX` in the contract. The function should take an input parameter of type `uint` and increase the value of the variable `x` by the value of the input parameter.
2. Make sure that x can only be increased.
3. The body of the function `increaseX` should be empty.

Tip: Use modifiers.
This section will look into the types of functions that don't modify the state of the blockchain: *view* and *pure* functions.

### View Functions 
*View functions* promise to not modify the state.

"The following statements are considered modifying the state:
1. Writing to state variables.
2. Emitting events.
3. Creating other contracts.
4. Using selfdestruct.
5. Sending Ether via calls.
6. Calling any function not marked view or pure.
7. Using low-level calls.
8. Using inline assembly that contains certain opcodes."

From the <a href="https://docs.soliditylang.org/en/latest/contracts.html#view-functions" target="_blank">Solidity documentation</a>.

You can declare a view function using the keyword `view`. In this contract, `addToX` (line 8) is a view function. This function takes the parameter `y` and returns the sum of the parameter and the state variable `x`. It reads `x` but does not modify it.

### Pure functions 
*Pure functions* promise to neither modify nor to read the state.

"In addition to the list of state modifying statements explained above, the following are considered reading from the state:
1. Reading from state variables.
2. Accessing `address(this).balance` or `<address>.balance`.
3. Accessing any of the members of block, tx, msg (with the exception of `msg.sig` and `msg.data`).
4. Calling any function not marked pure.
5. Using inline assembly that contains certain opcodes."

From the <a href="https://docs.soliditylang.org/en/latest/contracts.html#pure-functions" target="_blank">Solidity documentation</a>.

You can declare a pure function using the keyword `pure`. In this contract, `add` (line 13) is a pure function. This function takes the parameters `i` and `j`, and returns the sum of them. It neither reads nor modifies the state variable `x`.

In Solidity development, you need to optimise your code for saving computation cost (gas cost). Declaring functions view and pure can save gas cost and make the code more readable and easier to maintain. Pure functions don't have any side effects and will always return the same result if you pass the same arguments.

<a href="https://www.youtube.com/watch?v=vOmXqJ4Qzbc" target="_blank">Watch a video tutorial on View and Pure Functions</a>.

## ⭐️ Assignment
Create a function called `addToX2` that takes the parameter `y` and updates the state variable `x` with the sum of the parameter and the state variable `x`.
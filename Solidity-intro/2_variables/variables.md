# Define a variable

<!-- TODO: Move to a step 0? -->

A Solidity contract is a collection of functions and state stored at a specific address on an Ethereum network.

Solidity is a statically typed language, which means that you need to specify the type of each variable (state and local). Solidity provides elementary types which you can combine to form complex types.

An integer is a common variable type to define a number. With Solidity, you need to specify if it is **signed** (if it could be a negative number) using `int`, or **unsigned** (it will **only** be  a positive number) using `uint`.

You also need to specify the bit size using steps of 8. (e.g. int8 or int32 or uint256). If you don't specify a size, the variable defaults to 256 bits.

## Try it out!

Create a variable that is:
- a 256 bit sized unsigned integer
- call it `storedData`
- set it equal to 3

If you get stuck, <a href="https://solidity.readthedocs.io/en/latest/types.html#integers" target="_blank">read the integer variable documentation</a>.

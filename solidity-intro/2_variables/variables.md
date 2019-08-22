# Define a variable

<!-- TODO: Move to a step 0? -->

A Solidity contract is a collection of functions and state stored at a specific address on an Ethereum network.

Solidity is a statically typed language, which means that you need to specify the type of each variable (state and local). Solidity provides elementary types which you can combine to form complex types.

An integer is a common variable type to define a number. With Solidity you need to specify if it is signed, i.e., should be a negative or positive number using `int`, or unisgned, i.e., should **only** be a positive number using `uint`.

You also need to specify the bit size using steps of 8 from 8 to 256. If you don't specify a size, the variable defaults to 256 bits.

## To try

Create a variable that is a 256 bit sized unsigned integer, and call it `storedData`.

If you get stuck, [read the integer variable documentation](https://solidity.readthedocs.io/en/v0.5.10/types.html#integers).

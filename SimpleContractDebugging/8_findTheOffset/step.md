# Find the offset ;)

And now for a test:

 - Compile notSimpleStore.sol
 - Deploy the contract `notSoSimpleStore`
 - Make sure you have a successful deployment - if not check that you used the correct input type in the constructor.
 - Go to the Debugger by clicking the **debug** button at the (successful) creation transaction.
 - Find the value of the parameter of `CODECOPY` which represent the offset in calldata where to copy from.

 Remember that we are talking about the `CODECOPY` which extracts the bytes which will be stored on chain ;)

 - Now in the editor, make sure taht notSoSimpleStore.sol is the active file. Find the `findTheOffset` contract and the `offset` function. Replace the text `hex"00"` with the value of the offset that you have found.
 
 Good Luck!
 
# Find the offset ;)

And now for a slightly different example:

 - Compile notSimpleStore.sol
 - Deploy the contract `notSoSimpleStore`
 - Make sure you have a successful deployment - if not check that you used **the correct input type** in the constructor.
 - Go to the Debugger by clicking the **debug** button at the (successful) creation transaction.
 - Find the value of the parameter of `CODECOPY` which represents the offset in calldata where to copy from.
 
Remember: *codecopy(t, f, s)* - copy **s** bytes from code at position **f** to memory at position **t**

If you look in the **Stack**, you should see that the 2nd element is:
0x0000000000000000000000000000000000000000000000000000000000000083

And this is the **f** of the input params of codecopy.

### Hope you picked up a thing or 2 about how opcodes work!
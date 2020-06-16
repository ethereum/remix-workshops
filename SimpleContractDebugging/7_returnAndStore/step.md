# and RETURN?

When the bytecode has been extracted, the last step is to use `RETURN` to return it to the client.

But first, the EVM needs to prepare the stack before calling `RETURN`.

Move to the next debugging step: `PUSH1 00`

We are pushing `00` to the stack because this is the offset position of the contract bytecode in memory.

Then comes the all important `RETURN` opcode.  

The **stack inspector** shows:

`0: 0x0000000000000000000000000000000000000000000000000000000000000000`
`1: 0x0000000000000000000000000000000000000000000000000000000000000035`

Which is to say it returns to the client the bytecode starting `0x00` with length `0x35`.

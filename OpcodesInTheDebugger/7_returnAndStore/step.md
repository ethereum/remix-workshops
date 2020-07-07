# The Opcode RETURN

When the bytecode has been extracted, the last step is to use `RETURN` to return it to the client. (Yann - well there are more steps after the RETURN - so it is not the last step - so we need to give a sentence summarizing what the rest of the opcodes are doing)

But first, the EVM needs to prepare the stack before calling `RETURN`.

Move to the next debugging step: `PUSH1 00`

We are pushing `00` to the stack because this is the offset position of the contract bytecode in memory.

Then comes the all important `RETURN` opcode.  

The **stack inspector** shows:
(not quite for me but close)
`0: 0x0000000000000000000000000000000000000000000000000000000000000000`
`1: 0x0000000000000000000000000000000000000000000000000000000000000035`

Which is to say it returns to the client the bytecode starting `0x00` with length `0x35`.

0x35 is 53 in decimal  - do we need to do this hex to decimal more for better understanding?

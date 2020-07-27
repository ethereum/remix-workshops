# The Opcode RETURN

At the end of the last chapter we had moved to one step after **CODECOPY** to see what happened in the memory.

Now that CODECOPY has been executed, we are on the opcode `PUSH1 00`.  

`PUSH1 00` prepares the stack for the `RETURN` opcode.
`RETURN` is the last part of this process.  It is where the code is returned to the client. 

We push `00` to the stack because this is the offset position of the contract bytecode in memory.

Now we can call the all important `RETURN` opcode.  

The **stack inspector** shows:
`0: 0x0000000000000000000000000000000000000000000000000000000000000000`
`1: 0x000000000000000000000000000000000000000000000000000000000000003e`

Which is to say it returns to the client the bytecode starting `0x00` with length `0x3e`.

From the Remix terminal, identify the transaction that deployed the contract and click `Debug`

In the gutter of the editor, put a breakpoint on the line `s = _o`, and click on `Jump to the next Breakpoint` (bottom right button).

Click on `Step into`, to move along the opcodes until you reach `SSTORE`. 

`SSTORE` is the opcode for storing the value `_o` in the storage. Let's continue further to the `CODECOPY`.

# CODECOPY

CODECOPY is an opcode (from a lot more) run by the EVM.
Please check out https://ethervm.io/ for a complete list of opcodes.

The role of CODECOPY is to take the running code (or part of the running code) and to copy it from the `calldata` to the `memory`.

*solidity implementation: codecopy(t, f, s) - copy s bytes from code at position f to mem at position t*

Each contract deployment uses CODECOPY, this is what we will be checking.

# CODECOPY

CODECOPY is an opcode (from a lot more) run by the EVM.
Please check out <https://ethereum.stackexchange.com/questions/119/what-opcodes-are-available-for-the-ethereum-evm> for a complete list of opcodes.

The role of CODECOPY is to take the running code (or part of the running code) and to copy it to the from the `calldata` to the `memory`.

Each contract deployment uses CODECOPY, this is what we will be checking.

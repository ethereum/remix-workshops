# CODECOPY

CODECOPY is one of the many opcodes run by the EVM. Check out the complete list of opcodes at <a href="https://ethervm.io/" target="_blank">https://ethervm.io/</a> .

CODECOPY takes the **running code** (or part of it) and to copies it from the `calldata` to the `memory`.

The solidity implementation is: **codecopy(t, f, s)** - copy **s** bytes from code at position **f** to memory at position **t**.

Every contract deployment uses **CODECOPY**.

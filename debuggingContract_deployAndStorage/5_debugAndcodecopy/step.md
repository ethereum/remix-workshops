# Debug

From the Remix terminal, identify the transaction that deployed the contract and click `Debug`
You should get something like (https://raw.githubusercontent.com/ethereum/remix-workshops/master/debuggingContract_deployAndStorage/5_debugAndcodecopy/debug_codecopy.png "debugger")

Let's move a bit further in the debug.

In the gutter, put a breakpoint in `s = _o`, and click on `Jump to the next Breakpoint` (bottom right button).
At this point we should be close to the `SSTORE` opcode which is the opcode for storing a value `_o` in the storage.

Click on `Step into`, check the `SSTORE` but let's move further to the `CODECOPY`.

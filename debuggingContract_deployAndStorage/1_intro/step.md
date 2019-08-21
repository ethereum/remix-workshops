# Debugging a contract - Contract Deployment

This workshop aims to give a better understanding on how a contract get deployed.
`SimpleStore` is our basic contract.
It has a very simple constructor which just use the first parameter `_o` and save it to `s`.

We will try to see, using the debugger, the importance of the opcode `CODECOPY`
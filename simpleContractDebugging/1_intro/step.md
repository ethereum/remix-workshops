# Debugging a contract - Contract Deployment

This workshop aims to give a better understanding on how a contract get deployed.
`SimpleStore` is our basic contract.
It has a very simple constructor which just uses the first parameter `_o` and saves it to `s`.

Using the debugger, we will try to see, what the opcode `CODECOPY` does.
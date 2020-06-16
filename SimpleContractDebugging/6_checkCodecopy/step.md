# Why CODECOPY here

We ultimately want to store the code in the blockchain. So the EVM need to tell the client (geth, parity) which code to store.


`CODECOPY` is the first step: it copies the bytecode to memory, then the ethereum client will be able to consume it.

As stated in the general spec, at the end of the contract creation, the client (geth, parity) takes the targeted value by the opcode `RETURN` and *persists* it as being the deployed bytecode.

Once you are in the `CODECOPY`, look at the top 3 items in stack:

`0: 0x0000000000000000000000000000000000000000000000000000000000000000`
`1: 0x0000000000000000000000000000000000000000000000000000000000000053`
`2: 0x0000000000000000000000000000000000000000000000000000000000000035`

`CODECOPY` will consume these three items.
`0` is the offset where the code should be copied to the memory. In that example, the code is copied to the beginning of the memory
`1` is the offset in calldata where to copy from
`2` number of bytes to copy

remember: *codecopy(t, f, s)* - copy **s** bytes from code at position **f** to mem at position **t**

After `CODECOPY` is executed, the copied code should be:
(1) => `0x6080604052600080fdfea165627a7a7230582058ab614283bec9a34501e6d23c7b8ef93cf0c99c7bfcf583e62ad7f909091d310029` in memory

Where the input data (the original bytecode) is

(2) => `0x6080604052348015600f57600080fd5b50604051602080608883398101806040526020811015602d57600080fd5b8101908080519060200190929190505050806000819055505060358060536000396000f3fe6080604052600080fdfea165627a7a7230582058ab614283bec9a34501e6d23c7b8ef93cf0c99c7bfcf583e62ad7f909091d310029000000000000000000000000000000000000000000000000000000000000000c`

This shows us that `(1)` is a subset of the original calldata `(2)`:

`(1)` is calldata without the input parameter `000000000000000000000000000000000000000000000000000000000000000c` (we don't need to store this)
and without the constructor code `6080604052348015600f57600080fd5b50604051602080608883398101806040526020811015602d57600080fd5b8101908080519060200190929190505050806000819055505060358060536000396000f3fe` which should be executed only 1 time.

So `CODECOPY` extracts the bytecode from the calldata and copies it to the memory.

Let's move to the next step.


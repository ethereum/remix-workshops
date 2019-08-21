# why CODECOPY here

That's basically due to the fact that we ultimately want to store the code in the blockchain thus the EVM need to tell the client which code to store.

As stated in the general spec, the client (geth, parity) takes the targeted value by the opcode RETURN and persist it as being the deployed bytecode.

Once you are in the `CODECOPY`, look at the top 2 items in stack:

`0: 0x0000000000000000000000000000000000000000000000000000000000000000`
`1: 0x0000000000000000000000000000000000000000000000000000000000000053`
`2: 0x0000000000000000000000000000000000000000000000000000000000000035`

`CODECOPY` will consume these two item.
`0` is the offset where the code should be copied to the memory. In that example, the code is copied to the beginning of the memory
`1` is the offset in calldata where to copy from
`2` number of bytes to copy

After CODECOPY being executed, the copied code should be:
(1) => `0x6080604052600080fdfea165627a7a7230582058ab614283bec9a34501e6d23c7b8ef93cf0c99c7bfcf583e62ad7f909091d310029`

Whereas the input data (the original bytecode) is
(https://raw.githubusercontent.com/ethereum/remix-workshops/master/debuggingContract_deployAndStorage/6_checkCodecopy/remix_tx_terminal.png "remix terminal")

(2) => `0x6080604052348015600f57600080fd5b50604051602080608883398101806040526020811015602d57600080fd5b8101908080519060200190929190505050806000819055505060358060536000396000f3fe6080604052600080fdfea165627a7a7230582058ab614283bec9a34501e6d23c7b8ef93cf0c99c7bfcf583e62ad7f909091d310029000000000000000000000000000000000000000000000000000000000000000c`

This shows us that `(1)` is a subset of the original calldata `(2)`:
`(1)` is calldata less the input parameter `000000000000000000000000000000000000000000000000000000000000000c` (we don't need to store this)
and less the constructor code `6080604052348015600f57600080fd5b50604051602080608883398101806040526020811015602d57600080fd5b8101908080519060200190929190505050806000819055505060358060536000396000f3fe` which should be executed only 1 time.

So `CODECOPY` allows to extract from the calldata the bytecode that need to be stored in chain.

Let's move to the next step


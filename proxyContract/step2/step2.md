# How it works?

EIP-7 DelegateCall opcode allows to separate execution to another contract at the same time execution context stays the same.
All message calls from the user go through a so called Proxy contract. The Proxy contract then will redirect them to the Logic contract. When you need to upgrade the logic you need to deploy the new version of it and the implementation of Proxy will rename the same.
For this the Proxy Contract uses Delegate calls and Solidity assembly because without it it's impossible to return any value from delegatecall.
Let's see how it works.
**EIP-7 DelegateCall** opcode allows a separate execution in another contract while maintaining the original execution context.

With this opcode, all **message calls** from the user will go through a **Proxy contract**. 

The **Proxy contract** then redirects the calls to the **Logic contract**. 

And when the logic contract needs fixing or upgrading, you **just** deploy that  - **HOWEVER** - the implementation (the original deployed contract) of Proxy will remain the same. 

You only need to update the address of Logic contract stored in Proxy contract.

The Proxy Contract uses **Delegate calls** and **Solidity assembly** because without it, it's impossible to return any value from **delegatecall**.
# How it works?

**EIP-7 DelegateCall** opcode allows a separate execution in another contract while maintaining the original execution context.

All **message calls** from the user go through a **Proxy contract**. 

The **Proxy contract** then will redirect them to the **Logic contract**. 

And when you need to **upgrade** the logic, you'll **just** deploy that - **HOWEVER** - the implementation of Proxy will rename the same. 

You'll only need to update the address of Logic contract in Proxy.

The Proxy Contract uses **Delegate calls** and **Solidity assembly** because without it, it's impossible to return any value from **delegatecall**.
# What if we have state variables?

Things are more complicated once we need to deal with state variables.  State variable are saved to **storage**.

 `storage`: is a mapping; each value stored there is persisted and saved on chain.

*Note: Statically-sized state variables (everything except mapping and dynamically-sized array types) are laid out contiguously in storage starting from position 0. Multiple, contiguous items that need less than 32 bytes are packed into a single storage slot if possible. For contracts that use inheritance, the ordering of state variables is determined by the C3-linearized order of contracts starting with the most base-ward contract*

Once we execute **delegate call**, the storage of both contracts get **"merged"** into a single messy state.

We have to "tell" ProxyContract what the **state** of the **Logic contract** looks like. 

The easiest way to do this is to create a separate contract - in this example - named **StorageContract** which will represent the **state** and which proxyContract will inherit from.

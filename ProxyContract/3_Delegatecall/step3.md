# Delegate call

It's a special variant of a message call, which is identical to a message call apart from the fact that the code at the target address is executed in the context of the calling contract and msg.sender and msg.value do not change their values.

This means that a contract can dynamically load code from a different address at runtime. 

The storage, the current address and balance still refer to the calling contract, only the code is taken from the called address. 

So when Proxy delegates call to the Logic contract every storage modification will impact the storage of Logic contract.
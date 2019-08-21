# Memory

Before we start, just quick reminder:

The runtime of the EVM has several entities:

 -  `calldata`: This is the input value given to the transaction.
 -  `stack`: This is basically a list of values, each value is limited in size (32 bytes).
 -  `memory`: The memory is used when the value to store is more complex (array, mappinp). The memory is release at the end of the execution
 -  `storage`: This is a mapping, each value stored over there are persisted and saved on chain.
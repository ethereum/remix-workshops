# Memory

Before we start, just quick reminder:

The runtime of the EVM has several entities:

 -  `calldata`: This is the input value given to the transaction.
 -  `stack`: This is basically a list of values, each value is limited in size (32 bytes).
 -  `memory`: The memory is used when the value to store is more complex (array, mapping). The memory is released at the end of the execution.
 -  `storage`: This is a mapping, each value stored is persisted and saved on chain.

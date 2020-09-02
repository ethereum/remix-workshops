Before we start, just quick reminder:

The runtime of the EVM has several kinds of memory:

 -  `calldata`: This is the input value given to the transaction.
 -  `stack`: Basically, this is a list of values, each value is limited in size (32 bytes).
 -  `memory`: Memory is used when the **type** of value getting stored is more complex like an array or a mapping. This memory is **temporary** and is **released** at the end of the execution.
 -  `storage`: This is a mapping, each value stored is **persisted** and saved on chain.

A libraries looks like a **contract** but use the keyword `library` 

A library typically is a collection of useful functions sitting out there on the blockchain that any contract can use.  Because the library is already deployed, it saves the deployment costs of the many contracts that use it.

In the following contract:
 - Make a library with the name `LibraryForTest`. 
 
 It is possible to put a library in same file with another contract.  So put the library below the contract. 
 
 This library should have a method called `getFromLib` method which returns `3`.
 
 - Update the `get` method in the `test` contract to use the `LibraryForTest` library.   The function `get` should return the value it receives from `getFromLib`.

 ---------

You can find more info about libraries in <a href="https://solidity.readthedocs.io/en/latest/contracts.html?highlight=library#libraries" target="_blank">this section of the Solidity Docs</a>.

In the following contract:
 - Make a library with name `LibraryForTest`. It is possible to put the library in same file with another contract.  So do that in this example. 
 
 This library should have a method called `getFromLib` method which returns `3`.
 
 - Update the `get` method in the `test` contract to use the `LibraryForTest` library.   `get` should return the value it receives from `getFromLib`.

You can find more info about library in the [solidity documentation](https://solidity.readthedocs.io/en/v0.5.10/contracts.html?highlight=library#libraries)

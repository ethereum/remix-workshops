# Specify the compiler version with Pragma

The first line of a contract tells the compiler which version to use. This helps you not add functionality that a compiler doesn't support.

The syntax starts with `pragma solidity`, and uses standard mathematical symbols to define the range of versions in minimum and maximum pairs.

## To try

Add a pragma statement above `contract SimpleStorage` that specifies a compiler version greater than or equal to 0.4.0, and less than 0.7.0.

If you get stuck, [read the pragma documentation](https://solidity.readthedocs.io/en/v0.5.10/layout-of-source-files.html?highlight=pragma#pragmas).

When you're finished, _compile_ the contract to see if the syntax is correct.

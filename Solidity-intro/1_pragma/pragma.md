# Specify the compiler version with Pragma

The first line of a contract tells the compiler which version to use. This prevents you from adding functionality that a compiler does not support.

Here is a pragma that sets solidity to a specific version.
**pragma solidity =0.5.2;**

The syntax starts with `pragma solidity`, and uses standard mathematical symbols to define the range of versions in minimum and maximum pairs.

## Try it out!

Add a pragma statement above `contract SimpleStorage` that specifies a compiler version greater than or equal to 0.4.0, and less than 0.7.0.

If you get stuck, <a href="https://solidity.readthedocs.io/en/v0.5.10/layout-of-source-files.html?highlight=pragma#pragmas" target="_blank">read the pragma documentation</a>.

When you're finished, **compile** the contract to see if the syntax is correct.

In Solidity, *mappings* are a collection of key types and corresponding value type pairs.

The biggest difference between a mapping and an array is that you can't iterate over mappings. If we don't know a key we won't be able to access its value. If we need to know all of our data or iterate over it, we should use an array. 

If we want to retrieve a value based on a known key we can use a mapping (e.g. addresses are often used as keys). Looking up values with a mapping is easier and cheaper than iterating over arrays. If arrays become too large, the gas cost of iterating over it could become too high and cause the transaction to fail.

We could also store the keys of a mapping in an array that we can iterate over.

### Creating mappings
Mappings are declared with the syntax `mapping(KeyType => ValueType) VariableName`.
The key type can be any built-in value type or any contract, but not a reference type. The value type can be of any type.

In this contract, we are creating the public mapping `myMap` (line 6) that associates the key type `address` with the value type `uint`.

### Accessing values
The syntax for interacting with key-value pairs of mappings is similar to that of arrays.
To find the value associated with a specific key, we provide the name of the mapping and the key in brackets (line 11). 

In contrast to arrays, we won't get an error if we try to access the value of a key whose value has not been set yet. When we create a mapping, every possible key is mapped to the default value 0.

### Setting values
We set a new value for a key by providing the mapping’s name and key in brackets and assigning it a new value (line 16).

### Removing values
We can use the delete operator to delete a value associated with a key, which will set it to the default value of 0. As we have seen in the arrays section.

<a href="https://www.youtube.com/watch?v=tO3vVMCOts8" target="_blank">Watch a video tutorial on Mappings</a>.

## ⭐️ Assignment
1. Create a public mapping `balances` that associates the key type `address` with the value type `uint`.
2. Change the functions `get` and `remove` to work with the mapping balances.
3. Change the function `set` to create a new entry to the balances mapping, where the key is the address of the parameter and the value is the balance associated with the address of the parameter.
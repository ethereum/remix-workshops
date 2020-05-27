# Public, address and mapping variables

## Public variables

In the previous steps of this workshop you created a variable, and then created "setter" and "getter" functions for that variable. In fact, if you add the `public` keyword after the variable type, Solidity generates these functions, allowing you to access the current value of the state from outside the contract.

## Address types

So far you have only learned about integer types, Solidity has many more, including the `address` type designed for storing addresses of contracts, or a hash of the public half of a keypair belonging to external accounts.

## Mapping types

Mappings types allow you to create your own custom types, consisting of key/value pairs. Both the key and the value can be any type. The syntax looks like this `mapping (<key> => <value>) <modifiers> <mappingName>`.

## Let's make some!

In the .sol file for this chapter: **publicAddressMapping.sol** create a new variable of `address` type called "minter", and make it public.

Then create a new mapping:
-  that has a key/value pair that with an `address` type for the key and a `uint` type for the value. 
- make the mapping with a `public` visibility
- name the mapping **balances**

Then make a `constructor` function for this contract. 

In the constructor, use the `balances` mapping for assigning `1000` to the current `msg.sender`.

# The Constructor and Global Variables

## Constructors

The constructor is a special function run during the creation of the contract and you cannot call it afterwards.

The syntax is:

```solidity
constructor() <functionModifiers> {}
    // Code
}
```

A constructor can only use the `public` or `internal` function modifiers.

## Global Variables

Solidity has a number of [global variables](https://solidity.readthedocs.io/en/latest/units-and-global-variables.html#special-variables-functions), but for this step we are interested in `msg.sender` that contains the external address source of the current function call.

## Create a Constructor!

Create a public constructor function that sets the `minter` state variable to the value of `msg.sender`.

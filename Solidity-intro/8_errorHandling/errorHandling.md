# Error Handling

Solidity uses state-reverting exceptions to handle errors. Such an exception undoes all changes made to the state in the current call (and all its sub-calls) and flags an error to the caller.

There are three convenience functions available: `assert`, `require`, and `revert`, but for this step we focus on `require`, learn more about the other two in [the documentation](https://solidity.readthedocs.io/en/latest/control-structures.html#assert-and-require).

The syntax for `require` is `require(<logicalCheck>, <optionalErrorMessage>)`, where you can use any conditional statements available in Solidity. For example, the code below requires `amount` to be greater than 0:

```solidity
require(amount > 0);
```

## To Try

Create two new public functions, one called `mint` (that creates new coins in the creators accounts) and one called `send` (that sends coins to someone else). Give both functions two parameters: an address called `receiver`, and a `uint` called `amount`.

Add two `require` function to the `mint` function. One that checks if the caller of the function is the same as the creator, and one that checks if `amount` is less than 1 \* (10 ^ 60). If these are both true, then add `amount` to the balance of the `receiver` address.

Add one `require` function to the `send` function that checks if the caller of the function has enough coins to send the `amount` passed. If they don't, return an error message. If they do, reduce the senders balance by the amount, and send it to the recipient. Finally emit the `Sent` event created earlier.

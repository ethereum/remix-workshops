The `visibility` specifier is used to control who has access to functions and state variables.

There are four types of visibilities: `external`, `public`, `internal`, and `private`. 

They regulate if functions and state variables can be called from inside the contract, from contracts that derive from the contract (child contracts), or from other contracts and transactions.

### private
- Can be called from inside the contract

### internal
- Can be called from inside the contract
- Can be called from a child contract

### public
- Can be called from inside the contract
- Can be called from a child contract
- Can be called from other contracts or transactions

### external
- Can be called from other contracts or transactions
- State variables can not be `external`

In this example, we have two contracts, the `Base` contract (line 4) and the `Child` contract (line 55) which inherits the functions and state variables from the `Base` contract.

When you uncomment the `testPrivateFunc` (lines 58-60) you get an error because the child contract doesn’t have access to the private function `privateFunc` from the `Base` contract.

If you compile and deploy the two contracts, you will not be able to call the functions `privateFunc` and `internalFunc` directly. You will only be able to call them via `testPrivateFunc` and `testInternalFunc`.

<a href="https://www.youtube.com/watch?v=NBzQVJ6OrrQ" target="_blank">Watch a video tutorial on Visibility</a>.

## ⭐️ Assignment
Create a new function in the `Child` contract called `testInternalVar` that returns the values of all state variables from the `Base` contract that are possible to return.
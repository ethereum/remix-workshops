# The Basics

## Interacting with the functions in a deployed contract

### Problem Statment
What are the functions in the deployed contract? What parameters do they take and how can you be sure you input the correct input types.  Does it cost gas to use a particular function?  And what happens when you "transact" a function?

### Steps
1. Open up the contract by clicking the caret - so the caret points down.
![deploy contract](https://github.com/ethereum/remix-workshops/blob/master/basics/3_interacting/images/caret-deployed.png "deployed contract")

2. There are 4 functions in this contract.  If this contract imported other contracts then the functions of the imported contracts would be visible here.

3. Some of the contracts have blue buttons.  In this case, these are pure or view functions.  This means that they are just reading a property or are returning a value.  In other words, they aren't saving anything - so they are FREE.  Functions with other colors - usually orange (depending on the theme) cost gas because they are saving information.  So they are creating a **transaction**.

4. In the JSVM, you don't need to approve a transaction.  When using a more realistic test environment or when using the mainnet - you need to approve transactions for them to go through.

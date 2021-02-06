## Interacting with the functions in a deployed contract

What are the functions in the deployed contract? What parameters does a function take and how can you be sure you input the correct input types?  Does it cost gas to use a particular function?  And what happens when you click a function's **transact** button - which is to say what happens when you want to make a transaction through a function?

We will cover these questions in this chapter.

1. Open up the contract by clicking the caret - so the caret points down.
![deploy contract](https://github.com/ethereum/remix-workshops/blob/master/Basics/4_Interacting/images/instance.png?raw=true "deployed contract")

2. There are 2 functions in this contract.  Clicking the caret to the right of change Owner (outlined in red) will open up the inputs so that you can put in the parameters in separate input boxes.

If this contract had imported other contracts then the functions of the imported contracts would be visible here too.
   
![deploy contract](https://github.com/ethereum/remix-workshops/blob/master/Basics/4_Interacting/images/deployed_open2.png?raw=true "deployed contract")

3. One of the functions has a blue buttons.  Blue buttoned functions are either  **pure** or **view** functions.  This means that they are just reading a property or are returning a value.  In other words, they aren't saving anything - so they are FREE (they don’t cost gas).  Functions with other colors - usually orange (depending on the Remix theme) cost gas because they are saving information.  They are creating a **transaction**.  

4. 2_Owner.sol does not have a **payable** function.  If it did, the button's color would be red.  Payable functions allow you to send Ether to the function.  To send ETH with a payable function you put the amount you want to send in the **value** field towards the top of the screen.

5. In the JSVM, you don't need to approve a transaction.  When using a more realistic test environment or when using the mainnet - you will need to approve transactions for them to go through. Approving a transaction costs ETH. To approve a transaction when using Injected Web3, you’d typically use MetaMask.  In MetaMask, you’d choose the network - a test network that uses test ETH or you can use the mainnet where you'd use real ETH.

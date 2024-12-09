## Accessing functions in a deployed contract

1. When a contract has been successfully deployed, it will appear at the bottom of the Deploy and Run plugin. Open up the contract by clicking the caret - so the caret points down.
   ![distribuisci il contratto](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/instance.png "contratto distribuito")

2. There are 2 functions in this contract.  To input the parameters individually, clicking the caret to the right of changeOwner (outlined in red below). In the expanded view, each parameter has its own input box.

![deploy contract](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/deployed_open2.png "deployed contract")

If this contract had imported other contracts, then the functions of the imported contracts would also be visible here.  At some point, try playing with An ERC20 contract to see all its many functions.

3. Functions with blue buttons are either  **pure** or **view** functions.  This means that they are just reading a property or are returning a value.  In other words, they aren't saving anything - so they are FREE (they don’t cost gas).  Functions with other colors - usually orange (depending on the Remix theme) cost gas because they are saving information.  They are creating a **transaction**.

4. 2_Owner.sol does not have a **payable** function.  If it did, the button's color would be red.  Payable functions allow you to send Ether to the function.  To send ETH with a payable function, you put the amount you want to send in the **value** field towards the top of the Deploy & Run module.

5. In the Remix VM, you don't need to approve a transaction.  When using a more realistic test environment or when using the mainnet - you will need to approve the transactions for them to go through. Approving a transaction costs gas.

6. Choosing a public network is not done in Remix but in your Browser Wallet.  There is a plug icon to the right of the Environment title that links to chainlist.org where you can get the specs of the chain you want to interact with.
   ![chainlist](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/chainlist.png "chainlist")

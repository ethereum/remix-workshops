# Using the import statement with a URL

## You have a contract you'd like to import from github into your contract.  Furthermore the imported contract has other contract it imports with relative URL's.
 
1. In this example we'll use **ballot.sol**. Take this contract and on the line after the pragma add this line:

```import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20Mintable.sol";```

2. Compile the contract - you can see in the **Files Explorers** module that there is now an explorer called github.

3. There you can see the contract you imported and the other contracts that ERC20Mintable.sol imported.

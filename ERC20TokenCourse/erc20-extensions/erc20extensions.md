The ERC20 standard only describes the required and optional functionality that your contract needs, but you can add additional functionality.

In this section, we added the functionality to burn and mint tokens, as well as the ability to pause the contract, by using OpenZeppelin extensions.

Of course, you can write your own ERC20 token contract implementation or extensions and import them into your contract. But OpenZeppelin contracts have been audited by security experts and are a great way to add desired functionality.

### Mintable
The mint function allows the creator of the contract to mint (create) additional tokens after the contract has been deployed (line 22). As input parameters, the function needs the address that the tokens will be minted to, and the amount of tokens that should be minted.

We don't have to import `mint()` from another contract since the mint function is already part of the <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol" target="_blank">ERC20 contract</a> implementation of OpenZeppelin. We import `Ownable` (line 7) which is a contract module that provides a basic access control mechanism that allows an owner to have exclusive access to specific functions. In this contract, we add the inherited `onlyOwner` modifier to the `mint` function (line 22) and restrict access to this function to the "owner".

The contract will inherit additional functions like owner(), transferOwnership() and renounceOwnership() to manage access, from the <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol" target="_blank">Ownable contract</a>. 

### Burnable
By importing the "ERC20Burnable" (line 5) and inheriting its functions (line 9) our contract allows token holders to destroy their tokens as well as the tokens in their allowance.
For more information, have a look at the <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol" target="_blank">ERC20Burnable contract</a>.

### Pausable
With the "Pausable" contract module (line 6 and 9) the owner is able to pause (line 14) and unpause (line 18) the contract. In the pause state, tokens can't be transferred, which can be helpful in emergency scenarios.
For more information, have a look at the <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/Pausable.sol" target="_blank">Pausable contract</a>.

Have a look at the OpenZeppelins <a href="https://docs.openzeppelin.com/contracts/4.x/wizard" target="_blank">Contract Wizard</a>, which allows you to easily add additional functionality.

If you successfully completed this course, try the Learneth NFT Course as the next step in your journey.

## ⭐️ Assignment
1. Try to mint tokens to an account after deployment. Call `totalSupply()` and `balanceOf()` to confirm the correct execution.
2. Burn tokens and then call `totalSupply()` and `balanceOf()` to confirm the correct execution.
3. Test the pause function by pausing the contract using the owner account and trying to make a transfer with a second account. The transaction should not be able to be executed and will throw the exception: "Pausable: paused".

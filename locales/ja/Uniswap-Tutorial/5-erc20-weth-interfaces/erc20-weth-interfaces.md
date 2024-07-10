In this section, we'll explore the `IERC20` interface, a standard interface for interacting with ERC-20 tokens and the `IWETH` interface, a standard interface for interacting with wrapped Ether (WETH). Understanding these interfaces is crucial as it is used in the Uniswap V3 Swap contract to handle token transfers and approvals.

You can find a "Solidity ERC20 Token Course" for beginners in LearnEth to understand the ERC20 token standard in more detail.

## IERC20 Interface

On line 80, we define the `IERC20` interface. This interface defines a standard set of functions that ERC-20 tokens must implement. Let's examine the key functions within this interface:

### 1. totalSupply

On line 81, we define the `totalSupply` function. This function returns the total supply of the token.

### 2. balanceOf

On line 83, we define the `balanceOf` function. This function returns the balance of the specified address.

### 3. transfer

On line 85, we define the `transfer` function. This function transfers tokens from the sender to the specified recipient.

### 4. allowance

On line 87, we define the `allowance` function. This function returns the amount of tokens that the spender is allowed to spend on behalf of the owner.

### 5. approve

On line 89, we define the `approve` function. When called, this function approves a spender to spend the specified amount of tokens on behalf of the sender.

### 6. transferFrom

On line 91, we define the `transferFrom` function. This function transfers tokens from the specified sender to the recipient. The function can only be called by the spender if the spender is allowed to spend the specified amount of tokens on behalf of the sender.

### 7. Events

On lines 102-103, we define the `Transfer` and `Approval` events. These events are emitted when the `transfer` and `approve` functions are called, respectively.

## IWETH Interface

On line 106, we define the `IWETH` interface. This interface extends the `IERC20` interface and defines two additional functions:

### 1. deposit

On line 107, we define the `deposit` function. This function deposits ETH into the contract and returns the equivalent amount of WETH. This function is used to wrap ETH into WETH.
We need to wrap ETH into WETH because the Uniswap V3 Swap contract only supports ERC-20 tokens.

### 2. withdraw

On line 109, we define the `withdraw` function. This function withdraws the specified amount of WETH from the contract and returns the equivalent amount of ETH. This function is used to unwrap WETH into ETH.

## Conclusion

In this tutorial, we explored the Uniswap V3 Swap contract.  To get a full sense of how Uniswap works, try making some swaps on the <a href="https://app.uniswap.org/" target="_blank">Uniswap DApp</a> and go to the <a href="https://docs.uniswap.org/" target="_blank">Uniswap docs</a>.

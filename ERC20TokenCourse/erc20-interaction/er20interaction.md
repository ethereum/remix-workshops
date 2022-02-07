In this section, we will deploy a contract in our browser and test its functionality.

### 1. Deploy the contract
**1.1** Compile your EduCoin contract in the "Solidity compiler" module of the Remix IDE.

**1.2** In the "Deploy & run transactions" module, select your contract "EduCoin" in the contract input field and click on the "Deploy" button. Always make sure to select the correct contract in the contract selector input field.

**GIF** Compile and deploy:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_compileAndDeploy.gif?raw=true" alt="Compile and deploy contract" width="300"/>

### 2. Test the functions
Expand the token contract functions in the IDE.

#### 2.1 Decimals
Click on the "decimals" button to call the decimals() function.
It should return "18".

####  2.2 Name
Click on the "name" button to call the name() function.
It should return "EduCoin".

#### 2.3 Symbol
Click on the "symbol" button to call the symbol() function.
It should return "EDC".

#### 2.4 Total supply
Click on the "totalSupply" button to call the totalSupply() function.
It should return 1000000000000000000000 (1000*10**18).

**GIF** Test decimals, name, symbol, and totalSupply functions:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_test_functions.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.5 Balance of
**2.5.1** Go to the "ACCOUNT" section in the sidebar and copy the displayed address by using the copy icon next to it.

**2.5.2** Paste the address in the input field next to the "balanceOf" function button and click on the button.
It should return 1000000000000000000000 (1000*10**18).

**GIF** Test balanceOf function:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_balanceOf.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.6 Transfer
We will transfer EduCoin from one account to a second account.

**2.6.1** Go to the "ACCOUNT" section in the sidebar and click on the displayed address. This should open a dropdown. Select the second address displayed and copy its address (account 2).

**2.6.2** Open the dropdown and select the first account again (account 1), because this is the account that we want to use to make the transfer.

**2.6.3** Paste the address in the input field next to the "transfer" function button, input the number 500000000000000000000, and click on the button.

**2.6.4** If you check the balances for account 1 and account 2, they should both return the amount 500000000000000000000.

**GIF** Test transfer function:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_transfer.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.7 Approve
We will now allow account 1 to spend tokens on behalf of account 2.

**2.7.1** Go to the "Account" section, copy the address of account 1, then set it to account 2 again.

**2.7.2** In the approve function, enter the address of account 1 as the input for spender and set the amount to 250000000000000000000.

**GIF** Test approve function:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_approve.gif?raw=true" alt="Test approve function" width="300"/>

#### 2.8 Allowance
Next to the "allowance" button enter the address of account 2 as the owner and account 1 as the spender; click on the button.
It should return 1000000000000000000000.

**GIF** Test allowance function:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_allowance.gif?raw=true" alt="Test allowance function" width="300"/>

#### 2.9 TransferFrom
Now account 1 will transfer 250000000000000000000 tokens from account 2 to its own account.

**2.9.1** Select account 1 in the "ACCOUNT" section.

**2.9.2** Next to the "transferFrom" button enter the address of account 2 as the sender and account 1 as the recipient, enter 250000000000000000000 as the amount and click on the button.

**2.9.3** Check the balances of accounts 2 and 1, they should return 250000000000000000000 and 750000000000000000000.

**GIF** Test transferFrom function:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_transferFrom.gif?raw=true" alt="Test transferFrom function" width="300"/>
ERC20標準は、コントラクトの必要性に応じて必要な機能やオプション機能のみを記述しますが、追加の機能を加えることもできます。

このセクションでは、OpenZeppelinエクステンションを使用してトークンの焼却やトークンのミントする機能、およびコントラクトの停止機能を追加します。

自身でERC20トークンコントラクトの実装やエクステンションを作成して、コントラクトにインポートすることもできまが、 OpenZeppelinコントラクトは、セキュリティの専門家に監査されており、欲しい機能を追加するのにも適しています。

### ミント可能

mint関数により、コントラクトの作成者は、コントラクトのデプロイ後に追加のトークンをミントすることが出来ます(22行目)。 この関数では、入力パラメータとしてトークンがミントされるアドレスとミントされるトークンの量が必要です。

mint関数は、既にOpenZeppelinの<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol" target="_blank">ERC20コントラクト</a>の実装に含まれていることから、別のコントラクトから`mint()`をインポートする必要はありません。 基本的なアクセスコントロール機構を提供するモジュールである `Ownable`(7行目)をインポートしています。これによって、所有者が特定の関数に排他的にアクセスすることができます。 In this contract, we add the inherited `onlyOwner` modifier to the `mint` function (line 22) and restrict access to this function to the "owner".

The contract will inherit additional functions like owner(), transferOwnership() and renounceOwnership() to manage access, from the <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol" target="_blank">Ownable contract</a>.

### 焼却可能

By importing the "ERC20Burnable" (line 5) and inheriting its functions (line 9) our contract allows token holders to destroy their tokens as well as the tokens in their allowance.
For more information, have a look at the <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol" target="_blank">ERC20Burnable contract</a>.

### 停止可能

With the "Pausable" contract module (line 6 and 9) the owner is able to pause (line 14) and unpause (line 18) the contract. In the pause state, tokens can't be transferred, which can be helpful in emergency scenarios.
For more information, have a look at the <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/Pausable.sol" target="_blank">Pausable contract</a>.

Have a look at the OpenZeppelins <a href="https://docs.openzeppelin.com/contracts/4.x/wizard" target="_blank">Contract Wizard</a>, which allows you to easily add additional functionality.

If you successfully completed this course, try the Learneth NFT Course as the next step in your journey.

## ⭐️ 演習

1. Try to mint tokens to an account after deployment. Call `totalSupply()` and `balanceOf()` to confirm the correct execution.
2. Burn tokens and then call `totalSupply()` and `balanceOf()` to confirm the correct execution.
3. Test the pause function by pausing the contract using the owner account and trying to make a transfer with a second account. The transaction should not be able to be executed and will throw the exception: "Pausable: paused".

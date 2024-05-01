A token standard tells us what functionality the contract needs to comply with it. How this functionality is implemented is up to the developers. In this contract, we will use an ERC20 token contract implementation from OpenZeppelin (line 4). In this case, we import version 4.4.0 of the OpenZeppelin contracts.

查看它们精心注释的<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol" target="_blank">ERC20合约</a>以更好地了解ERC20是如何实现的。除了ERC20标准规定的功能外，该合约还提供其他功能。 Apart from the functionality specified in the ERC20 standard, this contract provides additional functionality.

我们将创建自己的名为EduCoin（第6行）的合约，并继承OpenZepplin ERC20代币合约（第4行）。

该合同实现了ERC20 Token标准中可选函数`name()`和`symbol()`，并具有构造函数，在部署该合约时可以设置其值（第7行）。在这种情况下，我们将使用默认值。我们将把代币起名为`MyToken`，并使`MTK`作为其符号。
In this case, we are going to use the default values. We will call our token the same as the contract `"MyToken"` and make `"MTK"` its symbol.

Next, we make use of the inherited `_mint` function (line 8) that allows us to create tokens upon deployment of the contract. Inside the parameters, we specify the address of the account that receives the tokens and the amount of tokens that are created.
In this case, the account that deploys the contract will receive the tokens and we set the amount to 1000000 to the power of `decimals()`. The optional function `decimals()` of the ERC20 token standard is implemented and set to the default value of 18. This will create 1000000 tokens that will have 18 decimal places.

## ⭐️ 作业

1. 将您的合约名称更改为`EduCoin`。
2. 将您的代币名称更改为`EduCoin`。
3. 将您的代币符号更改为`EDC`。
4. 将要铸造的代币数量从1000000更改为1000。

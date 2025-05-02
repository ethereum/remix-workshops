一个代币标准告诉我们合约需要遵守哪些功能。 如何实现这些功能取决于开发人员。 在此合约中，我们将使用来自OpenZeppelin的ERC20代币合约实现（第4行）。 在这种情况下，我们导入了OpenZeppelin合约的4.4.0版本。

查看它们精心注释的<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol" target="_blank">ERC20合约</a>以更好地了解ERC20是如何实现的。除了ERC20标准规定的功能外，该合约还提供其他功能。 除了ERC20标准规定的功能外，该合约还提供其他功能。

我们将创建自己的名为EduCoin（第6行）的合约，并继承OpenZepplin ERC20代币合约（第4行）。

该合同实现了ERC20 Token标准中可选函数`name()`和`symbol()`，并具有构造函数，在部署该合约时可以设置其值（第7行）。在这种情况下，我们将使用默认值。我们将把代币起名为`MyToken`，并使`MTK`作为其符号。
In this case, we are going to use the default values. We will call our token the same as the contract `"MyToken"` and make `"MTK"` its symbol.

接下来，我们利用继承而来的`_mint`函数（第8行），在部署智能合约时生产代币。 在参数内部，指定接收代币账户地址和要创建多少个代币。
在本例中，部署智能合约的账户将收到代币，并且我们将数量设置为1000000的`decimals()`次方。 本合约实现了ERC20代币标准的可选函数`decimals()`，并将其设置为默认值18。 这将创建1000000个具有18位小数的代币。

## ⭐️ 作业

1. 将您的合约名称更改为`EduCoin`。
2. 将您的代币名称更改为`EduCoin`。
3. 将您的代币符号更改为`EDC`。
4. 将要铸造的代币数量从1000000更改为1000。
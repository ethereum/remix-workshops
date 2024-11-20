ERC20标准仅描述了合约所需和可选的功能，但您可以添加其他功能。

在本节中，我们使用OpenZeppelin扩展添加了燃烧和铸造代币的功能，以及暂停合约的能力。

当然，您可以编写自己的ERC20代币合约实现或扩展并将其导入到您的合约中。但是OpenZeppelin合约已经通过安全专家审核，是添加所需功能的绝佳方式。 但是OpenZeppelin合约已经通过安全专家审核，是添加所需功能的绝佳方式。

### 可铸造

mint 函数允许合约创建者在部署后铸造（创建）新的代币（第22行）。 作为输入参数，该函数需要被铸造代币地址和应该被铸造数量。

由于mint函数已经成为<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol" target="_blank">ERC20合约</a>实现的一部分，因此我们不必从另一个合约中导入它。我们导入的Ownable（第7行），这是一个提供基本访问控制机制以允许所有者具有对特定功能独占访问权的合约模块。 在此合约中 ， 我们向`mint`函数(第22行)添加了继承的`onlyOwner`修饰符，并将对此函数的访问限制为所有者才能访问。 我们导入的`Ownable`（第7行），是一个提供基本访问控制机制以允许所有者具有对特定功能独占访问权的合约模块。 在此合约中 ， 我们向`mint`函数(第22行) 添加了继承的`onlyOwner`修饰符，并将对此函数的访问限制为所有者才能访问。

该合约将从<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol" target="_blank">Ownable contract</a>继承额外的函數`owner()`、`transferOwnership()`和`renounceOwnership()`来管理访问权限。

### 燃烧

通过导入"ERC20Burnable"（第5行）并对其进行继承（第9行），我们的合约允许代币持有人销毁他们的代币以及其`allowance`中的代币。
通过导入“ERC20Burnable”（第5行）并对其进行继承（第9行），我们的合约允许代币持有人销毁他们的代币以及其`allowance`中的代币。有关更多信息，请查看 <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol" target="_blank">ERC20Burnable 合约</a>。

### 暂停

使用“Pausable”合约模块（第6和9行），所有者可以暂停（第14行）和启用（第18行）合约。 在暂停状态下，无法转移代币，这在紧急情况下可能会有所帮助。
使用“Pausable”合约模块（第6和9行），所有者可以暂停（第14行）和启用（第18行）合约。在暂停状态下，无法转移代币，这在紧急情况下可能会有所帮助。有关更多信息，请查看<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/Pausable.sol" target="_blank">Pausable 合约</a>.。

请查看<a href="https://docs.openzeppelin.com/contracts/4.x/wizard" target="_blank">Contract Wizard</a>，它使您可以轻松添加其他功能。

如果您成功完成了此课程，请尝试学习 NFT 课程作为您旅程的下一步。

## ⭐️ 作业

1. 尝试在部署后，向一个账户铸造代币。 尝试在部署后，向一个账户铸造代币。调用`totalSupply()`和`balanceOf()`确认正确执行。
2. 销毁代币，然后调用`totalSupply()`和`balanceOf()`确认正确执行。
3. 使用所有者账户测试`pause`函数，并尝试使用第二个账户进行转移。交易将无法执行并抛出异常：”Pausable: paused“。 交易将无法执行并抛出异常："Pausable: paused"。

ERC20（Ethereum Request for Comments 20）是管理以太坊区块链上同质化代币的标准合约。

同质化代币彼此相等，具有相同的价值、行为和权利。 同质化代币通常用作交换媒介，如ETH或BTC等货币。 但它们也可以有其他用途，例如投票权或声誉。

如果您想了解更多关于ERC20代币标准的信息，请查看其以<a href="https://eips.ethereum.org/EIPS/eip-20" target="_blank">太坊改进提案</a>中的规范说明。

## 接口

为了获得与ERC20代币合约交互所需功能的概述，我们查看一个与ERC20合约交互的接口。
为了获得与ERC20代币合约交互所需功能的概述，我们查看一个与ERC20合约交互的接口。该接口（第9行）是<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/token/ERC20/IERC20.sol" target="_blank">OpenZeppelin</a>提供的开源合约库的一部分。

## ERC20 函数

符合ERC20标准的合约必须实现以下六个函数：

### totalSupply

函数`totalSupply`（第13行）返回可用代币的总量。

### balanceOf

函数`balanceOf`（第18行）返回地址`account`账户拥有的代币数量。

### transfer

函数`transfer`（第27行）将`amount`数量的代币转移到地址`recipient`。此功能必须发出`Transfer`事件（见下文），并且在发送方没有足够代币进行转移时应引发异常。
同质化代币彼此相等，具有相同的价值、行为和权利。同质化代币通常用作交换媒介，如ETH或BTC等货币。但它们也可以有其他用途，例如投票权或声誉。

### approve

函数`approve`（第52行）为地址`spender`创建一个许可，以便其可以代表调用该函数的账户转移一定数量的代币。

### allowance

函数`allowance`（第36行）返回地址`spender`被允许为`owner`地址的账户消费的代币数目。

### transferFrom

函数`transferFrom`（第63行）以发送方地址`sender`名义向接收方地址`recipient`转移一定数量的代币。此功能必须触发`Transfer`事件。
此功能**必须**触发`Transfer`事件。

## ERC20 Events

ERC20合约还必须发出两个事件：

### Transfer

当从`indexed from`帐户向`indexed to`帐户转移`value`数量的代币时，必须发出`Transfer`（第71行）事件。 当从`indexed from`帐户向`indexed to`帐户转移`value`数量的代币时，必须发出`Transfer`（第71行）事件。参数`from`和`to`是`indexed`，允许我们使用这些参数作为过滤器搜索这些事件。

### Approval

当`indexed owner`批准`indexed spender`代表其自身转移`value`数量的代币时，必须发出`Approval`（第77行）事件。

## ERC20可选函数

除了强制性函数和事件外，在ERC20标准中还指定了三个未在此接口中实现的可选函数：

### name

`function name() external view returns (string);`

返回代币的名称。

### symbol

`function symbol() external view returns (string);`

返回代币的符号。

### decimals

`function decimals() external view returns (uint8);`

返回代币使用的小数位数。

您可能想要使用小数点将您的代币分成任意金额，例如1.5 ETH。 EVM（以太坊虚拟机）只支持整数。 您可能想要使用小数点将您的代币分成任意金额，例如1.5 ETH。EVM（以太坊虚拟机）只支持整数。这就是为什么ERC20标准建议实现指定代币具有多少小数位功能。18个小数位是行业标准。 18个小数位是行业标准。

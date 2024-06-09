在本节中，我们将探讨`IERC20`接口（用于与 ERC-20 代币交互的标准接口）和`IWETH`接口（用于与包装以太币`WETH`交互的标准接口）。 了解这些接口至关重要，因为它在 Uniswap V3 交换合约中用于处理代币传输和批准。

您可以在 LearnEth 中找到针对初学者的“Solidity ERC20 代币课程”，以更详细地了解 ERC20 代币标准。

## IERC20 接口

在第 80行上，我们定义了 `IERC20` 接口。 该接口定义了 ERC-20 代币必须实现的一组标准功能。 让我们查看一下该接口中的关键函数：

### 1. totalSupply

在第81行上，我们定义了 `totalSupply` 函数。 此函数返回代币的总供应量。

### 2. balanceOf

在第83行上，我们定义了 `balanceOf ` 函数。 此函数返回指定地址的余额。

### 3. transfer

在第85行上，我们定义了 `transfer ` 函数。 该函数将代币从发送者转移到指定的接收者。

### 4. allowance

在第87行上，我们定义了 `allowance ` 函数。 此函数返回允许花费者代表所有者花费的代币数量。

### 5. approve

在第89行上，我们定义了 `approve ` 函数。 调用时，此函数会批准花费者代表发送者花费指定数量的代币。

### 6. transferFrom

在第91行上，我们定义了 `transferFrom ` 函数。 此函数将代币从指定的发送者传输到接收者。 仅当允许花费者代表发送者花费指定数量的代币时，该函数才能由花费者调用。

### 7. Events

在第102-103行中，我们定义了`Transfer`和`Approval`事件。 这些事件分别在调用 `transfer` 和 `approve` 函数时发生。

## IWETH 接口

在第 106行上，我们定义了 `IWETH ` 接口。 这个接口扩展了 `IERC20` 接口，并定义了两个额外的函数：

### 1. deposit

在第107行上，我们定义了 `deposit ` 函数。 该函数将 ETH 存入合约并返回等值的 WETH。 该函数用于将ETH包装成WETH。
我们需要将 ETH 包装成 WETH，因为 Uniswap V3 交换合约仅支持 ERC-20 代币。

### 2. withdraw

在第109行上，我们定义了 `withdraw ` 函数。 该函数从合约中提取指定数量的WETH并返回等值数量的ETH。 该函数用于将 WETH 解包为 ETH。

## 结论

在本教程中，我们探索了 Uniswap V3 交换合约。  要全面了解 Uniswap 的工作原理，请尝试在 <a href="https://app.uniswap.org/" target="_blank">Uniswap DApp</a> 上进行一些交换，并访问<a href="https://docs.uniswap.org/" target="_blank">Uniswap 文档</a>。

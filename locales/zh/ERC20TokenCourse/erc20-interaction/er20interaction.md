在本节中，我们将在浏览器中部署合约并测试其功能。

### 1. 部署合约

**1.1** 在 Remix IDE 的“Solidity 编译器”模块中编译您的 EduCoin 合约。

**1.2** 在“部署和运行交易”模块中，在合约输入字段中选择您的合约“EduCoin”，然后单击“部署”按钮。始终确保在合约选择器输入字段中选择正确的合约。 始终确保在合约选择器输入字段中选择正确的合约。

**GIF** 编译和部署: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_compileAndDeploy.gif?raw=true" alt="Compile and deploy contract" width="300"/>

### 2. 测试函数

展开 IDE 中的代币合约函数。

#### 2.1 Decimals

单击“decimals”按钮以调用`decimals()`函数。它应该返回“18”。
它应该返回“18”。

#### 2.2 Name

单击“name”按钮调用 name() 函数。
它应该返回“EduCoin”。

#### 2.3 Symbol

单击“symbol”按钮来调用symbol() 函数。
它应该返回 “EDC”。

#### 2.4 Total supply

单击“totalSupply” 按钮以调用 `totalSupply()` 函数。它应该返回 1000000000000000000000（1000_10\*\*18）。
它应该返回 1000000000000000000000 (1000_10\*\*18) 。

**GIF** 测试 decimals、name、symbol 和 totalSupply 函数：: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_test_functions.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.5 Balance of

**2.5.1** 转到侧边栏的 "ACCOUNT" 部分，并使用旁边的复制图标复制地址。

**2.5.2** 将地址粘贴到`balanceOf`函数按钮旁边的输入字段中，然后单击该按钮。
应该返回 1000000000000000000000 (1000_10\*\*18).
应该返回 1000000000000000000000 (1000_10\*\*18) 。

**GIF** 测试 balanceOf 函数: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_balanceOf.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.6 Transfer

我们将从一个帐户转移 EduCoin 到第二个帐户。

**2.6.1** 转到侧边栏的 "ACCOUNT" 部分，并单击显示的地址。这会打开一个下拉菜单，选择显示的第二个地址并复制其地址（帐户 2）。 这会打开一个下拉菜单。 选择显示的第二个地址并复制其地址（帐户 2）。

**2.6.2** 打开下拉菜单并再次选择第一个帐户（帐户 1），因为这是我们要使用来进行转账的帐户。

**2.6.3** 将地址粘贴到`transfer`函数按钮旁边的输入字段中，输入数字 50000000000000000000，然后单击该按钮。

**2.6.4** 如果您检查帐户 1 和 帐户 2 的余额，则两者都应返回金额为500000000000000000000。

**GIF** 测试transfer函数: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_transfer.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.7 Approve

现在，我们将允许账号1代表账号2消费代币。

**2.7.1** 转到“Account”部分，复制账号1的地址，然后再次设置回账号2。

**2.7.2** 在授权功能中，请将 account 1 的地址输入为 spender ，并将金额设置为250000000000000000000。

**GIF** 测试 approve 函数: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_approve.gif?raw=true" alt="Test approve function" width="300"/>

#### 2.8 Allowance

在“allowance”按钮旁边，将帐户2的地址作为owner，账户1作为spender；然后单击该按钮。它应该返回1000000000000000000。
它应该返回1000000000000000000。

**GIF** 测试 allowance 函数: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_allowance.gif?raw=true" alt="Test allowance function" width="300"/>

#### 2.9 TransferFrom

现在，账号1将从账号2中转移250000000000000000000个代币到自己的账户中。

**2.9.1** 在“ACCOUNT”部分选择帐户1。

**2.9.2** 在"transferFrom"按钮旁边输入account 2的地址作为发送方和account 1的地址作为接收方，输入金额250000000000000000000

**2.9.3** 检查account 2和account 1的余额，应该返回250000000000000000000 和 750000000000000000000。

**GIF** 测试 transferFrom 函数: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_transferFrom.gif?raw=true" alt="Test transferFrom function" width="300"/>
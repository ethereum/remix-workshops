## 访问已部署合约中的函数

1. 合约部署成功后，它将显示在 Deploy and Run 插件的底部。 单击插入符号打开合约 - 然后插入符号会指向下方。
   ![deploy contract](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/instance.png "deployed contract")

2. 这个合约有两个函数。  要单独输入参数，请单击changeOwner右侧的插入符号（下面以红色框出）。 在展开视图中，每个参数都有自己的输入框。

![deploy contract](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/deployed_open2.png "deployed contract")

如果此合约导入了其他合约，则导入的合约功能也会在此处显示。  在某些时候，尝试使用 ERC20 合约来了解它的所有功能。

3. 带有蓝色按钮的功能要么是**pure**函数，要么是**view**函数。  这意味着它们只是读取属性或返回值。  换句话说，它们不保存任何东西 - 因此它们是免费的（不需要消耗 gas）。  其他颜色的功能 - 通常为橙色（取决于 Remix 主题）会消耗 gas，因为它们正在保存信息。  它们会创建**交易**。

4. 2_Owner.sol 没有**payable**函数。  如果有，则按钮将变成红色。  可支付函数允许您向该函数发送以太币。  要使用可支付函数发送 ETH，请在 Deploy & Run 模块顶部的 **value** 字段中输入您想要发送的金额。

5. 在 Remix VM 中，您无需批准交易即可进行操作。  当使用更真实的测试环境或使用主网时 - 您需要批准交易才能使其通过。 批准交易需要花费 gas。

6. 选择公共网络不是在 Remix 中完成，而是在你的浏览器钱包中。  环境标题右侧有一个插头图标，链接到 chainlist.org，在那里可以获取与所需链互动所需规格。
   ![chainlist](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/chainlist.png "chainlist")

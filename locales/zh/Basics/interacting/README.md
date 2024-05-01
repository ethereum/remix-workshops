## 访问已部署合约中的函数

1. When a contract has been successfully deployed, it will appear at the bottom of the Deploy and Run plugin. Open up the contract by clicking the caret - so the caret points down.
   一旦一个合约成功地被部署，在“Deploy and Run”插件底部，通过点击小三角形展开该合约 - 使其指向下方。
   ![deploy contract](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/instance.png "deployed contract")

2. There are 2 functions in this contract.  To input the parameters individually, clicking the caret to the right of changeOwner (outlined in red below). In the expanded view, each parameter has its own input box.

![deploy contract](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/deployed_open2.png "deployed contract")

如果此合约导入了其他合约，则导入的合约功能也会在此处显示。  At some point, try playing with An ERC20 contract to see all its many functions.

3. 其中一类函数是蓝色按钮。带有蓝色按钮的功能要么是**pure**函数，要么是**view**函数。这意味着它们只是读取属性或返回值。换句话说，它们不保存任何东西 - 因此它们是免费的（不需要消耗 gas）。其他颜色的功能 - 通常为橙色（取决于 Remix 主题）会消耗 gas，因为它们正在保存信息。它们会创建**交易**。  This means that they are just reading a property or are returning a value.  In other words, they aren't saving anything - so they are FREE (they don’t cost gas).  Functions with other colors - usually orange (depending on the Remix theme) cost gas because they are saving information.  They are creating a **transaction**.

4. 2_Owner.sol does not have a **payable** function.  If it did, the button's color would be red.  Payable functions allow you to send Ether to the function.  2_Owner.sol 没有**payable**函数。如果有，则按钮将变成红色。可支付函数允许您向该函数发送以太币。要使用可支付函数发送 ETH，请在 Deploy & Run 模块顶部的 **value** 字段中输入您想要发送的金额。

5. 在 Remix VM 中，您无需批准交易即可进行操作。当使用更现实的测试环境或主网时，您需要批准交易才能使其通过。批准交易需要花费 gas。  When using a more realistic test environment or when using the mainnet - you will need to approve the transactions for them to go through. Approving a transaction costs gas.

6. 选择公共网络不是在 Remix 中完成而是在浏览器钱包中完成（通常为 Metamask）。环境标题右侧有一个插头图标，链接到 chainlist.org，在那里可以获取与所需链互动所需规格。
   ![chainlist](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/chainlist.png "chainlist")  There is a plug icon to the right of the Environment title that links to chainlist.org where you can get the specs of the chain you want to interact with.
   这个合约有两个函数。点击changeOwner右侧的小三角形（如下图所示），将打开输入框，以便您可以在单独的输入框中放入参数。

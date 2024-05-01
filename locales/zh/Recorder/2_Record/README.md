# 设置一系列繁琐的步骤

## Following this could get tedious but that's the point.

我们将要：

- 部署一个投票合约，在构造函数中输入3个提案。
- 授予2个额外地址投票权限（因此我们总共有3个投票地址）。
- 让一个地址为提案1（基于0的索引）进行投票，另外两个地址为提案2进行投票。

1. 从示例Solidity文件中获取3_Ballot.sol并编译它。然后进入“Deploy & Run Module”。  Then go to the **Deploy & Run** Module.

2. 选择JavaScript VM环境。

3. 在构造函数参数中-输入["0x50310000000000000000000000000000000000000000000 0 0 0 0", "0x50320000 00 00 00 00, "Ox503300OOOOOOOOOOOOO"]，然后单击“Deploy”按钮。

4. 打开已部署的合约。

5. In the **vote** function put in 2.  在`vote`函数中输入2。这意味着您作为`msg.sender`和`chairperson`正在对列表中位置2处的提案进行投票，即我们列表中的最后一个提案。

6. Now you need to give other addresses the right to vote.  Select another address in the **account** pulldown and copy it and then **go back to the 1st address**.  Paste the copy address into the textbox next to the giveRightToVote function.  现在您需要赋予其他地址投票权利。在帐户下拉菜单中选择另一个地址并复制它，然后返回到第1个地址。将复制的地址粘贴到`giveRightToVote`函数旁边的文本框中。再次选择另一个地址并复制它，然后再回到第1个地址并将其粘贴到`giveRightToVote`中。

7. 现在您有3个具有投票权的地址。

8. 切换到您授予投票权的其中一个地址，并为提案1进行投票（在vote函数旁边的文本框中输入1）。然后切换到另一个地址，并使用该地址为提案2进行投票。  (Put **1** in the textbox next to the vote function).  And then switch to the other address and vote for proposal **2** with that one.

9. Open up the **Transactions recorded** section of the module - by clicking on the caret. Click the hard disk icon in the **Transactions recorded** section to save your steps.
   通过单击插入符号打开模块中的交易记录，点击保存图标来保存上述步骤。
   ![recorder](https://github.com/ethereum/remix-workshops/blob/master/Recorder/2_Record/images/recorder.png?raw=true "recorder")

10. 你会得到一个模态窗口，告诉你它想要保存名为**scenario.json**的文件。点击“确定”。  Click OK.

11. 单击**winningProposal**函数以确认最终提案获胜-即数组中位置2处的提案。**0: uint256: winningProposal_ 2** 按照这个流程可能会变得很乏味，但这正是重点。

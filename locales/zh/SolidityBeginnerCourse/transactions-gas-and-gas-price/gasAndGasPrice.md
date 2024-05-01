As we have seen in the previous section, executing code via transactions on the Ethereum Network costs transaction fees in the form of Ether. The amount of fees that have to be paid to execute a transaction depends on the amount of _gas_ that the execution of the transaction costs.

### Gas

Gas是衡量在以太坊网络上执行特定操作所需计算工作量的单位。

### Gas price

Gas相对于Ethereum有时被比作给汽车提供燃料。你的汽车消耗燃料的数量大多时候是相同的，但你为燃料支付的价格取决于市场。 类似地，一个交易需要消耗固定数量gas来完成与之相关联的计算工作。然而，发送方愿意为gas支付多少钱则由他们自己决定。具有更高gas价格的交易将更快地进行；具有非常低gas价格可能根本无法进行。

Similarly, the amount of _gas_ that a transaction requires is always the same for the same computational work that is associated with it. However the price that the sender of the transaction is willing to pay for the _gas_ is up to them. Transactions with higher _gas prices_ are going through faster; transactions with very low _gas prices_ might not go through at all.

正如我们在前一节中所看到的，通过以太坊网络上的交易执行代码需要以Ether形式支付交易费用。要执行一个交易所需支付的费用取决于该交易执行所需的gas数量。 当发送一个交易时，发送方必须在执行该交易时支付gas费（ gas_price \* gas ）。如果在完成执行后还剩下了一些gas，则会退还给发送方。

Gas价格用gwei表示。

### Gas limit

When sending a transaction, the sender specifies the maximum amount of gas that they are willing to pay for. 当发送一个交易时，发送方指定他们愿意为其支付最大数量的gas。如果他们设置得过低，则其交易可能会因未能完成而耗尽所有可用gas，并导致任何已做出修改都被撤销且不可退款。 In this case, the _gas_ was consumed and can’t be refunded.

了解更多关于gas的信息：<a href="https://ethereum.org/en/developers/docs/gas/" target="_blank">ethereum.org</a>.

<a href="https://www.youtube.com/watch?v=oTS9uxU6cAM" target="_blank">观看有关Gas和Gas价格的视频教程</a>。

## ⭐️ 作业

在`Gas`合约中创建一个名为`cost`、类型为`uint`的新`public`状态变量。将部署合约所需的gas成本存储到这个新变量中，包括你正在存储值所需支付的费用。 Store the value of the gas cost for deploying the contract in the new variable, including the cost for the value you are storing.

提示：您可以在Remix终端中检查交易详细信息，包括gas成本。您还可以使用Remix插件Gas Profiler来检查交易的gas成本。 You can also use the Remix plugin _Gas Profiler_ to check for the gas cost of transactions.

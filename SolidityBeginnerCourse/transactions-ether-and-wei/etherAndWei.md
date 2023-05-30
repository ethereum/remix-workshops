*Ether* (ETH) is a cryptocurrency. *Ether* is also used to pay fees for using the Ethereum network, like making transactions in the form of sending *Ether* to an address or interacting with an Ethereum application.
以太币（ETH）是一种加密货币。以太币也用于支付使用以太坊网络的费用，例如将以太币发送到一个地址或与以太坊应用程序进行交互。

### 以太单位
To specify a unit of *Ether*, we can add the suffixes `wei`, `gwei`, or `ether` to a literal number.
为了指定一个以太单位，我们可以在数字后面添加`wei`、`gwei`或`ether`这些后缀。

#### `wei`
*Wei* is the smallest subunit of *Ether*, named after the cryptographer [Wei Dai](https://en.wikipedia.org/wiki/Wei_Dai). *Ether* numbers without a suffix are treated as `wei` (line 7).
Wei是Ether的最小子单位，得名于密码学家[Wei Dai](https://en.wikipedia.org/wiki/Wei_Dai)。没有后缀的Ether数字被视为wei（第7行）。

#### `gwei`
1个GWei（千兆Wei）等于10^9 Wei。

#### `ether`
One `ether` is equal to 1,000,000,000,000,000,000 (10^18) `wei` (line 11).
1个`ether`等于10^18 Wei（第11行）。

<a href="https://www.youtube.com/watch?v=ybPQsjssyNw" target="_blank">观看有关Ether和Wei的视频教程。</a>.

## ⭐️ 作业
1. 创建一个名为`oneGWei`的`public uint`，并将其设置为1 `gWei`。
2. 创建一个名为`isOneGWei`的`public bool`，并将其设置为比较操作 1 GWei 和 10 ^ 9 的结果。

提示：查看合约中如何编写gwei和ether。
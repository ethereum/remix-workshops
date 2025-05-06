_Ether_ (ETH) is a cryptocurrency. _Ether_ is also used to pay fees for using the Ethereum network, like making transactions in the form of sending _Ether_ to an address or interacting with an Ethereum application.

### 以太币单位

To specify a unit of _Ether_, we can add the suffixes `wei`, `gwei`, or `ether` to a literal number.

#### `wei`

_Wei_ is the smallest subunit of _Ether_, named after the cryptographer [Wei Dai](https://en.wikipedia.org/wiki/Wei_Dai). _Ether_ numbers without a suffix are treated as `wei` (line 7).

#### `gwei`

1个GWei（千兆Wei）等于10^9 Wei。

#### `ether`

One `ether` is equal to 1,000,000,000,000,000,000 (10^18) `wei` (line 11).

<a href="https://www.youtube.com/watch?v=ybPQsjssyNw" target="_blank">观看有关Ether和Wei的视频教程。</a>.

## ⭐️ 作业

1. 创建一个名为`oneGWei`的`public uint`，并将其设置为1 `gWei`。
2. 创建一个名为`isOneGWei`的`public bool`，并将其设置为比较操作 1 GWei 和 10 ^ 9 的结果。

提示：查看合约中如何编写gwei和ether。
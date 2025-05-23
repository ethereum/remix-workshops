在本节中，我们将学习如何使用合约发送和接收以太币。

### 发送以太币

我们有三种不同的选项来转移以太币：`transfer()`、`send()` 和 `call()`。

#### **transfer**

`<address payable>.transfer(uint256 amount)`

- `transfer()`失败时会抛出异常
- gas限制是2300

可以在`SendEther`合约（第35行）中看到`transfer()`的示例。**现已不建议再使用`Transfer()`。**
**现已不建议再使用`Transfer()`。**

#### **send**

`<address payable>.send(uint256 amount) returns (bool)`

- `send()`失败时返回false
- gas限制是2300

可以在`SendEther`合约（第41行）中看到`send()`的示例。**现已不建议再使用`Send()`。**
**现已不建议再使用`Send()`。**

#### **call**

`<address>.call(bytes memory) returns (bool, bytes memory)`

- `call()`失败时返回false
- 转发的最大gas量，但是这是调整的

可以在`SendEther`合约（第48行）中看到`call()`的示例。如果您要转移以太币，则目前推荐使用`Call()`。
如果您要转移以太币，则目前推荐使用`Call()`。

引入`transfer()`和`send()`的原因是通过将转发 gas 限制为 2300 来防范重入攻击，这对于修改storage变量而言是不够的。

正如我们在上一节讨论过的那样，Ethereum 上每个操作都与特定成本相关联。 随着时间推移，某些操作变得更加费用密集，因此与它们相关的 gas 成本也会提高。 正如我们在上一节讨论过的那样，Ethereum 上每个操作都与特定成本相关联。随着时间推移，某些操作变得更加费用密集，因此与它们相关的 gas 成本也会提高。当操作的 gas 成本可能发生变化时，使用像 `transfer()` 和 `send()` 这样的硬编码 gas 量是不好的。

这就是为什么现在推荐使用`call()`而不是`transfer()`来发送以太币。

在 <a href="https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/" target="_blank">Consensys博客</a>中了解更多关于该主题的信息。

### 重入攻击

重入攻击发生在一个函数对不受信任的合约进行外部调用时，攻击者利用该合约在原函数执行完成之前进行递归调用。通过这种方法，攻击者可以耗尽资金并以意想不到的方式操纵数据。 通过这种方法，攻击者可以耗尽资金并以意想不到的方式操纵数据。

为了防止 _重入攻击_，所有状态更改都应在调用外部合约之前进行。 为了防范重入攻击，在调用外部合约之前应先进行所有状态更改。这也被称为<a href="https://docs.soliditylang.org/en/latest/security-considerations.html#re-entrancy" target="_blank">检查-效果-交互</a>模式。

另一种预防重入的方法是使用 _重入保护器_ 来检查此类调用并拒绝它们。 另一种预防重入的方法是使用重入保护器来检查此类调用并拒绝它们。您可以在我们modifier部分中看到该合约的示例，或在<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/ReentrancyGuard.sol" target="_blank">Open Zepplin</a>上找到更节省gas费版本。

### 接收以太币

如果我们想让一个合约在没有调用函数的情况下接收以太币，我们需要创建一个`receive`函数（第22行）或者`fallback`函数（第25行）；否则，这些以太币将被拒绝，并且合约会抛出异常。

`receive`函数（第22行）需要是`payable`的。如果你删除了`payable`修饰符，编译器会报错。如果你在`fallback`函数（第25行）中删除了`payable`修饰符，它将能够编译，但无法接收以太币。`sendViaTransfer`、`sendViaSend`和`sendViaCall`函数（第33、38和45行）也需要是`payable`才能接收以太币。 当使用空`calldata`进行调用时（例如通过`send()`或`transfer()`进行的纯粹的Ether转账），`receive`函数将被执行，而`fallback`函数将在有 calldata 的调用中执行。如果不存在`receive`函数但存在`fallback`函数，则使用空 calldata 进行的调用也将使用`fallback`函数。

### payable函数修饰符

`payable`函数修饰符允许一个函数接收以太币。

`receive`函数(第22行) 需要是`payable`。 如果删除`payable`修饰符，编译器将会出现错误。 如果您从`fallback`函数（第25行）中删除`payable`修饰符，它将编译，但无法接收以太币。
函数 `sendViaTransfer`、`sendViaSend`和 `sendViaCall`（第 33、38 和 45 行）也需要 `payable` 才能接收以太币。

### Payable地址

Solidity 对地址数据类型进行了两种不同的区分：address 和 address payable。

`address`: 保存20字节值。
`address`: 保存20字节值。
`address payable`: 保存20字节值，并可以通过其成员`transfer`和`send`接收以太币。

如果你将`sendViaTransfer`和`sendViaSend`函数的参数类型（第33和38行）从`address payable`更改为`address`，则无法使用`transfer()`（第35行或`send()`（第41行）。

<a href="https://www.youtube.com/watch?v=_5vGaqgzlG8" target="_blank">观看有关发送 Ether 的视频教程</a>。

## ⭐️ 作业

创建一个慈善合约，可以接收以太币，并且可以被受益人提取。

1. 创建一个名为`Charity`的合约。
2. 添加一个公共状态变量`owner`，类型为address。
3. 创建一个名为`donate`的函数，该函数是public和payable，没有任何参数或函数代码。
4. 创建一个名为`withdraw`的函数，该函数是public的，并将合同总余额发送到所有者地址。

提示：通过从一个账户部署它并从另一个账户向其发送Ether来测试您的合约。然后执行`withdraw`功能。 然后执行 withdraw 函数。
Axelar 燃料服务是一个非常有用的工具，可用于支付链间交易的燃料。 它允许您使用源链的代币来支付交易费用，从而大大简化了终端用户（和开发者）的体验。 例如，如果源链是Ethereum，而目标链是Polygon，那么燃料服务将以ETH接收交易的全部付款，调用者无需提供matic来支付在Polygon目标链上的执行费用。

你需要熟悉下面两个与燃料服务更具相关性的函数。

## payNativeGasForContractCall()

此功能允许您使用源链的原生代币支付整个跨链交易的费用。 它需要五个相关参数：

1. `sender`：付款地址
2. `destinationAddress`：交易被发往的目标链上的地址
3. `destinationChain`：交易被发往的目标链名称
4. `payload`: 发送的信息
5. `refundAddress`：如果随此交易发送的燃气费过多，则应将任何退款发送到的地址。

这些参数与Gateway合约中`callContract()`函数所需的参数重叠。 在网关部分没有讨论的两个参数是 `sender` 和 `refundAddress`。 sender是支付交易费用的地址，refundAddress是将收到发送到燃气服务的任何多余资金的地址。

## payNativeGasForContractCallWithToken()

This function allows you to pay for the entirety of an interchain transaction (that includes a token transfer) in the native token of the source chain. 它需要七个相关参数：

1. `sender`：付款地址
2. `destinationAddress`：交易被发往的目标链上的地址
3. `destinationChain`：交易被发往的目标链名称
4. `payload`: 发送的信息
5. `symbol`：被发送的代币的符号
6. `amount`: 被发送的代币数量
7. `refundAddress`：如果随此交易发送的燃气费过多，则应将任何退款发送到的地址。

This function is nearly identical to the first top one the main difference being that it is used for message + token transfer transactions as opposed to just interchain message transactions (aka GMP Transactions). 因此，燃料服务也需要知道正在发送的代币的`symbol`和`amount`。

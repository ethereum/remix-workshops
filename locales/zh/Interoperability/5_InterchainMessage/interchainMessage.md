在本节中，我们将创建一个合约，在两个区块链之间发送"hello world"消息。

## 构造函数

The first thing you will need to create is the `constructor` for the function. 这样就可以设置前几节讨论过的 "网关" 和 "燃气服务" 合约。

部署合约时，你需要输入以太坊 Sepolia 的 `Gateway` 和 `GasService` 的地址，Gateway 是 `0xe43250cce91cce91c13a887f7D836923d5597adD8E31` ，GasService 是 `0xbE406F0189A0B4cf3A05C286473D23791Dd44Cc6`。

关于相关的 Axelar 地址的完整列表 <a href="https://docs.axelar.dev/resources/contract-addresses/testnet" target="_blank">查看这里</a>

## 发送链际消息

现在构造函数已经设置了触发链间交易所需的相关 Axelar 地址，您可以继续执行`setRemoteValue()`，这将触发此交易。

此函数需要三个参数：

1. `_destinationChain`: 交易将要前往的链
2. `_destinationAddress`：交易将在目标链上执行的地址
3. `_message`：传递到目标链的消息

First, you have a `require` statement which ensures that the `msg.value` contains a value. 此 `msg.value` 将用于支付 `GasService` 。 如果没有发送资金，则应撤销交易，因为在没有任何 gas 的情况下，交易无法在 Axelar 区块链和目标链上执行。

接下来，你需要对传入的 `_message` 进行编码。 请注意，`_message`已设置为`string`类型。 Axelar 希望此消息以 `bytes` 类型提交，要将`string` 转换为 `bytes` ，您只需通过 `abi.encode()` 传递。

现在，你可以用你的消息编码开始与 `GasService` 和 `Gateway ` 交互。

要支付整个跨链交易，您将触发`payNativeGasForContractCall`的函数，这个函数在`GasService`中被定义。

该函数需要前面 GasService 部分中解释的参数。 此交易的 `sender` 就是该合约，也就是 `address(this)` 。 `destinationChain` 和 `destinationAddress` 可以从这个函数参数中传递，`payload` 是我们先前所写的 \_message 的编码。 最后，您需要指定退款地址，这可以是触发此函数的地址，您可以写入`msg.sender`。

Once you trigger this function you will have successfully sent a transaction from the source chain via Axelar to the destination chain! But there is still one final step that needs to be complete.

### 在目标链上接收消息

在目标链上，需要通过`AxelarExecutable`的`_execute()`来提取和处理进来的链际交易。

`_execute()` 函数是在 `AxelarExecutable` 合约中定义的，因此在定义这个函数时，你必须记住要包含`override`关键字。

此函数需要三个参数。

1. `_sourceChain`：交易源自的区块链
2. `_sourceAddress`: 被发送的这条交易所在源链上的地址
3. `_payload`: 从源链发送的消息

在此合约中需要做的第一件事是访问您发送的`message `。 回想一下，在发送信息之前，我们通过 `abi.encode()` 将信息从`string`类型转换为`bytes`类型。 要将消息从`bytes`类型转换回`string`类型，只需将`_payload`传递给函数`abi.decode()`，并指定您希望将`_payload`解码为`string`类型。 这将会把消息作为字符串返回。

现在您已将消息设置为字符串类型，您可以将`sourceChain`和`sourceAddress`存储变量设置为`_sourceChain`和`_sourceAddress`，以便引用传入的数据。 您还可以使用刚刚解码的`sourceAddress`和`message`事件发出`Executed`事件。

太棒了！ 此刻，您正在处理目标链上的跨链交易。

要与此合约交互，请确保将其部署在至少两个区块链上，以便您可以从一条链调用`setRemoteValue()`，然后在另一条链上自动触发`_execute()`函数。 您将能够查询目标链上的`sourceChain`和`sourceAddress`变量，以确保链间执行正常工作。

要查看链间交易的完整步骤，请查看<a href="https://testnet.axelarscan.io" target="_blank">Axelarscan（测试网）区块浏览器</a>。

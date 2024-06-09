在本节中，我们将创建一个合约，在两个区块链之间发送"hello world"消息。

## 构造函数

首先需要为合约创建构造函数。 这样就可以设置前几节讨论过的 "网关" 和 "燃气服务" 合约。

部署合约时，你需要输入以太坊 Sepolia 的 `Gateway` 和 `GasService` 的地址，Gateway 是 `0xe43250cce91cce91c13a887f7D836923d5597adD8E31` ，GasService 是 `0xbE406F0189A0B4cf3A05C286473D23791Dd44Cc6`。

关于相关的 Axelar 地址的完整列表 <a href="https://docs.axelar.dev/resources/contract-addresses/testnet" target="_blank">查看这里</a>

## 发送链际消息

现在构造函数已经设置了触发链间交易所需的相关 Axelar 地址，您可以继续执行`setRemoteValue()`，这将触发此交易。

此函数需要三个参数：

1. `_destinationChain`: 交易将要前往的链
2. `_destinationAddress`：交易将在目标链上执行的地址
3. `_message`：传递到目标链的消息

首先，你得有一个 `require` 语句，确保`msg.value` 包含一个值。 此 `msg.value` 将用于支付 `GasService` 。 如果没有发送资金，则应撤销交易，因为在没有任何 gas 的情况下，交易无法在 Axelar 区块链和目标链上执行。

接下来，你需要对传入的 `_message` 进行编码。 请注意，`_message`已设置为`string`类型。 Axelar 希望此消息以 `bytes` 类型提交，要将`string` 转换为 `bytes` ，您只需通过 `abi.encode()` 传递。

现在，你可以用你的消息编码开始与 `GasService` 和 `Gateway ` 交互。

要支付整个跨链交易，您将触发`payNativeGasForContractCall`的函数，这个函数在`GasService`中被定义。

该函数需要前面 GasService 部分中解释的参数。 此交易的 `sender` 就是该合约，也就是 `address(this)` 。 `destinationChain` 和 `destinationAddress` 可以从这个函数参数中传递，`payload` 是我们先前所写的 \_message 的编码。 最后，您需要指定退款地址，这可以是触发此函数的地址，您可以写入`msg.sender`。

一旦您触发此函数，您将成功地通过Axelar从源链向目标链发送一笔交易！ 但仍有最后一步需要完成。

### 在目标链上接收消息

On the destination chain the inbound interchain transaction needs to be picked up and handled by the `AxelarExecutable`'s `_execute()` function.

The `_execute()` function is defined in the `AxelarExecutable` contract so when defining this function you must remember to include the `override` keyword.

This function takes three parameters.

1. `_sourceChain`: The blockchain which the transaction has originated from
2. `_sourceAddress`: The address on the source chain which the transaction has been sent from
3. `_payload`: The message that has been sent from the source chain

The first thing that needs to be done in this contract is to get access to your `message` that was sent. Recall, before sending the message it was sent through `abi.encode()` to convert the message from type `string` to type `bytes`. To convert your message back from type `bytes` to type `string` simply pass the `_payload` to the function `abi.decode()` and specify that you want the `_payload` decoded to type `string`. This will return the message as a string.

Now that you have your message as a type string you can set the `sourceChain` and `sourceAddress` storage variables as `_sourceChain` and `_sourceAddress` to have an easy reference to the data that was passed in. You can also emit the `Executed` event with the `sourceAddress` and `message` event that you just decoded.

Great! At this point you are now handling the interchain transaction on the destination chain.

To interact with this contract make sure you deploy it on at least two blockchains so that you can call `setRemoteValue()` from the one chain and then have the `_execute()` function automatically triggered on another chain. You will be able to query the `sourceChain` and `sourceAddress` variables on the destination chain to ensure that the interchain execution worked correctly.

To view the full step by step of the interchain transaction checkout the <a href="https://testnet.axelarscan.io" target="_blank">Axelarscan (testnet) block explorer</a>.

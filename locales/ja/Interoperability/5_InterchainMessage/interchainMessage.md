このセクションでは、2つのブロックチェーン間で「hello world」メッセージを送るコントラクトを作成します。

## コンストラクタ

まず最初に作成する必要があるのは、関数の`constructor`です。 コンストラクタにより、前のセクションで取り上げた`Gateway` と `Gas Service`を設定します。

コントラクトのデプロイ時に、Ethereum Sepoliaの`Gateway`と`GasService`のアドレスを渡します。アドレスは、Gatewayが`0xe432150cce91c13a887f7D836923d5597adD8E31`でGas Serviceが`0xbE406F0189A0B4cf3A05C286473D23791Dd44Cc6`です。

関連するAxelarのアドレスの全リストは、<a href="https://docs.axelar.dev/resources/contract-addresses/testnet" target="_blank">こちらをご覧ください</a>。

## インターチェーンメッセージの送信

それでは、コンストラクタにインターチェーントランザクションのトリガーに必要な関連Axelarアドレスを設定したら、`setRemoteValue()`に進むことが出来ます。この関数がトランザクションをトリガーします。

この関数は、3つのパラメータを取ります。

1. `_destinationChain`: The chain which the transaction is going to
2. `_destinationAddress`: The address on the destination chain the transaction will execute at
3. `_message`: The message being passed to the destination chain

First, you have a `require` statement which ensures that the `msg.value` contains a value. This `msg.value` will be used to pay the `GasService`. If no funds were sent, then the transaction should be reverted as the transaction cannot execute on the Axelar blockchain and destination chain without any gas.

Next, you encode the `_message` that was passed in. Notice that the `_message` is set as a `string` type. Axelar expects this message to be submitted as a `bytes` type so to convert the `string` to `bytes` you simply pass it through `abi.encode()`.

Now, with your message encoded you can begin to interact with the `GasService` and the `Gateway`

To pay for the entire interchain transaction you will trigger the function `payNativeGasForContractCall`, which is defined in the `GasService`.

This function needs the parameters explained earlier in the GasService section. The `sender` for this transaction will be this contract, which is `address(this)`. The `destinationChain` and `destinationAddress` can simply be passed in from this functions parameters, the `payload` is the encoded \_message we wrote earlier. Finally, you need to specify what the refund address is, this can be the address that triggers this function, which you get by writing `msg.sender`.

Once you trigger this function you will have successfully sent a transaction from the source chain via Axelar to the destination chain! But there is still one final step that needs to be complete.

### 目的のチェーンからメッセージを受け取る

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

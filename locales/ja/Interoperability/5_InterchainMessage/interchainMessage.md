このセクションでは、2つのブロックチェーン間で「hello world」メッセージを送るコントラクトを作成します。

## コンストラクタ

まず最初に作成する必要があるのは、関数の`constructor`です。 コンストラクタにより、前のセクションで取り上げた`Gateway` と `Gas Service`を設定します。

コントラクトのデプロイ時に、Ethereum Sepoliaの`Gateway`と`GasService`のアドレスを渡します。アドレスは、Gatewayが`0xe432150cce91c13a887f7D836923d5597adD8E31`でGas Serviceが`0xbE406F0189A0B4cf3A05C286473D23791Dd44Cc6`です。

関連するAxelarのアドレスの全リストは、<a href="https://docs.axelar.dev/resources/contract-addresses/testnet" target="_blank">こちらをご覧ください</a>。

## インターチェーンメッセージの送信

それでは、コンストラクタにインターチェーントランザクションのトリガーに必要な関連Axelarアドレスを設定したら、`setRemoteValue()`に進むことが出来ます。この関数がトランザクションをトリガーします。

この関数は、3つのパラメータを取ります。

1. `_destinationChain`: トランザクションが行われるチェーン
2. `_destinationAddress`: トランザクションが実行される目的のチェーンのアドレス
3. `_message`: 目的のチェーンに渡されるメッセージ

まず、`require`ステートメントがあり、 `msg.value`が値を含んでいることを確認します。 この`msg.value` は、`GasService`の支払いに使用されます。 資金が送信されなかった場合は、トランザクションが取り消されます。Axelarブロックチェーンと目的のチェーンでは、ガスが無いと実行ができないためです。

次に、渡す`_message` をエンコードします。 `_message`が `string`型に設定されていることに注意してください。 Axelarでは、メッセージを`bytes`型として受け取ることになっているので、シンプルに`abi.encode()`に渡すことで`string`を `bytes`に変換します。

これで、エンコードされたメッセージで`GasService`と`Gateway`とやり取りができるようになりました。

`GasService`に定義されている`payNativeGasForContractCall`関数をトリガーしてインターチェーン全体のトランザクションの支払をします。

この関数は、GasServiceセクションで既に説明したパラメータが必要です。 このトランザクションの`sender`は、このコントラクトで`address(this)`で表されています。 `destinationChain`とdestinationAddress`は、この関数のパラメータによってシンプルに渡されます。`payload`は、先ほど取り上げたエンコードされた\_messageです。 最後に、返金アドレスを記述します。このアドレスは、この関数をトリガーするアドレスです。`msg.sender\`を記述することでアドレスを取得できます。

この関数をトリガーすると、送信元のチェーンからAxelarを経由して目的のチェーンへトランザクションを正常に送信したことになります。 しかし、終了するのに必要な最後のステップがあります。

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

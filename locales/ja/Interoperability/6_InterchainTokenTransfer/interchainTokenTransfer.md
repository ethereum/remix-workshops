これまでに、あるブロックチェーンから他のブロックチェーンへ一般的なメッセージを送信する方法例を説明しました。 今回は、あるブロックチェーンから別のブロックチェーンにメッセージとトークンを送信するコントラクトの実装をします。

## 概要

このコントラクトは、ある程度理解できると思います。 前のセクションと非常に似ており、`constructor`が`Gateway`アドレスと`Gas Service`アドレスを受け取ります。

そして、このコントラクトには、送信元のチェーンで呼び出される`sendToMany`という前のセクションと同様なパラメータを取る関数があります。

1. `_destinationChain`: トランザクションが送られるチェーン
2. `_destinationAddress`: トランザクションが送られる目的のチェーンのアドレス
3. `_destinationAddress`: トークンと一緒に送信するメッセージ。 この例では、トークン送信によって受け取るアドレスのリストがメッセージです。
4. `_symbol`: 送信されるトークンアドレスのシンボル
5. `_amount`: 送信されるトークンの量

この関数内で、`require`が既に実装されており、ガスが送られることを確実にしています。

また、基本的なERC20機能を備えており、ウォレットから呼び出してスマートコントラクトにトークンを送信することができます。 このコントラクトでは、さらに`approve`関数を呼び出し、Gatewayに対して代理で送信する資金を許可することができます。

最後に、`_executeWithToken()`関数も使用できるように実装されています。

この関数は、次のパラメータを受け取ります。

1. `_payload`: 送信元チェーンから送られてきたメッセージ
2. `_tokenSymbol`: 送信元のチェーンから送られてきたトークンのシンボル
3. `_amount`: 送信元のチェーンから送られてきたトークンの量

Now with these params that were passed in, the `_execute()` function can send the tokens that were sent to the appropriate receivers.

## Challenge

Your challenge here is to finish off the `sendToMany()` function using the Axelar Gateway and Gas Service to trigger an interchain transaction.

In the end you should be able to deploy this contract on two testnets, trigger the `sendToMany()` function and see the live transaction on <a href="https://testnet.axelarscan.io" target="_blank">Axelarscan (testnet) block explorer</a>.

### Testing Notes

Note 1: The recommended ERC20 to use is `aUSDC` a wrapped version of the USDC token that can be obtained from <a href= "https://docs.axelar.dev/resources/rpc/resources" target="_blank">the discord faucet bot</a>. When triggering the `sendToMany()` function simply pass in the symbol `aUSDC` to the fourth param.

Note2: When triggering the `sendToMany()` function you must remember to `approve` your contract to spend `aUSDC` tokens on your behalf, otherwise `transferFrom()` on line49 will throw an error.

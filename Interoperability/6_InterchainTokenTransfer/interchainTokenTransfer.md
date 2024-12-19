En este punto hemos pasado por un ejemplo para enviar un mensaje general entre una cadena de bloque a otra. Ahora, vamos a implementar un contrato que envía un mensaje y un token de un cadena de bloque a otro.

## General

Este contrato debería parecer bastante familiar. Al igual que la sección anterior, el `constructor` recibe las direcciones `Gateway` y `Gas Service`.

Posteriormente tiene una función que será llamada desde la cadena fuente llamada `sendToMany` que toma parámetros similares a la sección anterior.

1. `_destinationChain`: La cadena a la que la transacción está enviando
2. `_destinationAddress`: La dirección en la cadena de destino en la que se ejecutará esta transacción
3. `_destinationAddresses`: El mensaje que enviarás junto a tu transferencia de token. En este ejemplo, el mensaje es una lista de direcciones receptoras para la transferencia de token.
4. `_symbol`: El símbolo de la dirección del token siendo enviado
5. "amount": La cantidad del token siendo enviado

En la función ya tenemos la instrucción `require` implementada para asegurar que el gas sea enviado

También tenemos la funcionalidad básica ERC20 para enviar el token desde la cartera de llamadas a este contrato inteligente. El contrato también llama a la función 'approve' para permitir que la puerta de enlace finalmente transfiera fondos en su nombre.

Finalmente, la función `_executeWithToken()` también se implementa desde la caja.

Utiliza los siguientes parámetros:

1. `_payload`: El mensaje entrante de la cadena fuente
2. `_tokenSymbol`: El símbolo del token que fue enviado desde la cadena origen
3. `_amount`: La cantidad del token que fue enviado desde la cadena origen

Ahora con estos parámetros pasados, la función `_execute()` puede enviar los tokens que fueron enviados a los receptores apropiados.

## Desafio

Tu desafío aquí es terminar la función `sendToMany()` usando el servicio Axelar Puerta de Enlace y el servicio Gas para desencadenar una transacción de intercadena.

Al final debería ser capaz de implementar este contrato en dos redes de pruebas, activa la función `sendToMany()` y ve la transacción en vivo en <a href="https://testnet.axelarscan.io" target="_blank">Axelarscan (testnet) block explorer</a>.

### Probando Notas

Nota 1: El ERC20 recomendado para usar es `aUSDC` una versión envuelta del token USDC que puede obtenerse de <a href= "https://docs.axelar.dev/resources/rpc/resources" target="_blank">the discord faucet bot</a>. Al activar la función `sendToMany()` simplemente pasa el símbolo `aUSDC` al cuarto parámetro.

Nota2: Al activar la función `sendToMany()` debes recordar `approve` tu contrato para gastar los tokens `aUSDC` en tu nombre, de lo contrario `transferFrom()` en la línea 49 arrojará un error.

El ejecutable de Axelar contiene funciones de ayuda relevantes que se ejecutarán automáticamente en la cadena de destino en correspondencia con la transacción entrante relevante desde la cadena de origen.

Las siguientes son las funciones relevantes que necesitarás usar desde el ejecutable de Axelar

## \_execute()

Esta función gestiona la ejecución en la cadena de destino. Necesitas los siguientes cuatro parámetros:

1. `commandId`: Un id de transacción único en la cadena Axelar.
2. `sourceChain`: La cadena de bloque desde el cual la transacción ha sido enviada
3. `sourceAddress`: La dirección de la cadena de origen desde la que la transacción ha sido enviada
4. `payload`: El mensaje que está siendo enviado

The `sourceChain` and `sourceAddress` are key parameters which you receive out of the box that can be used for verifying authenticity of messages on the destination chain. La carga útil (tal como se describe en la sección de la puerta de enlace) es el mensaje que fue enviado desde la cadena fuente para ser utilizado en tu cadena de destino. El `commandId` no será utilizado durante el resto de este módulo.

## \_executeWithToken()

Esta función maneja la ejecución en la cadena de destino para un mensaje enviado con un token fungible. Necesitas seis parámetros relevantes:

1. `commandId`: Un identificador de transacción único en la cadena Axelar.
2. `sourceChain`: La cadena de bloque del cual la transacción ha sido enviada desde
3. `sourceAddress`: La dirección de la cadena de origen desde la que se ha enviado la transacción
4. `payload`: El mensaje que está siendo enviado
5. `tokenSymbol`: El símbolo del token que fue enviado
6. "amount": La cantidad del token que se envió

Los cuatro primeros parámetros son idénticos a los de la función `_execute()`. Los dos últimos parámetros de `tokenSymbol` y `amount` se refieren al token que se está enviando junto con el mensaje. Te permite en la cadena de destino interactuar con el token en consecuencia, por ejemplo transfiriéndolo a otra dirección receptora. El `commandId` no será usado durante el resto de este módulo.

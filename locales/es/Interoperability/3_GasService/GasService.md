El Servicio de Gas Axelar es una herramienta extremadamente útil disponible para pagar gas por una transacción intercadena. Te permite pagar el costo de una transacción en el token de la cadena de origen, para una experiencia mucho más fácil de usuario final (y también al desarrollador). Si por ejemplo la cadena de origen es Ethereum y la cadena de destino es Polygon, entonces el servicio de gas recibirá el pago completo de la transacción en ETH y no se necesita un mático de la persona que llama a pagar por la ejecución en la cadena de destino de Polígono.

A continuación se detallan las dos funciones más relevantes que necesitarás conocer en relación con el Servicio de Gas.

## payNativeGasForContractCall()

Esta función te permite pagar por la totalidad de una transacción intercadena en el token nativo de la cadena de origen. Se necesitan cinco parámetros relevantes:

1. `sender`: La dirección que hace el pago
2. `destinationAddress`: La dirección en la cadena de destino a la que se envía la transacción
3. `destinationChain`: El nombre de la cadena de destino
4. `payload`: El mensaje que está siendo enviado
5. `refundAddress`: La dirección de cualquier reembolso debería ser enviada a si se envió demasiado gas junto con esta transacción.

Los parámetros se solapan con los parámetros requeridos por la función `callContract()` en el contrato de Puerta de Enlace. Los dos parámetros no discutidos en la sección Puerta de Enlace son `sender` y `refundAddress`. El remitente es la dirección de pago de la transacción y la dirección de reembolso es la dirección que recibirá cualquier fondo excedente enviado al servicio de gas.

## payNativeGasForContractCallWithToken()

Esta función te permite pagar la totalidad de una transacción intercadena (que incluye una transferencia de tokens) en el token nativo de la cadena de origen. Necesitas tres parámetros relevantes:

1. `sender`: La dirección que realiza el pago
2. `destinationContractAddress`: La dirección en la cadena de destino en la que se ejecutará esta transacción
3. `destinationAddress`: La dirección en la cadena de destino a la que se envía la transacción
4. `payload`: El mensaje que está siendo enviado
5. `symbol`: El símbolo del token que fue enviado
6. "amount": La cantidad del token que se envió
7. `refundAddress`: La dirección de cualquier reembolso debería ser enviada a si se envió demasiado gas junto con esta transacción.

Esta función es casi idéntica a la primera de la primera, siendo la principal diferente que se utiliza para las transacciones de mensaje + de transferencia de tokens en contraposición a las transacciones de mensajes intercadenas (también conocidas como transacciones GMP). Como resultado, GasService también necesita conocer el `symbol` y `amount` del token que se está enviando.

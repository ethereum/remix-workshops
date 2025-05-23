En esta sección crearemos un contrato que enviará un mensaje de "Hola mundo" entre dos cadenas de bloque.

## Constructor

The first thing you will need to create is the `constructor` for the function. Esto te permitirá establecer los contratos `Gateway` y `Gas Service` que hemos discutido en las secciones anteriores.

Al desplegar el contrato pasarás en la dirección de la `Gateway` y `GasService` para Ethereum Sepolia esas direcciones son `0xe432150cce91c13a887f7D836923d5597adD8E31` para la Puerta de Enlace y `0xbE406F0189A0B4cf3A05C286473D23791D44Cc6` para el Servicio de Gas.

Para la lista completa de direcciones Axelar relevantes <a href="https://docs.axelar.dev/resources/contract-addresses/testnet" target="_blank">see here</a>

## Enviar Mensaje Intercadena

Ahora que el constructor ha establecido las direcciones Axelar relevantes necesarias para desencadenar una transacción de intercadena, puedes pasar a `setRemoteValue()`, que desencadenará esta transacción.

Esta función requiere tres parámetros:

1. `_destinationChain`: La cadena a la que va a ir la transacción
2. `_destinationAddress`: La dirección en la cadena de destino en la que se ejecutará esta transacción
3. `_message`: El mensaje siendo pasado a la cadena de destino

First, you have a `require` statement which ensures that the `msg.value` contains a value. Este `msg.value` será usado para pagar el `GasService`. Si no se han enviado fondos, entonces la transacción debe ser revertida ya que la transacción no puede ejecutarse en la cadena de bloques Axelar y de destino sin ningún gas.

Después, codificas el `_message` que fue pasado. Observa que el `_message` se establece como un tipo de `string`. Axelar espera que este mensaje se envíe como un tipo `bytes` para convertir la `string` a `bytes` simplemente pasarla a través de `abi.encode()`.

Ahora, con tu mensaje codificado puedes comenzar a interactuar con el `GasService` y la `Gateway`

Para pagar toda la transacción intercadena activarás la función `payNativeGasForContractCall`, que se define en el `GasService`.

Esta función necesita los parámetros explicados anteriormente en la sección GasService. El `sender` para esta transacción será este contrato, que es `address(this)`. El `destinationChain` y `destinationAddress` simplemente pueden pasarse desde estos parámetros de funciones, el `payload` es el \_message codificado que escribimos antes. Por último, necesita especificar cuál es la dirección de reembolso, esta puede ser la dirección que activa esta función, que se obtiene escribiendo `msg.sender`.

Once you trigger this function you will have successfully sent a transaction from the source chain via Axelar to the destination chain! But there is still one final step that needs to be complete.

### Recibir mensajes en la cadena de destino

En la cadena de destino la transacción de intercadena entrante necesita ser recogida y manejada por la función `_execute()` de `AxelarExecutable`.

La función `_execute()` se define en el contrato `AxelarExecutable`, así que al definir esta función debes recordar incluir la palabra clave `override`.

Esta función toma tres parámetros.

1. `_sourceChain`: La cadena de bloque de la que procede la transacción
2. `_sourceAddress`: La dirección en la cadena de origen desde la que se ha enviado la transacción
3. `_payload`: El mensaje que ha sido enviado desde la cadena origen

Lo primero que hay que hacer en este contrato es obtener acceso a tu `message` que fue enviado. Recuerda, antes de enviar el mensaje que fue enviado a través de `abi.encode()` para convertir el mensaje de tipo `string` para escribir `bytes`. Para convertir tu mensaje de regreso de escribe `bytes` para escribir `string` simplemente pasa el `_payload` a la función `abi. ecode()` y especifica que quieres que el `_payload` decodificado para escribir `string`. Esto devolverá el mensaje como cadena.

Ahora que tienes tu mensaje como una cadena de tipo puedes establecer las variables de almacenamiento `sourceChain` y `sourceAddress` como `_sourceChain` y `_sourceAddress` para tener una referencia fácil a los datos que fueron pasados. También puedes emitir el evento `Executed` con el evento `sourceAddres` y `message` que acabas de decodificar.

¡Excelente! En este punto ahora está manejando la transacción intercadena en la cadena de destino.

Para interactuar con este contrato, asegúrate de desplegarlo en al menos dos cadenas de bloques para que puedas llamar a `setRemoteValue()` desde una cadena y luego tener la función `_execute()` activada automáticamente en otra cadena. Podrás consultar las variables `sourceChain` y `sourceAddress` en la cadena de destino para asegurar que la ejecución de la intercadena funcionó correctamente.

Para ver el paso a paso completo de la compra de transacciones de la intercadena, el <a href="https://testnet.axelarscan.io" target="_blank">Axelarscan (testnet) block explorer</a>.

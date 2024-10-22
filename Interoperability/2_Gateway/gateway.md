El Portal Axelar es el punto de entrada para tu contrato inteligente en el ecosistema Axelli. Una vez que hayas activado la función apropiada en la puerta de enlace, tu transacción iniciará su viaje intercadena desde su cadena de origen a través de la red Axelar hasta la cadena de destino. Cada cadena que está conectada a Axelar tiene un contrato de pasarela desplegado con el que interactuar con ella.

Las siguientes son las dos funciones más relevantes que necesitarás para familiarizarse.

## callContract()

Esta función activa una transacción de intercadena con un mensaje de la fuente a la cadena de destino. Necesitas tres parámetros relevantes:

1. `destinationChain`: el nombre de la cadena de destino
2. `destinationContractAddress`: La dirección de la cadena de destino en la que se ejecutará esta transacción.
3. `payload`: El mensaje que esta siendo enviado

Los primeros dos parámetros son bastante intuitivos. Consisten tanto en el nombre de la cadena a la que deseas que esta transacción vaya y en la dirección de esa cadena a la que deseas terminar la ejecución. El último parámetro es la carga útil. Este carga útil representa un mensaje general que es enviado a la cadena de destino. El mensaje puede utilizarse de muchas maneras diferentes en la cadena de destino. Por ejemplo, puedes enviar datos para ser usados como parámetro en otra función de la cadena de destino, puedes enviar una firma de función como un mensaje que luego será ejecutado en una cadena de destino, y mucho más.

## callContractWithToken()

Esta función activa una intercadena con un mensaje y un símbolo fungible de la cadena de origen a la de destino. Se necesitan cinco parámetros relevantes:

1. `destinationChain`: El nombre de la cadena de destino
2. `destinationContractAddress`: La dirección en la cadena de destino en la que se ejecutará esta transacción.
3. `payload`: El mensaje que está siendo enviado
4. `symbol`: El símbolo del token siendo enviado
5. `amount`: La cantidad de ese token que está siendo enviado

Los primeros tres parámetros aquí son los mismos que en `callContract()`. Los dos últimos parámetros son relevantes para el token que se envía junto con el mensaje. Estos son el símbolo de la ficha y la cantidad del token que se está enviando.

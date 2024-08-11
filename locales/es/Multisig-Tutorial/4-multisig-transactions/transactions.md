En esta sección, exploraremos el proceso de envío y confirmación de transacciones.

## Modificadores

Tenemos nuevos modificadores en esta iteración del contrato. Examinémoslos uno por uno.

1. **Modificador `txExists`:** (Línea 13) asegura que la transacción exista. Para ello, comprueba si el índice de transacciones es menor que la longitud de la matriz `transacciones`. Hablaremos más sobre este modificador más adelante en esta sección.
2. **Modificador `notExecuted`:** (Línea 18) asegura que la transacción no haya sido ejecutada. Hace esto verificando si la variable `executed` de la transacción es falsa.
3. **Modificador `notConfirmed`:** (línea 23) asegura que la transacción no ha sido confirmada por el invocaaador. Hace esto comprobando si el mapeo `isConfirmed` del índice de transacción y la dirección de la persona que llama es falso.

## Estructura de la Transacción

En línea 28, tenemos una estructura llamada `Transaction`. Almacenamos a los miembros de la estructura: `to`, `value`, `data`, `executed`, y `numConfirmations` en variables individuales.

## Mapeo de confirmaciones

On line 37, we have a mapping called `isConfirmed`. Este mapeo se utiliza para hacer un seguimiento de las confirmaciones de cada transacción. Asigna el índice de la transacción a un mapeo de una dirección de propietario a un valor booleano. El valor booleano indica si este dueño ha confirmado la transacción.

## Conjunti de transacciones

En la línea 39, tenemos un arreglo llamado `transacciones`. El conjunto se utiliza para almacenar todas las transacciones enviadas a la cartera multifirma.

## Eventos

Tenemos cuatro nuevos eventos en esta iteración del contrato:

1. **Evento `SubmitTransaction`:** emitido cada vez que se envía una transacción a la cartera multifirma.
2. **Evento `ConfirmTransaction`:** emitido daca vez que una transacción es confirmada por un propietario.
3. **`RevokeConfirmation` evento:** emitido cada vez que una confirmación de transacción es revocada por un propietario.
4. **evento `ExecuteTransaction`:** emitido cada vez que se ejecuta una transacción.

## función submitTransaction

La función `submitTransaction` (Línea 78) permite a los usuarios enviar una transacción a la billetera multi-sig. Se toman tres parámetros: `to`, `value`, y `data`. El parámetro `to` es la dirección del destinatario de la transacción. El parámetro `value` es la cantidad de Ether a ser enviado. El parámetro `data` es los datos que se enviarán al destinatario. Sólo los propietarios pueden enviar transacciones.

En línea, 85 creamos una nueva estructura de transacción y la empujamos al cojunto `transactions` y emitemos el evento `SubmitTransaction`. La variable `txIndex` se utiliza para hacer un seguimiento del índice de transacción.

## función confirmTransaction

La función `confirmTransaction` (Línea 98) permite a los usuarios confirmar una transacción. Se toma un parámetro: `txIndex`.
Tiene tres modificadores: `onlyOwner`, `txExists` y `notExecuted`. El modificador `onlyOwner` asegura que sólo los propietarios pueden confirmar las transacciones. El modificador `txExists` asegura que la transacción existe. El modificador `notExecuted` asegura que la transacción no ha sido ejecutada.

En la línea 101, guardamos la transacción en una variable local llamada `transaction`. Luego incrementamos la variable `numConfirmations` de la transacción y establecemos el mapeo `isConfirmed` del índice de transacción y la dirección de la persona que llama a verdadera. Finalmente, emitimos el evento `ConfirmTransaction`.

## función executeTransaction

La función `executeTransaction` (Line 108) permite a los usuarios ejecutar una transacción. En la línea 113, requerimos que el número de confirmaciones de la transacción sea mayor o igual al número requerido de confirmaciones. Luego establecemos la variable `executed` de la transacción como verdadera. Finalmente, envía los fondos usando la función `call`.  Esta es la `call` de la dirección del destinatario con el valor y los datos de la transacción. Si la transacción tiene éxito, emitimos el evento `ExecuteTransaction`.

## función getTransactionCount

La función `getTransactionCount` (Línea 132) permite a los usuarios recuperar el número de transacciones en la cartera multifirma. Devuelve la longitud del conjunto `transactions`.

## función getTransaction

La función `confirmTransaction` (Línea 136) permite a los usuarios confirmar una transacción. Devuelve los miembros de la estructura de transacciones que exploramos anteriormente en esta sección.

## Cierre

En esta sección, sondeamos el proceso de envío, confirmación y ejecución de transacciones. Examinamos las funciones "enviar transacción", "confirmar transacción" y "ejecutar transacción" y entendimos cómo trabajan juntas para permitir que varios usuarios envíen y confirmen transacciones.

## Asignación: Realizar una transacción

Envíe, confirme y ejecute una transacción para enviar 2 Ether a la primera cuenta del menú desplegable "CUENTAS".

1. Despliegue el contrato Multifirma (Multisig) como en la tarea anterior. Asegúrese de que el número requerido de confirmaciones es 2.
2. Financia el multifirma desde cualquier dirección enviando a 4 Ether como hiciste en la asignación anterior.
3. Intenta enviar 2 Ether a la primera cuenta en el menú desplegable "ACUNTS".  Una vez que haya enviado esta transacción (con la transacción), haz clic en `getTransactionCount` y debería ver una transacción o puede hacer clic en `getTransaction`, insertar 0 como el índice de transacción y ver la transacción que acaba de enviar.
4. Ahora puedes hacer clic en `confirmTransaction` e insertar 0 como el índice de transacción. Si haces clic en `getTransaction` de nuevo, deberías ver que la transacción ha sido confirmada una vez.
5. Cambiar a la segunda cuenta de propietario y confirma la transacción de nuevo. Si vuelves a hacer clic en `getTransaction`, deberías ver que la transacción se ha confirmado dos veces.
6. El ultimo paso es ejecutar la transacción. Haz clic en `executeTransaction` e inserte 0 como índice de la transacción. Si vuelves a hacer clic en `getTransaction`, deberías ver que la transacción se ha confirmado dos veces. También puede comprobar el balance de la primera cuenta en el menú desplegable "CUENTAS". Ahora debería tener 2 Ether más y el saldo de la cartera multifirma debería tener 2 Ether menos.

**Pista:**
Si envías una transacción, asegúrese de que el valor está en Wei y de que el campo _data está correctamente rellenado. Por ejemplo, podría verse así: "0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 20000000000000000, 0x" para 2 Ether.

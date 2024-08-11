En esta sección, exploraremos a la función `receive` y el evento Deposit asociado. Examinaremos cómo se utiliza la función 'receptor' para depositar a Ether en la cartera multifirma y cómo el evento Deposite proporciona transparencia.

## Evento Deposit

En la línea 9 tenemos el evento Deposit. El evento Deposit se emite cada vez que se deposita Ether en la cartera multifirma. Incluye tres parámetros:

1. `sender`: La dirección que envió el Éter.
2. `amount`: La cantidad de Ether depositada.
3. `balance`: El saldo actualizado del contrato después del depósito.

Podemos usar el evento Deposit para rastrear el flujo de Ether hacia la cartera multifirma y tal vez activar otras acciones basadas en el evento.

## Función receive

En la línea 43, tenemos la función `receive`. La función `receive` es una función especial que se ejecuta cada vez que Ether se envía al contrato.

La función `receive` se marca como `external` y `payable`. El modificador `external` significa que la función sólo puede llamarse desde fuera del contrato. El modificador `payable` significa que la función puede recibir Ether.

La función 'receive' emite el evento Depósito (Línea 44) con la dirección del remitente, la cantidad de Ether enviada, y el balance actualizado del contrato. Esto no devuelve nada.

Para recibir a Ether, un contrato debe tener un `receptive`, `fallback`, o una función con el modificador `payable`. Si ninguno de ellos está presente, el contrato rechazará cualquier Ether que te sea enviado.

## Conclusión

En esta sección, exploramos la función `receive` y el evento asociado al depósito. Hemos examinado cómo se utiliza la función 'receive' para depositar a Ether en la cartera multifirma y cómo el evento Depósito proporciona transparencia.

## ⭐ Tarea: Depósito Ether

Deposite 2 Ether en el contrato Multisig.

1. Despliega el contrato Multisig como en la tarea anterior.
2. Introduce un valor de 2 Ether en el campo Valor y seleccione Ether en el menú desplegable.
3. En la parte inferior de su contrato desplegado en la sección de "Interacciones de nivel bajo", haga clic en el botón "Transacción".
4. Además de su contrato desplegado, ahora debe decir "Balance: 2 Ether".

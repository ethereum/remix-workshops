En esta sección, exploraremos el proceso de revocación de confirmaciones. Este proceso es necesario cuando un propietario cambia de opinión sobre una transacción y quiere impedir que se ejecute. Esta transacción será bastante simple.

## Evento revokeConfirmation

En la línea 14, hemos añadido el evento `RevokeConfirmation`. Este evento se emite cada vez que un propietario revoca la confirmación de una transacción.

## Función revokeConfirmation

En la línea 129, hemos añadido la función `revokeConfirmation`. Esta permite a los usuarios revocar la confirmación de una transacción.

`revokeconfirmation` toma un parámetro: `txIndex`. Tiene tres modificadores: `onlyOwner`, `txExists` y `notExecuted`.

En la línea 134, requerimos que la transacción haya sido confirmada por la persona que llama. Esto garantiza que un propietario que haya confirmado la transacción solo pueda revocar su propia confirmación.
Luego decrementamos la variable "numConfirmations" de la transacción y establecemos la asignación "isConfirmed" del índice de transacciones y la dirección de la persona que llama en false. Finalmente, emitimos el evento "RevokeConfirmation".

## Conclusión

En esta sección, exploramos el proceso de revocación de confirmaciones. Examinamos la función "revokeConfirmation" y entendimos cómo funciona para permitir a los usuarios revocar las confirmaciones.

## ⭐️ Asignación: Revocar una confirmación

Confirme y revoque una transacción para enviar 2 Ether a la primera cuenta en el menú desplegable "CUENTAS".

1. Al igual que en la asignación anterior, implemente el contrato Multisig, envíe al contrato un poco de Ether y luego envíe una transacción a la primera cuenta en el menú desplegable "CUENTAS" con un valor de 2 Ether.
2. Confirme la transacción el doble que en la asignación anterior.
3. Revoque la transacción haciendo clic en "revocar confirmación" e insertando 0 como índice de transacción. Si vuelve a hacer clic en "getTransaction", debería ver que la transacción se ha confirmado una vez.

## Conclusión final

En este tutorial, exploraremos el proceso de creación de una cartera multifirma. Aprendimos a iniciar el contrato, depositar Ether, enviar, confirmar y revocar transacciones. También aprendimos a ejecutar transacciones y recuperar información sobre la cartera multifirma.
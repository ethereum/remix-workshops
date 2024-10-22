Desde la terminal Remix, identifique la transacción que implementó el contrato y haga clic en "Depurar"

En el canalón del editor, ponga un punto de interrupción en la línea `s = _o`, y haga clic en `Saltar al siguiente punto de interrupción` (botón inferior derecho).

Haga clic en "Entrar en", para moverse a lo largo de los códigos de operación hasta llegar a "SSTORE".

`SSTORE` es el código de operación para almacenar el valor `_o` en el almacenamiento. Sigamos con el `CODECOPY`.

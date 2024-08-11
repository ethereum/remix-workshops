# El Opcode RETURN

Al final del último capítulo, habíamos pasado a un paso después de **CODECOPY** para ver lo que sucedió en la memoria.

Ahora que se ha ejecutado CODECOPY, estamos en el código de operación `PUSH1 00`.

`PUSH1 00` prepara la pila para el código de operación `RETURN`.
"RETORNO" es la última parte de este proceso.  Es donde se devuelve el código al cliente.

Empujamos `00` a la pila porque esta es la posición de desplazamiento del código de bytes del contrato en la memoria.

Ahora podemos llamar al código de operación "RETURN" más importante.

El **inspector de pila** muestra:`0: 0x0000000000000000000000000000000000000000000000000000000000000000``1: 0x000000000000000000000000000000000000000000000000000000000000000003e`

Es decir, devuelve al cliente el código de bytes que comienza `0x00` con la longitud `0x3e`.

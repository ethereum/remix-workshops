El objetivo aquí es almacenar el código en la cadena de bloques. El EVM necesita decirle al cliente (geth, paridad) qué parte de los **datos de llamada** almacenar.   En este paso, estamos guardando el contrato MINUS su constructor (porque eso se inplmente solo 1 vez) y MINUS el parámetro de entrada no necesita ser almacenado.

`CODECOPY` es el primer paso: copia el código de bytes a la memoria, luego el cliente de ethereum podrá consumirlo.  MUNCH!

Pero espera... antes de que el cliente pueda **MUNCH** bytecode, necesita una instrucción: un opcode para decirle a MUNCH. ¡`RETURN` es este código!

Como se indica en la especificación general, al final de la creación del contrato, el cliente (geth, paridad) toma el valor objetivo por el código de operación `RETURN` y **lo persiste** haciéndolo parte del código de bytes desplegado.

Una vez que estés en el `CODECOPY`, mira los 3 elementos principales de la **pila**:

`0: 0x0000000000000000000000000000000000000000000000000000000000000000`
`1: 0x0000000000000000000000000000000000000000000000000000000000000055`
`2: 0x000000000000000000000000000000000000000000000000000000000000003e`

\*En tu pila, `1` y `2` pueden ser ligeramente diferentes.  La diferencia puede deberse a una versión de compilador diferente. \*

\*\*Estos son los parámetros para `CODECOPY`. \*\*

Recuerde: _codecopy(t, f, s)_ - copie **s** bytes del código en la posición **f** a la memoria en la posición **t**

`0` es el desplazamiento en el que el código copiado debe colocarse en la **memoria**. En este ejemplo, (todos los ceros) el código se copia al principio de la memoria. (**T**)
`1` es el desplazamiento en **calldata** desde donde copiar (**f**)
`2` número de bytes para copiar - (**s**)

Después de ejecutar `CODECOPY`, (haga clic en el botón _entrar en_) el código copiado debe ser:
`0x6080604052600080fdfea265627a7a7231582029bb0975555a15a155e2cf28e025c8d492f0613bfb5cbf96399f6dbd4ea6fc9164736f6c63430005110032` en memoria.  **Me referiré a este valor como (X)**.

Echemos un vistazo al panel **Memoria** del depurador.
El número 0x que di arriba no es lo que verás en el panel **Memoria** - lo que verás es esto:
0x0: 6080604052600080fdfea265627a7a72 ???? R?????? Ebzzr
0x10: 31582029bb0975555a15a155e2cf28e0 1X ?? uUZ??U????
0x20: 25c8d492f0613bfb5cbf96399f6dbd4e ?????a?????9?m?N
0x30: a6fc9164736f6c634300051100320000 ???dsolcC????2??
0x40: 00000000000000000000000000000000 ????????????????
0x50: 000000000000000000000000000000a0 ???????????????
0x60: 00000000000000000000000000000000 ????????????????
0x70: 00000000000000000000000000000000 ????????????????
0x80: 00000000000000000000000000000000 ????????????????
0x90: 00000000000000000000000000000002 ????????????????

El `0x0`, `0x10`, etc. es la posición. El siguiente número es el código de bytes para esa posición.  A esto le siguen signos de interrogación y letras y números aparentemente aleatorios.  Este es el intento de **Remix** de convertir esto en una cadena.

Así que si pegamos las primeras cuatro secciones del código de bytes, obtendremos:**0x6080604052600080fdfea265627a7a7231582029bb0975555a15a155e2cf28e0a6fc9164736f6c63430005110032** La última sección - `0x90` tiene 2, que es lo que ingreso para el parámetro de constructores.

Los datos de entrada del panel **Datos de llamada** son:`0x6080604052348015600f57600080fd5b50604051609338038060938398181016040526020811015602f57600080fd5b81019080805190602001909291905050508060008190555050603e8060556000396000f3fe6080604052600080fdfea265627a7a723158029bb097555a15a155e2cf28e025c8d492f0613bf5cbf96399f6dbd4ea6fc9164736f6c6343000511003200000000000000000000000000000000000000000000000002`\*\*Me referiré a este valor como (Y). \*\*

Esto nos muestra que `(X)` es un subconjunto de los datos de llamada originales `(Y)`:

`(X)` son datos de llamada sin el parámetro de entrada `000000000000000000000000000000000000000000000000000000000002` (no necesitamos almacenar esto)Y sin el código de constructor `6080604052348015600f5760080fd5b506040516093380380609383398181016040526020811015602f57600080fd5b81019080805190602001909291905050508060008190555050603e8060556000396000f3fe` que debe ejecutarse solo 1 vez.

Así que `CODECOPY` extrae el código de bytes de los datos de llamada y lo copia en la memoria.

Vamos al siguiente paso.

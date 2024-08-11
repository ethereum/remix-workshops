The goal here is to store the code in the blockchain. The EVM needs to tell the client (geth, parity) which what part of the **Call Data** to store.   In this step, we are saving the contract MINUS its constructor (because that gets inplmented only 1 time) and MINUS the input parameter does not need to be stored.

`CODECOPY` is the first step: it copies the bytecode to memory, then the ethereum client will be able to consume it.  MUNCH!

But wait... before the client can **MUNCH**  bytecode, it needs an instruction - an opcode to tell it to MUNCH. `RETURN` is this opcode!

As stated in the general spec, at the end of the contract creation, the client (geth, parity) takes the targeted value by the opcode `RETURN` and **persists** it by making it part of the deployed bytecode.

Once you are in the `CODECOPY`, look at the top 3 items in the **Stack**:

`0: 0x0000000000000000000000000000000000000000000000000000000000000000`
`1: 0x0000000000000000000000000000000000000000000000000000000000000055`
`2: 0x000000000000000000000000000000000000000000000000000000000000003e`

_In your Stack - `1` & `2` may be slightly different.  The difference may be due to a different compiler version._

**These are the parameters for `CODECOPY`.**

Remember: _codecopy(t, f, s)_ - copy **s** bytes from code at position **f** to memory at position **t**

`0` is the offset where the copied code should be placed in the **memory**. In this example, ( all zeros) the code is copied to the beginning of the memory. (**t**)
`1` is the offset in **calldata** where to copy from (**f**)
`2` number of bytes to copy - (**s**)

After `CODECOPY` is executed, (click the _step into_ button) the copied code should be:
`0x6080604052600080fdfea265627a7a7231582029bb0975555a15a155e2cf28e025c8d492f0613bfb5cbf96399f6dbd4ea6fc9164736f6c63430005110032` in memory.  **I'll refer to this value as (X)**.

Let's look at the debugger's **Memory** panel.
The 0x number I gave above is not what you will see in the **Memory** panel -what you will see is this:
0x0: 6080604052600080fdfea265627a7a72 ????R??????ebzzr
0x10: 31582029bb0975555a15a155e2cf28e0 1X ?? uUZ??U????
0x20: 25c8d492f0613bfb5cbf96399f6dbd4e ?????a?????9?m?N
0x30: a6fc9164736f6c634300051100320000 ???dsolcC????2??
0x40: 00000000000000000000000000000000 ????????????????
0x50: 000000000000000000000000000000a0 ???????????????
0x60: 00000000000000000000000000000000 ????????????????
0x70: 00000000000000000000000000000000 ????????????????
0x80: 00000000000000000000000000000000 ????????????????
0x90: 00000000000000000000000000000002 ????????????????

The `0x0`, `0x10`, etc is the position. The next number is the bytecode for that position.  A esto le siguen signos de interrogación y letras y números aparentemente aleatorios.  Este es el intento de **Remix** de convertir esto en una cadena.

Así que si pegamos las primeras cuatro secciones del código de bytes, obtendremos:**0x6080604052600080fdfea265627a7a7231582029bb0975555a15a155e2cf28e0a6fc9164736f6c63430005110032** La última sección - `0x90` tiene 2, que es lo que ingreso para el parámetro de constructores.

Los datos de entrada del panel **Datos de llamada** son:`0x6080604052348015600f57600080fd5b50604051609338038060938398181016040526020811015602f57600080fd5b81019080805190602001909291905050508060008190555050603e8060556000396000f3fe6080604052600080fdfea265627a7a723158029bb097555a15a155e2cf28e025c8d492f0613bf5cbf96399f6dbd4ea6fc9164736f6c6343000511003200000000000000000000000000000000000000000000000002`\*\*Me referiré a este valor como (Y). \*\*

Esto nos muestra que `(X)` es un subconjunto de los datos de llamada originales `(Y)`:

`(X)` son datos de llamada sin el parámetro de entrada `000000000000000000000000000000000000000000000000000000000002` (no necesitamos almacenar esto)Y sin el código de constructor `6080604052348015600f5760080fd5b506040516093380380609383398181016040526020811015602f57600080fd5b81019080805190602001909291905050508060008190555050603e8060556000396000f3fe` que debe ejecutarse solo 1 vez.

Así que `CODECOPY` extrae el código de bytes de los datos de llamada y lo copia en la memoria.

Vamos al siguiente paso.

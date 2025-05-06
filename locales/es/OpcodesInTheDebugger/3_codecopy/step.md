CODECOPY es uno de los muchos códigos de operación ejecutados por la EVM. Echa un vistazo a la lista completa de opcodes en <a href="https://ethervm.io/" target="_blank">https://ethervm.io/</a> .

CODECOPY toma el **código de ejecución** (o parte de él) y lo copia de los "datos de llamada" a la "memoria".

La implementación de Solidity es: **codecopy(t, f, s)** - copia **s** bytes del código en la posición **f** a la memoria en la posición **t**.

Cada implementación de contrato utiliza **CODECOPY**.

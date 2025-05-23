# Encuentra la compensación ;)

Y ahora por un ejemplo ligeramente diferente:

- Compila notSimpleStore.sol
- Implementar el contrato `notSoSimpleStore`
- Asegúrese de tener una implementación exitosa; si no, compruebe que utilizó **el tipo de entrada correcto** en el constructor.
- Vaya al depurador haciendo clic en el botón **depurar** en la transacción de creación (exitosa).
- Encuentre el valor del parámetro de `CODECOPY` que representa el desplazamiento en los datos de llamada desde donde copiar.

Recuerde: _codecopy(t, f, s)_ - copie **s** bytes del código en la posición **f** a la memoria en la posición **t**

Si miras en la **pila**, deberías ver que el segundo elemento es:0x00000000000000000000000000000000000000000000000000000000000000083

Y este es el **f** de los parámetros de entrada de codecopy.

### ¡Espero que hayas aprendido una cosa o 2 sobre cómo funcionan los códigos de operación!
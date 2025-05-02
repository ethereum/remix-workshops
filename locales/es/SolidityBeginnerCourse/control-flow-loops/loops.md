Solidity soporta declaraciones de flujos de control iterativos que permiten que los contratos ejecuten el código repetidamente.

Solidity diferencia entre tres tipos de loops: `for`, `while`, y `do while`

### for

Generalmente los loops `for` (línea 7) vienen bien si se sabe cuántas veces se quiere ejecutar un determinado bloque de código. En solidity se debe especificar esta cantidad para evitar que se agote el gas de las transacciones y que estas fallen si el número de iteraciones es demasiado elevado.

### while

Si no sabe cuántas veces quiere ejecutar el código pero quiere parar el loop basándose en una condición, puede usar un `while` loop (línea 20).
Los loops no se utilizan mucho en Solidity porque las transacciones pueden agotar el gas y fallar si no hay un límite para el número de iteraciones que pueden ocurrir.

### do while

El loop `do while` es un tipo especial de while loop en el que se puede asegurar que el código se ejecute al menos una vez, antes de chequear la condición.

### continue

La declaración `continue` se usa para saltar el bloque de código restante y comenzar la siguiente iteración del loop. En este contrato, la declaración `continue` (línea 10) evitará que la segunda declaración if (línea 12) sea ejecutada.

### break

La declaración `break` se usa para salir de un loop. En este contrato la declaración de paro (break) (línea 14) causará un for loop que terminará después de la sexta interacción.

<a href="https://www.youtube.com/watch?v=SB705OK3bUg" target="_blank">Mire un vídeo con un tutorial sobre declaraciones de Loop</a>.

## ⭐️ Misión

1. 1.Crear una variable de estado `uint` llamada count en el contrato `Loop`.
2. Al final del for loop, incrementar la variable contable en 1.
3. Intente que la variable contable sea igual a 9, pero asegúrese de que no edita la declaración `break`.
Antes de empezar, solo un recordatorio rápido:

El tiempo de ejecución de la EVM tiene varios tipos de memoria:

- `calldata`: Este es el valor de entrada dado a la transacción.
- `pila`: Básicamente, esta es una lista de valores, cada valor tiene un tamaño limitado (32 bytes).
- `memoria`: La memoria se utiliza cuando el **tipo** de valor almacenado es más complejo, como una matriz o una asignación. Esta memoria es **temporal** y se **libera** al final de la ejecución.
- `almacenamiento`: Este es un mapeo, cada valor almacenado se **persiste** y se guarda en cadena.

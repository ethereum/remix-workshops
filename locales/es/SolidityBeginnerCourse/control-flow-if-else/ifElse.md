Solidity soporta declaraciones de flujos de control que determina qué partes del contrato van a ser ejecutadas. El condicional _declaraciones If/Else_ (If/Else statement) facilita contratos para tomar decisiones dependiendo de si las condiciones booleanas son verdaderas o falsas.

Solidity diferencia entre tres diferentes declaraciones If/Else: `if`, `else`, and `else if`.

### if

La declaración `if` es la más básica que permite al contrato ejecutar una acción basada en una expresión booleana.

En la función `foo` de este contrato (línea 5) la declaración if (línea 6) mira si `x` es menor que  `10`. Si la declaración es verdad, la función devuelve `0`.

### else

La declaración  `else` facilita que el contrato ejecute una acción si las condiciones no se cumplen.

En este contrato, la función `foo` utiliza la declaración `else` (línea 10) para devolver `2` si ninguna de las otras condiciones se cumple.

### else if

Con la declaración `else if` podemos combinar diferentes condiciones.

Si la primera condición  (línea 6) de la función  foo no se cumple pero la condición de la declaración `else if`(línea 8) torna verdadera, la función devuelve `1`.

<a href="https://www.youtube.com/watch?v=Ld8bFWXLSfs" target="_blank">Mire un tutorial con vídeos sobre las declaraciones If/Else </a>.

## ⭐️ Misión

Crear una función llamada  `evenCheck`  en el contrato  `IfElse`:
Que toma un `uint` como argumento .

- Eso toma un "uint" como argumento.
- La función devuelve `verdadero` si el argumento es par y `falso`si el argumento es impar.
- Usa un operador ternario para devolver el resultado de una función `evenCheck`.

Consejo: El operador de módulo (%) produce la diferencia de una división numérica.
Esta sección prestará atención a los tipos de funciones que no modifican el estado de la blockchain: funciones _view_ y _pure_

### Funciones View

Las funciones View prometen no modificar el estado

“Las siguientes declaraciones se considera que modifican el estado”

1. Escribir a variables de estados.
2. Emitir eventos.
3. Crear otros contratos.
4. Usar la auto desestructuración (self-destruct).
5. Enviar Ether vía llamadas.
6. Llamar cualquier función no marcada como view o pure.
7. Usar llamadas de bajo nivel.
8. Usando asambleas en línea que contienen determinados opcodes."

De <a href="https://docs.soliditylang.org/en/latest/contracts.html#view-functions" target="_blank">documentación sobre Solidity</a>.

Puede declarar una función vista (view) usando la palabra clave `view`. En este contrato, `addToX` (línea 8)  es una función vista. Esta función toma el parámetro `y` y devuelve la suma de los parámetros y de las variables de estado `x`. Lee `x` pero no lo modifica.

### Funciones Pure

Las _Pure functions_ prometen no modificar ni leer el estado.

“Además de la lista de  declaraciones de estados modificando explicadas anteriormente, las siguientes se considera que leen desde el estado:

1. Leyendo desde las variables de estado, .
2. Accediendo `address(this).balance` o `<address>.balance`.
3. Accediendo alguno de los miembros de un bloque, tx, mensaje (con la excepción de  `msg.sig` and `msg.data`)
4. Llamando a cualquier función no marcada como pura.
5. Usar asamblea en línea que contiene ciertos opcódigos."

De <a href="https://docs.soliditylang.org/en/latest/contracts.html#pure-functions" target="_blank">documentación de Solidity</a>.

Puede declarar una función pura usando la palabra clave `pure`. En este contrato, `add` (línea 13) es una función pura. Esta función toma los parámetros `i` y `j`, y devuelve la suma de ellos. No lee ni modifica la variable de estado `x`.

En el desarrollo de Solidity, necesita optimizar su código para ahorrar costes de computación (gas cost). Declarar funciones view y pure puede ahorrar mucho coste de gas y hacer el código más legible y fácil de mantener. Las funciones pure no tienen efectos secundarios y devolverán siempre el mismo resultado si se pasan los mismos argumentos.

<a href="https://www.youtube.com/watch?v=vOmXqJ4Qzbc" target="_blank">Mire un video con tutoriales sobre funciones View y Pure</a>.

## ⭐️ Misión

Crear una función llamada `addToX2`  que tome el parámetro `y`  y actualizar las variables de estado `x` con la suma de los parámetros y el estado de variable `x`.
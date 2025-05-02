En esta sección, aprenderemos sobre los inputs y outputs de las funciones.

### Outputs llamados de manera múltiple

Las funciones pueden retornar múltiples valores que pueden ser nombrados o designados un nombre.

La función `returnMany`  (line 6) muestra cómo devolver múltiples valores.
A menudo habrá de retornar múltiples valores. Puede tratarse de una función que colecciona outputs de varias funciones y las devuelve en una sola llamada por ejemplo.

La función `named` (línea 19) muestra cómo nombrar valores de retorno.
Nombrar valores de retorno ayuda a la legibilidad de nuestros contratos. Valores de retorno nombrados facilitan el llevar un registro de los valores y el orden en que son devueltos. También puedes asignar valores a un nombre.

La función `assigned` (línea 33) muestra cómo asignar valores a un nombre.
Si asigna valores a un nombre puede omitir (dejar fuera) la declaración de retorno y devolverlos individualmente.

### Constructora

Puede deconstruir misiones para desempaquetar valores dentro de variables distintas.

La función `destructingAssigments` (línea 49) asigna los valores de la función `returnMany` a las nuevas variables locales `i`, `b`, y `j` (línea 60).

### restricciones de Input y Output

Existen algunas restricciones y buenas prácticas para los parámetros de input y output de las funciones de contratos.

"_[Los Mapeos] no pueden ser usados como parámetros o parámetros de retorno de funciones de contratos que son visibles públicamente._”
De <a href="https://docs.soliditylang.org/en/latest/types.html#mapping-types" target="_blank">documentación de Solidity</a>

Las colecciones pueden ser usadas como parámetros , como se ha mostrado en la función `arrayInput` (línea 71). Las colecciones pueden también ser usadas como parámetros de retorno, como hemos mostrado en la función `arrayOutput` (línea 76).

Ha de tener cuidado con las colecciones de tamaño aleatorio, por su consumo de gas. Mientras que una función con largas colecciones como inputs puede fallar cuando los costes de gas son elevados, una función que usa una colección más pequeña podría ser ejecutada.

<a href="https://www.youtube.com/watch?v=b6FBWsz7VaI" target="_blank">Mira un vídeo con tutoriales sobre modificadores de funciones</a>.

## ⭐️ Misión

Crear una nueva función llamada `returnTwo` que devuelva los valores  `-2` y  `true` sin usar una declaración de retorno.
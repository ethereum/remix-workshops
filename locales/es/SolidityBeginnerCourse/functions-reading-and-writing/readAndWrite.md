Esta sección dará una breve introducción a funciones y enseñará cómo usarlas para leer y escribir sobre una variable de estado.

Como en otros lenguajes, usamos funciones en Solidity para crear código modular y reutilizable. Sin embargo, las funciones de Solidity tienen particularidades.

Las funciones de Solidity pueden dividirse en dos tipos:

1. Funciones que modifican el estado de la blockchain, como escribir a una variable de estado. En este contrato, la función `set` (línea 9) cambia la variable de estado `num`.
2. Funciones que no modifican el estado de la blockchain. Estas funciones están marcadas como `view` o `pure`. Por ejemplo, en este contrato, la función `get` (línea 14) marcada como `view` que solamente devuelve `num`.

Para definir una función, use la palabra clave `function`, seguida de un nombre único.

Para definir una función que toma inputs como nuestra función `set` (línea 9), ha de especificar los tipos y nombres de los parámetros. Una convención común es usar el guión bajo como prefijo para los nombres de los parámetros para distinguirlos de las variables de estado.

Puede establecer la visibilidad de una función y declararla como `view` o `pure`, como lo hacemos para la función `get`, si no se modifica el estado. Nuestra función `get` también devuelve valores, así que debemos especificar los tipos de retorno. En este caso, es un `uint` porque la variable de estado `num` que devuelve la función es una `uint`.

Vamos a explorar las particularidades de las funciones de Solidity en más detalle en las siguientes secciones.

<a href="https://www.youtube.com/watch?v=Mm6834AAY00" target="_blank">Mire un tutorial sobre funciones</a></a>.

## ⭐️ Misión

1. 1.Crear una variable de estado público llamada `b`, que es del tipo`bool` e inicia con `true`.
2. Crear una función pública llamada `get_b` que devuelva el valor de  `b`.
En las próximas secciones miraremos las estructuras de data que se pueden usar para organizar y almacenar nuestro data en Solidity.

_Arrays_, _mappings_ y _structs_ son _tipos de referencia_ (reference types). Al contrario que los _tipos de valor_ (e.g. _booleans_ o _integers_), los tipos de referencia no almacenan su valor directamente. En su lugar, almacenan su localización en la que el valor se almacena. Las variables de múltiple referencia podrían hacer referencia a la misma ubicación y un cambio en una variable podría afectar a las demás.

En Solidity las colecciones (arrays) almacenan listas ordenadas de valores del mismo tipo de las que estaban indexadas numéricamente.

Hay dos tipos de colecciones, de _tamaño-fijo_ (fixed-size) compila-tiempo y _colecciones dinámicas_ (dynamic arrays). Para las colecciones de tamaño fijo necesitamos declarar la talla de las colecciones antes de que se compile. El tamaño de las colecciones dinámicas puede ser cambiado después de que el contrato se haya compilado.

### Declaraciones de matrices

Declaramos una colección de tamaño fijo proporcionando su tipo, el tamaño de la colección (como un número entre corchetes), visibilidad y nombre (línea 9).

Declaramos una colección dinámica de la misma manera. No obstante, no proporcionamos el tamaño de la colección y dejamos los corchetes vacíos (línea 6).

### Inicialización de matrices

Podemos inicializar los elementos de una colección todos a la vez (línea 7), o inicializar nuevos elementos uno por uno (arr[0] = 1;). Si declaramos una colección, automáticamente inicializamos sus elementos con el valor inicial 0 (línea 9).

### Acceso a los elementos de la matriz

Accedemos elementos dentro de una colección proporcionando el nombre de la colección y el índice de los paréntesis (línea 12).

### Añadir elementos de una colección

Usando la función de miembro `push()`, añadimos un elemento al final de la colección dinámica (línea 25).

### Eliminar los elementos de una colección

Usando la función de miembro `pop()`, eliminamos el último elemento de una colección dinámica (línea 31).

Podemos usar el operador `delete` para eliminar un elemento con un índice específico de una colección (línea 42).
Cuando eliminamos el elemento con el operador `delete` todos los demás elementos permanecen iguales, lo que significa que la extensión de la colección permanece igual. Esto creará un espacio en nuestra colección.
Si el orden de la colección no es importante, entonces podemos mover el último elemento de la colección al lugar del elemento eliminado (línea 46) o usar un mapeo. Un mapeo puede ser una mejor opción si planeamos eliminar elementos en nuestra estructura de datos.

### Longitud de la matriz

Usando el miembro de extensión, podemos leer el número de elementos que están almacenados en una colección (línea 35)

<a href="https://www.youtube.com/watch?v=vTxxCbwMPwo" target="_blank">Mira un vídeo tutorial sobre matrices</a>.

## ⭐️ Misión

1. Inicializar una colección `arr3` con los valores 0, 1, 2. El tamaño ha de ser lo menor posible.
2. Cambiar la función `getArr()` para devolver el valor de `arr3`.
En Solidity podemos definir los tipos de data a medida en forma de _structs_. Structs son una colección de variables que pueden consistir en tipos de data diferentes.

### Definiendo structs

Definimos struct usando la palabra clave `struct` y un nombre (línea 5). Dentro de unas llaves (curly braces), podemos definir los miembros de nuestros structs, que consisten en los nombres de las variables y sus tipos de data.

### Inicialización de estructuras

Hay diferentes maneras de inicializar un struct.

Parámetros posicionales: podemos proporcionar el nombre del struct y los valores de sus miembros como parámetros entre paréntesis (línea 16).

Mapeo de valor-clave: Proporcionamos el nombre del struct y las claves y valores como un mapeo dentro de llaves (línea 19).

Inicializamos un struct vacío primero y después su miembro asignándole un nuevo valor (línea 23).

### Accediendo a structs

Para acceder un miembro de un struct podemos usar el operador de punto (línea 33).

### Actualizando structs

Para actualizar los miembros de un struct también usamos el operador de punto y le asignamos un nuevo valor (líneas 39 y 45).

<a href="https://www.youtube.com/watch?v=kYBHq7EmFBc" target="_blank">Mira un vídeo con tutoriales sobre Structs</a>.

## ⭐️ Misión

Crear una función `remove` que tome `uint` como un parámetro y elimine un miembro de struct con el índice dado en el mapeo de  `todos`.
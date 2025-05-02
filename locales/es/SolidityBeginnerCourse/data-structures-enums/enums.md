En Solidity  los _enums_ son tipos de data customizados que consisten en un set limitado de valores constantes. Usamos enums cuando a nuestras variables se les asigna un valor de un set predeterminado de valores.

En este contrato, a la variable de estado `status` se le puede asignar un valor desde el set limitado de valores del enum `Status`, que representa los varios estados de un estado de envío.

### Definiendo enums

Definimos un enum con la palabra clave enum, seguida del nombre del tipo a medida que queremos crear (línea 6). Dentro de las llaves (curly braces) definimos todos los miembros del enum disponibles.

### Inicializando una variable de enum

Podemos inicializar una nueva variable de un tipo de enum proporcionando el nombre del enum, la visibilidad, y el nombre de la variable (línea 16). Tras su inicialización, a la variable se le asignará el valor del primer miembro del enum, en este caso, Pendiente (Pending) (línea 7).

A pesar de que los miembros de enum son nombrados cuando se definen, son almacenados como números (integers), no texto (strings). Son numerados en el orden en que son definidos, el primer miembro comenzando con 0. El valor inicial de estado, en este caso, es 0.

### Accediendo un valor de enum

Para acceder el valor de enum de una variable simplemente necesitamos proporcionar el nombre de variable que está almacenado en el valor (línea 25).

### Actualizando un valor enum

Podemos actualizar el valor enum de una variable asignándole en el `uint` representando el miembro de enum (línea 30). Enviado sería 1 en este ejemplo. Otra forma de actualizar el valor es usando el operador de punto proporcionando el nombre del enum y sus miembros (línea 35).

### Eliminar un valor de enum

Podemos usar el operador delete para eliminar el valor enum de la variable, lo que significa respecto a las colecciones y mapeos que el valor inicial es 0.

<a href="https://www.youtube.com/watch?v=yJbx07N15j0" target="_blank">Mira este vídeo con tutoriales sobre Enums</a>.

## ⭐️ Misión

1. Definir un tipo de enum llamado `Size` con los miembros `S`, `M`, y `L`.
2. Inicializar la variable `sizes` del tipo de enum `Size`.
3. Crear una función getter `getSize()` que devuelve el valor de la variable `sizes`.
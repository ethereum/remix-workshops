En Solidity, _mapeos_ (mappings) son una colección de tipos de claves (keys) y correspondiendo con pares de tipo de valor.

La mayor diferencia entre un mapeo y una colección es que no puedes iterar los mapeos. Si no sabemos la clave no seremos capaces de acceder su valor. Si necesitamos saber todo nuestro data e iterar sobre ello, debemos usar una colección.

Si queremos recuperar un valor basado en una clave conocida podemos usar un mapeo (por ejemplo direcciones a menudo usadas como claves). Mirando a valores con un mapeo es fácil y más asequible que iterar las colecciones. Si las colecciones se vuelven demasiado largas, los costes de gas de iterar pueden volverse demasiado altos y causar que la transacción falle.

También podemos almacenar las claves de un mapeo en una colección que podrá ser iterada.

### Creando mapeos

Los mapeos son declarados con la sintaxis `mapping(KeyType => ValueType) VariableName`.
El tipo key puede tener cualquier valor incorporado o cualquier contrato, pero no cualquier tipo de referencia. El tipo de valor puede ser de cualquier tipo.

En este contrato, estamos creando el mapeado público `myMap` (línea 6), que asocia el tipo de key `address`  con el tipo de valor `uint`.

### Accediendo valores

La sintaxis para interactuar con pares de valores-clave de los mapeados es similar a la de las colecciones.
Para encontrar el valor asociado a una clave específica, proporcionamos el nombre del mapeado y la clave entre paréntesis (línea 11).

En contraste con las colecciones, no recibiremos un error si intentamos acceder al valor de una clave cuyos valores no han sido aún establecidos. Si creamos un mapeado, todas las claves posibles son mapeadas hasta el valor por inicial 0.

### Establecer valores

Establecemos un nuevo valor para una clave, proporcionando el nombre del mapeo y llave entre paréntesis y asignando un nuevo valor (línea 16).

### Eliminar valores

Podemos usar el operador delete para eliminar un valor asociado a la clave, el cual reestablecerá el valor inicial de 0. Como lo hemos visto en la sección de colecciones.

<a href="https://www.youtube.com/watch?v=tO3vVMCOts8" target="_blank">Mire un tutorial con vídeaos sobre mapeos</a>.

## ⭐️ Misión

1. Crear un mapeo público `balances` que asocie el tipo de clave `address`con el tipo de valor `uint`.
2. Cambiar las funciones `get` y`remove` para trabajar con los balances de mapeo.
3. 3.Cambiar la función `set` para crear una nueva entrada a los mapeos de balance, en el que la clave es la dirección de los parámetros y el valor es balance asociado con la dirección del parámetro.
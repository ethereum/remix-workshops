Las librerías parecen un **contrato** pero utiliza la palabra clave `library`

Una librería típicamente es una colección de funciones útiles que se encuentran ahí fuera en la cadena de bloques que cualquier contrato puede usar.  Debido a que la librería ya está instalada, ahorra los costos de despliegue de los muchos contratos que la utilizan.

En el siguiente contrato:

- Crea una librería con el nombre `LibraryForTest`.

Es posible colocar una biblioteca en el mismo archivo con otro contrato.  Así que pon la librería debajo del contrato.

Esta librería debería tener un método llamado método `getFromLib` que devuelva `3`.

- Actualiza el método `get` en el contrato de prueba para utilizar la librería `LibraryForTest`.   La función `get` devolverá el valor que recibe de `getFromLib`.

---------

Puedes encontrar más información sobre las librerías en <a href="https://solidity.readthedocs.io/en/latest/contracts.html?highlight=library#libraries" target="_blank">esta sección de los documentos de Solidity</a>.

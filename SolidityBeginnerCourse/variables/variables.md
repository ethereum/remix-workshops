Hay tres diferentes tipos de variables en Solidity: *Variables de Estado* (State Variables), *Variables Locales* (Local Variables) y *Variables Globales* (Global Variables).

## 1. Variables de Estado

Las *Variables de Estado* se almacenan en *almacén* del contrato y por tanto en la blockchain. Están declaradas dentro del contrato pero fuera de la función. 
Este contrato tiene dos variables de estado, el `texto` (string) (línea 6) y el uint `num` (línea 7).

## 2. Variables Locales

Las *Variables Locales* se almacenan en la *memoria* y sus valores son solamente accesibles en las funciones en las que están definidas. Las Variables Locales no se almacenan en la blockchain. En este contrato el  uint `i` (línea 11) es una variable local. 

## 3. Variables Globales
Las *Variables Globales* (Global Variables) también llamadas *Variables Especiales* (Special Variables) existen en el espacio de nombres global. No necesitan ser declaradas pero pueden ser accedidas desde dentro de su contrato. Variables Globales son usadas para tomar información sobre la blockchain, direcciones particulares, contratos y transacciones. 

En este ejemplo usamos `block.timestamp` (línea 14) para tener una estampa de tiempo cuando los bloques actuales fueron generados y `msg.sender` (línea 15) para saber qué dirección de la función en el contrato. 

Una lista de todas las Variables Globales está disponible en <a href="https://docs.soliditylang.org/en/latest/cheatsheet.html?highlight=Variables#global-variables" target="_blank">documentación de Solidity</a>.

Puede ver más tutoriales en  <a href="https://www.youtube.com/watch?v=hl692-xJPUQ" target="_blank">Variables de Estado</a>, <a href="https://www.youtube.com/watch?v=5Gxzwn0SQDU" target="_blank">Variables Locales</a>, y<a href="https://www.youtube.com/watch?v=ryA86ZiSD-w" target="_blank">Variables Globales</a>.


## ⭐️ Misión

1. Crear una nueva variable de estado pública llamada `blockNumber`.
2. Dentro de la función `doSomething()`,asigne el valor del actual número de bloques de la variable de estado `blockNumber`.

Consejo: Mire en la sección de variables globales de la documentación de Solidity para encontrar cómo leer el actual número de bloques. 

Hay tres tipos diferentes de variables en Solidity: _Variables estatales_, _Variables locales_ y _Variables globales_.

## 1. Variables de estado

_Las variables de estado_ se almacenan en el contrato _almacenamiento_ y, por lo tanto, en la cadena de bloques. Se declaran dentro del contrato, pero fuera de la función.
Este contrato tiene dos variables de estado, la cadena `text` (línea 6) y la uint `num` (línea 7).

## 2. Variables Locales

_Las variables locales_ se almacenan en la _memoria_ y sus valores solo son accesibles dentro de la función en la que se definen. Las variables locales no se almacenan en la cadena de bloques.
En este contrato, la uint `i` (línea 11) es una variable local.

## 3. Variables globales

_Variables globales_, también llamadas _Variables especiales_, existen en el espacio de nombres global. No es necesario declararlos, pero se puede acceder a ellos desde su contrato.
Las variables globales se utilizan para recuperar información sobre la cadena de bloques, direcciones particulares, contratos y transacciones.

En este ejemplo, usamos `block.timestamp` (línea 14) para obtener una marca de tiempo Unix de cuándo se generó el bloque actual y `msg.sender` (línea 15) para obtener la llamada de la dirección de la función del contrato.

Una lista de todas las variables globales está disponible en la <a href="https://docs.soliditylang.org/en/latest/cheatsheet.html?highlight=Variables#global-variables" target="_blank">documentación de solidez</a>.

Vea tutoriales en vídeo sobre <a href="https://www.youtube.com/watch?v=hl692-xJPUQ" target="_blank">Variables de estado</a>, <a href="https://www.youtube.com/watch?v=5Gxzwn0SQDU" target="_blank">Variables locales</a> y <a href="https://www.youtube.com/watch?v=ryA86ZiSD-w" target="_blank">Variables globales</a>.

## ⭐️ Asignación

1. Crea una nueva variable de estado público llamada "número de bloque".
2. Dentro de la función `doSomething()`, asigna el valor del número de bloque actual a la variable de estado `blockNumber`.

Consejo: Mire la sección de variables globales de la documentación de Solidity para averiguar cómo leer el número de bloque actual.

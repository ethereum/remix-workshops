En esta sección, crearemos nuestro primer “contrato inteligente”. Este contrato consiste solamente en un texto (string) que contiene el valor “Hola Mundo!”

En la primera línea, debemos especificar la licencia que queremos utilizar. Puedes encontrar una detallada lista de licencias aquí: <a href="https://spdx.org/licenses/" target="_blank">https://spdx.org/licenses/</a>.

Usando la clave `pragma` (línea 3), especificamos la versión de Solidity que queremos compilar para usar. En este caso, debería de ser mayor o igual a `0.8.3` pero menos de 0.9.0.

Definimos un contrato con la clave `contract` y le damos un nombre, en este caso  `HelloWorld`
(línea 5).

En nuestro contrato definimos una _variable de estado_ (state variable) `greet` que contiene el texto (string) `¡Hola Mundo!"` (línea 6).

Solidity es un lenguaje _estadísticamente mecanografiado_, que significa que usted necesita especificar el tipo de variable cuando la declara. En este caso `greet` es un `string` (texto).

También definiremos la “visibilidad” de la variable, que especifica desde dónde se puede acceder a ella. En este caso, es una variable `pública` a la que se puede acceder desde dentro y fuera del contrato.

No se preocupe si no entiende algunos conceptos como el de _visibilidad_, _tipos de data_, o  _variables de estado_. Vamos a observarlas en las siguientes secciones.

Para ayudarle a entender el código, vamos a vincular las siguientes secciones con tutoriales en vídeo <a href="https://www.youtube.com/channel/UCJWh7F3AFyQ_x01VKzr9eyA" target="_blank">creador</a>  de Solidity en los contratos de ejemplo.

<a href="https://www.youtube.com/watch?v=g_t0Td4Kr6M" target="_blank">Mire un tutorial sobre la sintaxis básica</a>.

## ⭐️ Misión

1. Borre el contrato HelloWorld y su contenido.
2. Cree un nuevo contrato llamado "MyContract".
3. El contrato ha de tener una variable de estado pública llamada “nombre” (name) del tipo “string”.
4. Asigne el valor “Alice” a tu nueva variable.

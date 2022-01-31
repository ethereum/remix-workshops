En esta sección aprenderemos a modificar el comportamiento de una función y cómo correr el codigo de inicialización de un contrato. 

### Modificador de Función
Los *modificadores de función* (function modifiers) se usan para cambiar el comportamiento de una función. Por ejemplo, a menudo buscan la condición anterior a la ejecución de una función para restringir accesos o validar inputs. 

La primera parte de este contrato trata sobre cambiar la autoría de un contrato. La autoría en este contrato es expresada por el valor del `owner` (dueño) de la variable de estado que se encuentra en el tipo `address` (línea 7).

La función `changeOwner` (línea 33)  puede cambiar su dueño. Toma un parametro input del tipo  `address` y asigna  su valor a la variable de estado`owner`.

Sin embargo esta función no puede simplemente ser ejecutada con todas las condiciones: Tiene dos modificadores, `onlyOwner` y `validAddress`.

Echemos un vistazo a `onlyOwner` (línea 18). 
Los modificadores de funciones son definidos con la palabra clave `modifier` y un nombre único. También pueden tener parámetros. 

El guión bajo `_` (línea 23) se usa dentro de los modificadores para representar el resto de código que será ejecutado en el cuerpo de la función modificada. 
El código que vaya antes de un guión bajo en el modificador será ejecutado antes que el código en el cuerpo de la función modificada. EL código después del guión bajo será ejecutado después del código en el cuerpo de la función modificada. 

En este caso la función `require` (línea 19) comprueba que la dirección que ejecuta el contrato es la misma que el valor almacenado en la variable `owner`. Si lo es, el resto del código será ejecutado. Si no, lanzará un error. 

Puedes aprender más sobre `assert` y `require` en <a href="https://docs.soliditylang.org/en/latest/control-structures.html#error-handling-assert-require-revert-and-exceptions" target="_blank">documentación de Solidity</a>, son usados para comprobar las condiciones y lanzar errores si estas no se cumplen. 

El modificador  `validAddress` (línea 28) tiene un parámetro del tipo `address` y comprueba que la dirección proporcionada es válida. Si lo es, el código continua ejecutándose. 


### Constructora
Una función constructora es ejecutada a partir de la creación de un contrato. Puede usarla para correr el código de inicialización de un contrato. La constructora puede tener parámetros y es especialmente de ayuda cuando los valores de inicialización antes de desplegar el contrato son desconocidos.

Una constructora se declara usando la palabra clave `constructor`. La constructora en este contrato (línea 11) establece el valor inicial del ator de la variable basándose en la creación del contrato. 

<a href="https://www.youtube.com/watch?v=b6FBWsz7VaI" target="_blank">Mira un vídeo con tutoriales sobre modificadores de funciones</a>.

## ⭐️ Misión
1. Crea una nueva función `increaseX`  en el contrato. La función debe tomar un parámetro input del tipo `uint` e incrementar el valor de la variable `x`  con el valor del parámetro input. 
2. Asegúrate de que x solamente puede ser incrementado.
3. El cuerpo de la función `increaseX` debe de estar vacío. 

Consejo: Usa los modificadores.

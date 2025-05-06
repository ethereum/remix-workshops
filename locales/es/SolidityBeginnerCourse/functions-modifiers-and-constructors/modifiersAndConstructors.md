En esta sección, aprenderemos cómo modificar el comportamiento de una función y cómo ejecutar el código de inicialización del contrato.

### Función Modificar

_Los modificadores de función_ se utilizan para cambiar el comportamiento de una función. Por ejemplo, a menudo comprueban una condición antes de ejecutar una función para restringir el acceso o validar las entradas.

Esta primera parte de este contrato trata de cambiar la propiedad de un contrato. La propiedad de este contrato se expresa por el valor de la variable de estado "propietario" que es del tipo "dirección" (línea 7).

La función "cambio de propietario" (línea 33) puede cambiar esta propiedad. Toma un parámetro de entrada del tipo "dirección" y asigna su valor a la variable de estado "propietario".

Sin embargo, esta función no se puede ejecutar simplemente en todas las condiciones; tiene dos modificadores, "onlyOwner" y "validAddress".

Echemos un vistazo a "onlyOwner" primero (línea 18).
Los modificadores de funciones se definen con la palabra clave "modificador" y un nombre único; también pueden tener parámetros.

El guión bajo `_` (línea 23) se utiliza dentro de los modificadores para representar el resto del código que se ejecutará en el cuerpo de la función modificada.
El código que coloque antes del guión bajo en el modificador se ejecutará antes del código en el cuerpo de la función modificada. El código después del guión bajo se ejecutará después del código en el cuerpo de la función modificada.

En este caso, la función "requiere" (línea 19) comprueba si la dirección que ejecuta el contrato es la misma que el valor almacenado en la variable "propietario". Si lo es, el resto del código se ejecutará, de lo contrario se generará un error.

Puede obtener más información sobre "afirmar" y "requerir" en la <a href="https://docs.soliditylang.org/en/latest/control-structures.html#error-handling-assert-require-revert-and-exceptions" target="_blank">documentación de solidity</a>, se utilizan para comprobar las condiciones y lanzar errores si no se cumplen.

El modificador "dirección válida" (línea 28) tiene un parámetro de tipo "dirección" y comprueba si la dirección proporcionada es válida. Si lo es, continúa ejecutando el código.

### Constructor

Una función de constructor se ejecuta tras la creación de un contrato. Puedes usarlo para ejecutar el código de inicialización del contrato. El constructor puede tener parámetros y es especialmente útil cuando no se conocen ciertos valores de inicialización antes de la implementación del contrato.

Declaras un constructor usando la palabra clave `constructor`. El constructor de este contrato (línea 11) establece el valor inicial de la variable propietario en el momento de la creación del contrato.

<a href="https://www.youtube.com/watch?v=b6FBWsz7VaI" target="_blank">Mira un vídeo tutorial sobre modificadores de funciones</a>.

## ⭐️ Asignación

1. Crea una nueva función, "increaseX" en el contrato. La función debe tomar un parámetro de entrada de tipo `uint` y aumentar el valor de la variable `x` en el valor del parámetro de entrada.
2. Asegúrese de que x solo se pueda aumentar.
3. El cuerpo de la función "increaseX" debe estar vacío.

Consejo: Utilice modificadores.
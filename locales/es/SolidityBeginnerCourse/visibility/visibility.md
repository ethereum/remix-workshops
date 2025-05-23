El especificador de "visibilidad" se utiliza para controlar quién tiene acceso a funciones y variables de estado.

Hay cuatro tipos de visibilidades: "externa", "público", "interno" y "privado".

Regulan si las funciones y las variables de estado se pueden llamar desde el interior del contrato, de los contratos que se derivan del contrato (contratos infantiles) o de otros contratos y transacciones.

### privado

- Se puede llamar desde dentro del contrato

### internal

- Se puede llamar desde dentro del contrato
- Se puede llamar desde un contrato infantil

### público

- Se puede llamar desde dentro del contrato
- Se puede llamar desde un contrato infantil
- Se puede llamar desde otros contratos o transacciones

### externo

- Se puede llamar desde otros contratos o transacciones
- Las variables de estado no pueden ser "externas"

En este ejemplo, tenemos dos contratos, el contrato "Base" (línea 4) y el contrato "Hijo" (línea 55) que hereda las funciones y las variables de estado del contrato "Base".

Cuando anulas el comentario en el `testPrivateFunc` (líneas 58-60), obtienes un error porque el contrato infantil no tiene acceso a la función privada `privateFunc` del contrato `Base`.

Si compila e implementa los dos contratos, no podrá llamar a las funciones "privateFunc" e "internalFunc" directamente. Solo podrás llamarlos a través de `testPrivateFunc` y `testInternalFunc`.

<a href="https://www.youtube.com/watch?v=NBzQVJ6OrrQ" target="_blank">Mira un vídeo tutorial sobre Visibilidad</a>.

## ⭐️ Asignación

Cree una nueva función en el contrato "Hijo" llamada "testInternalVar" que devuelva los valores de todas las variables de estado del contrato "Base" que se pueden devolver.
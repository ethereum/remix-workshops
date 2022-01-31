La visibilidad es usada para controlar quién tiene acceso a las funciones y variables de estado. 

Hay cuatro tipos de visibilidad: : `external`, `public`, `internal`, y `private`

Estas regulan si las funciones y variables de estado pueden ser llamadas desde el interior de un contrato, desde contratos que derivan de un contrato (contratos hijos), u otros tipos de contratos y transacciones. 

### private
- Puede ser llamada dentro del contrato.

### internal
- Puede ser llamada dentro del contrato.
- Puede ser llamada desde un contrato hijo.

### public
- Puede ser llamada dentro del contrato.
- Puede ser llamada desde un contrato hijo.
- Puede ser llamada desde otros contratos o transacciones.

### external
- Puede ser llamada desde otros contratos o transacciones.
- Variables de estado no pueden ser externas. 


En este ejemplo tenemos dos contratos, el contrato  `Base` (base) (línea 4) y el contrato `Child` (hijo) (línea 55), que hereda las funciones y variables de estado del contrato `Base`. 

Cuando descomente el `testPrivateFunc` (líneas 58-60) recibirá un error porque el contrato hijo no tiene acceso a la función privada `privateFunc` del contrato  `Base`.

Si compila y despliega los dos contratos, no será capaz de llamar a las funciones `privateFunc` e `internalFunc` directamente. Sólo será capaz de llamarlas vía `testPrivateFunc` y `testInternalFunc`.

<a href="https://www.youtube.com/watch?v=NBzQVJ6OrrQ" target="_blank">Mire un vídeo con tutoriales sobre visibilidad</a>.

## ⭐️ Misión
Crear una nueva función en el contrato `Child` llamada  `testInternalVar`, que devuelve los valores de todas las variables de estado del contrato `Base`, que pueden ser retornadas. 
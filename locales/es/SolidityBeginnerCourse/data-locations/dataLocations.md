Los valores de variables en Solidity pueden almacenarse en diferentes localizaciones de data: _memoria_ (memory), _almacenamiento_ (storage) y _calldata_.

Como hemos explicado antes, las variables de tipo de valor almacenan una copia independiente de un valor, mientras variables de tipo de referencia (array, struct, mapping), solo almacena la localización (reference).

Si usamos un tipo de referencia en una función, hemos de especificar en qué localización de data se almacenan sus valores. El precio por la ejecución de la función es influenciado por la localización del data; creando copias de tipos de referencia y costes de gas.

### Almacenaje

Los valores almacenados en _storage_ son almacenados permanentemente en el blockchain y, por ello, el coste para su uso es alto.

En este contrato, el estado de variables `arr`, `map` y `myStructs` (líneas 5, 6, and 10) se almacenan en el almacén (storage). Las variables de estado siempre se almacenan en el almacén (storage).

### Memoria

Los valores almacenados en la memoria  _memory_ solo se almacenan temporalmente y no están en la blockchain. Solamente existen durante la ejecución externa y son descartados después. Son más asequibles que los valores almacenados en el almacén (_storage_).

En este contrato, la variable local `myMemstruct` (línea 19), así como el parámetro `_arr` (línea 31), se almacenan en la memoria. Los parámetros de una función necesitan tener la localización de data _memory_ o _calldata_.

### Calldata

_Calldata_ almacena los argumentos de las funciones. Como en _memory_, _calldata_ solamente se almacena temporalmente durante la ejecución de una función externa. En contraste con valores almacenados en _memory_, valores almacenados en _calldata_ no pueden cambiarse. Calldata es la localización de data más asequible.

En este contrato, el parámetro `_arr` (line 35) tiene la localización de data _calldata_. Si queremos asignar un nuevo valor al primer elemento de la colección `_arr`, podríamos hacerlo en la `function g` (línea 31) pero no en la `function h` (line 35). Esto es porque  `_arr` en la  `function g` tiene la localización de data  _memory_ y _function h_ tiene la localización de data `calldata`.

## Asignaciones

### De Memoria a memoria

Las misiones de  _memory_ a _memory_ crean referencias en ver de copias. Si cambiamos el valor en una variable, el valor de todas las demás variables que referencian la misma data serán cambiadas.

Si tuviésemos que crear un nuevo struct `myMemstruct2` con la localización de data  _memory_ en la `function f` (línea 12) y asignarle el valor de `myMemstruct` (línea 19), cualquier cambio a `myMemstruct2` cambiará también el valor de `myMemstruct`.

### De almacén a almacén local.

Las asignaciones del _storage_ al _local storage_ también crean referencias, no copias.

Si cambiamos el valor de una variable local `myStruct` (línea 17), el valor de nuestra variable de estado `myStructs` (línea 10) cambia también.

## Almacenaje y memoria/calldata

Las asignaciones entre  _storage_ y _memory_ (or _calldata_) crean copias independientes, no referencias.

Si tuviéramos que crear un nuevo struct `myMemstruct3` con la localización de data _memory_ dentro de la función `function f` (línea 12) y asignarle el valor de `myStruct`, cambios en `myMemstruct3` no afectarían los valores almacenados en el mapeo `myStructs` (línea 10).

Como hemos dicho al principio, cuando creamos contratos hemos de tener en mente los gastos de gas. Por ello, necesitamos usar las localizaciones de data que requieren la menor cantidad posible de gas.

## ⭐️ Misión

1. Cambiar el valor del miembro `myStruct` llamado `foo`, en la función `function f`, a 4.
2. Crear un nuevo struct `myMemstruct2` con la localización de data _memory_dentro de `function f` y asígnale el valor de `myMemstruct`. Cambia el valor del miembro `myMemstruct2` llamado `foo` a 1.
3. Crear un nuevo struct `myMemstruct3`con la localización de data _memory_ en la `function f` y asígnale el valor de `myStruct`.Cambia el valor del miembro `myMemstruct3` llamado `foo` a 3. Misiones
4. Dejar que la función f devuelva `myStruct`, `myMemStruct2` y `myMemStruct3`.

Consejo: Asegúrese de crear los tipos de retorno correctos para la función  `f`.
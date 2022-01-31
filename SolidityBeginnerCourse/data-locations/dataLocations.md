Los valores de variables en Solidity pueden almacenarse en diferentes localizaciones de data: *memoria* (memory), *almacenamiento* (storage) y *calldata*.

Como hemos explicado antes, las variables de tipo de valor almacenan una copia independiente de un valor, mientras variables de tipo de referencia (array, struct, mapping), solo almacena la localización (reference).

Si usamos un tipo de referencia en una función, hemos de especificar en qué localización de data se almacenan sus valores. El precio por la ejecución de la función es influenciado por la localización del data; creando copias de tipos de referencia y costes de gas. 

### Almacenaje

Los valores almacenados en *storage* son almacenados permanentemente en el blockchain y, por ello, el coste para su uso es alto. 

En este contrato, el estado de variables `arr`, `map` y `myStructs` (líneas 5, 6, and 10) se almacenan en el almacén (storage). Las variables de estado siempre se almacenan en el almacén (storage). 

### Memoria
Los valores almacenados en la memoria  *memory* solo se almacenan temporalmente y no están en la blockchain. Solamente existen durante la ejecución externa y son descartados después. Son más asequibles que los valores almacenados en el almacén (*storage*).

En este contrato, la variable local `myMemstruct` (línea 19), así como el parámetro `_arr` (línea 31), se almacenan en la memoria. Los parámetros de una función necesitan tener la localización de data *memory* o *calldata*.


### Calldata
*Calldata* almacena los argumentos de las funciones. Como en *memory*, *calldata* solamente se almacena temporalmente durante la ejecución de una función externa. En contraste con valores almacenados en *memory*, valores almacenados en *calldata* no pueden cambiarse. Calldata es la localización de data más asequible.

En este contrato, el parámetro `_arr` (line 35) tiene la localización de data *calldata*. Si queremos asignar un nuevo valor al primer elemento de la colección `_arr`, podríamos hacerlo en la `function g` (línea 31) pero no en la `function h` (line 35). Esto es porque  `_arr` en la  `function g` tiene la localización de data  *memory* y *function h* tiene la localización de data `calldata`.

## Misiones

### De Memoria a memoria

Las misiones de  *memory* a *memory* crean referencias en ver de copias. Si cambiamos el valor en una variable, el valor de todas las demás variables que referencian la misma data serán cambiadas. 

Si tuviésemos que crear un nuevo struct `myMemeStruct2` con la localización de data  *memory* en la `function f` (línea 12) y asignarle el valor de `myMemeStruct` (línea 19), cualquier cambio a `myMemeStruct2` cambiará también el valor de `myMemeStruct`.

### De almacén a almacén local.
Las asignaciones del *storage* al *local storage* también crean referencias, no copias. 

Si cambiamos el valor de una variable local `myStruct` (línea 17), el valor de nuestra variable de estado `myStructs` (línea 10) cambia también. 

## Almacenaje y memoria/calldata
Las asignaciones entre  *storage* y *memory* (or *calldata*) crean copias independientes, no referencias. 

Si tuviéramos que crear un nuevo struct `myMemeStruct3` con la localización de data *memory* dentro de la función `function f` (línea 12) y asignarle el valor de `myStruct`, cambios en `myMemeStruct3` no afectarían los valores almacenados en el mapeo `myStructs` (línea 10).

Como hemos dicho al principio, cuando creamos contratos hemos de tener en mente los gastos de gas. Por ello, necesitamos usar las localizaciones de data que requieren la menor cantidad posible de gas. 


## ⭐️ Misión
1. Cambiar el valor del miembro `myStruct` llamado `foo`, en la función `function f`, a 4.
2. Crear un nuevo struct `myMemeStruct2` con la localización de data *memory*dentro de `function f` y asígnale el valor de `myMemeStruct`. Cambia el valor del miembro `myMemeStruct2` llamado `foo` a 1.
3. Crear un nuevo struct `myMemeStruct3`con la localización de data *memory* en la `function f` y asígnale el valor de `myStruct`.Cambia el valor del miembro `myMemeStruct3` llamado `foo` a 3.
4. Dejar que la función f devuelva `myStruct`, `myMemStruct2` y `myMemStruct3`.

Consejo: Asegúrese de crear los tipos de retorno correctos para la función  `f`.
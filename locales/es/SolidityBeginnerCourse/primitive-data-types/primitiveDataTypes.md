En esta sección, vamos a enseñarle  los tipos de variables primitivas, como declararlas y sus características.

### bool

Puede declarar data del tipo boolean usando la palabra clave ‘bool’. Booleans pueden tener el valor `verdadero` o `falso`

### uint

Usamos las palabras clave `uint` y `uint8` hasta `uint256` para declarar un _tipo numérico no firmado_ (unsigned integer type) (no tienen un signo, al contrario que -12, por ejemplo). Uints son números (integers) positivos o cero y oscilan entre los 8 bits hasta los 256 bits. El tipo `uint` es el mismo que `uint256`.

### int

Usamos las palabras clave  `int` e `int8` hasta `int256` para declarar un tipo numérico (integer). Los  Integers pueden ser positivos, negativos o cero y oscilar entre los 8 bits y los 256 bits. El tipo `int` es el mismo que `int256`.

### address (dirección)

Variables del tipo `address` tienen un valor de 20 bytes, que es el tamaño de una dirección de Ethereum. Hay también un tipo de dirección de Ethereum especial, `address payable`, que puede recibir Ether del contrato.

Todos estos tipos de data tienen valores por defecto, como es mostrado en el contrato (línea 29).

Puede aprender más sobre estos tipos de data, así como _Fixed Point Numbers_, _Byte Arrays_, _Strings_ y más en <a href="https://docs.soliditylang.org/en/latest/types.html" target="_blank">documentación de Solidity </a>.

Más adelante en el curso miraremos estructuras de data como  **Mappings**, **Arrays**, **Enums** y **Structs**.

<a href="https://www.youtube.com/watch?v=8Tj-Th_S7NU" target="_blank">Puede ver un tutorial en video sobre tipos de data primitivos</a>.

## ⭐️ Misión

1. Crear una nueva variable `newAddr` que es una `public` `address` que le da un valor que no es el mismo que que la variable `addr` disponible.
2. Crear una variable `public` llamada `neg`que es un número negativo, decidir sobre el tipo.
3. Crear una nueva variable, `newU` que es el `uint` el tipo de tamaño más pequeño y de valor de `uint` más pequeño y es `public`.

Consejo: Mire la otra dirección en el contrato o busca el internet para la dirección de Ethereum.

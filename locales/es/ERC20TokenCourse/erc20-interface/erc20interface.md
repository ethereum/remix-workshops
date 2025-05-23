ERC20 (Ethereum Request for Comments 20) es un estándar para contratos de autentificador que administran autentifiadores fungibles en la cadena de bloques Ethereum.

Los autentificadores funcionales son todos iguales entre ellos y tienen el mismo valor, comportamiento y derechos. Las autentificadores fungibles se utilizan a menudo como un medio de cambio, como las monedas ETH o BTC. Sin embargo, también pueden tener otros casos de uso como derecho de voto o reputación.

Si quieres saber más sobre el estándar de autentificadores ERC20, échale un vistazo a las especificaciones en su <a href="https://eips.ethereum.org/EIPS/eip-20" target="_blank">Ethereum improvement proposal</a>.

## Interfaz

Para obtener una visión general de la funcionalidad requerida de un contrato de auntentificadores ERC20, examinaremos una interfaz que interactúa con un contrato ERC20.
Esta interfaz (línea 9) forma parte de la libería de contratos de código abierto proporcionada por <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/token/ERC20/IERC20.sol" target="_blank">OpenZeppelin</a>.

## Funciones de ERC20

Los contratos compatibles con la norma ERC20 deben implementar las siguientes seis funciones:

### suministroTotal

La función `totalSupply` (línea 13) devuelve la cantidad total de autentificadores disponibles.

### balanceDe

La función `balanceOf` (línea 18) devuelve la cantidad de auntentificador propiedad de la cuenta con la dirección `cuenta`.

### transferir

La función `transfer` (línea 27) transfiere `amount` de autentificadores a la dirección `recipient`.
Esta función **debe** emitir (producir) un evento `Transfer` (ver abajo) y **debería** lanzar una excepción cuando el remitente no tiene suficientes autentificadores para hacer la transferencia.

### aprobar

La función `approve` (línea 52) crea una asignación para que la dirección `spender` transfiera `amount` de autentificadores en nombre de la cuenta llamando a la función.

### permiso

La función `allowance` (línea 36) devuelve la cantidad de autentificadores que la dirección `spender` tiene permitido gastar en nombre de la cuenta con la dirección `owner`.

### transferirDesde

La función `transferFrom` (línea 63) transfiere `amount` de autentificadores en nombre de la dirección `sender` a la dirección `recipient`.
Esta función **debe** emitir un evento `Transfer`.

## Eventos ERC20

Los contratos ERC20 deben emitir también dos eventos:

### Transferencia

El evento `Transfer` (línea 71) debe emitirse cuando `value` cantidad de autentificadores son transferidos desde la cuenta con la dirección `indexed from` a `indexed to`. Los parámetros `from` y `to` son `indexed` que nos permiten buscar estos eventos usando los parámetros indexados como filtros.

### Aprobaciones

El evento `Approval` (línea 77) debe ser emitido cuando la cuenta `indexed owner` aprueba la cuenta `indexed spender` para transferir la cantidad de auntentificadores `value` en su nombre.

## Funciones opcionales de ERC20

Además de las funciones obligatorias y eventos, también hay tres funciones opcionales especificadas en el estándar ERC20 que no se implementan en esta interfaz:

### nombre

`function name() external view returns (string);`

Devuelve el nombre del autentificador.

### símbolos

`function symbol() external view returns (string);`

Devuelve el símbolo del autentificador.

### decimales

`function decimals() external view returns (uint8);`

Devuelve el número de decimales que utiliza el autentificador.

Puedes que quieras usar decimales para hacer tus autentificador divisible en cantidades arbitrarias como 1.5 ETH cuando se muestre. El EVM (Ethereum virtual machine) sólo admite números enteros. Es por eso que el estándar ERC20 sugiere implementar la funcionalidad decimal que especifica cuántos decimales tiene un autentificador. 18 decimales es la norma de la industria.

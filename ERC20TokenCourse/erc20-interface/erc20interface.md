ERC20 (Ethereum Request for Comments 20) es un estándar para contratos de token que administra tokens fungibles en la blockchain de ethereum. 

Tokens fungibles son todos iguales a los demás y tienen el mismo valor, comportamiento y derechos. 
Los tokens fungibles se usan como medio de intercambio, como las divisas ETH o BTC. Sin embargo, puede haber otros casos de uso como por ejemplo el voto de derechos y reputación. 

Si quiere saber más sobre el estándar de token ERC20, eche un vistazo a las especificaciones en su <a href="https://eips.ethereum.org/EIPS/eip-20" target="_blank">Proposición de mejoras de Ethereum</a>.

## Interfaz
Para obtener una visión global de la funcionalidad requerida de un contrato de token ERC20, observaremos una interfaz que interactúa con un contrato ERC20. Esta interfaz (línea 9) es parte de la librería de contratos de fuente abierta proporcionado por <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/token/ERC20/IERC20.sol" target="_blank">OpenZeppelin</a>.

## Funciones ERC20 
Los contratos que obedecen al estándar ERC20 deben implementar las siguientes funciones: 

### totalSupply (suministro total)
La función `totalSupply` (línea 13) devuelve la cantidad total de tokens disponibles. 

### balanceOf (balance de)
La función `balanceOf` (línea 18) devuelve la cantidad de tokens propiedad de la cuenta con la dirección `account`.

### transfer (transferencia)
La función  `transfer` (línea 27) transfiere `amount` (cantidades) de tokens a la dirección `recipient` (receptora). Esta función **debe** emitir (producir) un evento de `Transfer` (mire debajo) y **debe** lanzar una excepción cuando el emisor no posee suficientes tokens para hacer la transferencia. 

### approve (aprobar)
La función  `approve` (línea 52) crea una provisión para la dirección `spender` para transferir `amount` (cantidad) de tokens en nombre de la cuenta que llama a la función. 

### allowance (provisión)
La función  `allowance` (línea 36) devuelve la cantidad de tokens que la dirección `spender` puede gastar en nombre de la cuenta con la dirección `owner`.

### transferFrom (transferido de)
La función `transferFrom` (linea 63)transfiere  `amount` (cantidad) de tokens en nombre de la dirección `sender` a la dirección `recipient`.
Esta función **debe** emitir un evento `Transfer` .

## Eventos ERC20 Events (eventos ERC20)
Los contratos ERC20  deben, además, emitir dos eventos:

### Transfer (transferencia)
El evento `Transfer` (transferencia) (línea 71) ha de ser emitido cuando la cantidad `value` de tokens es transferida de una cuenta con la dirección  `indexed from` a la cuenta `indexed to`. Los parámetros `from` y `to` son `indexed`  (indexados), permitiendo la búsqueda de esos eventos usando los parámetros indexados como filtros. 

### Approval (Aprobación)
El evento  `Approval` (línea 77) debe ser emitido cuando la cuenta `indexed owner` apruebe la cuenta `indexed spender` para transferir la cantidad  `value`  de tokens en su nombre. 

## Funciones opcionales ERC20
Además de las funciones y eventos obligatorios, también hay tres funciones opcionales especificadas en el estándar ERC20 que no están implementadas en esta interfaz:

### name (nombre)
`La función name() external view devuelve (string);`
Devuelve el nombre del token.

### symbol (símbolo)
`La función symbol() external view devuelve (string);`
Devuelve el nombre del token

### decimals (decimales)
`La función decimals() external view devuelve (uint8);`
Devuelve el número de lugares decimales que usa el token. 

Quizá quiera usar decimales para hacer su token divisible en cantidades arbitrarias como por ejemplo 1.5 ETH cuando sean mostrados. La EVM (máquina virtual de Ethereum) sólo soporta números enteros. Es por eso que el estándar ERC20 sugiere implementar la funcionalidad de las decimales que especifique cuántas decimales tendrá el token. El estándar de la industria son 18 decimales.

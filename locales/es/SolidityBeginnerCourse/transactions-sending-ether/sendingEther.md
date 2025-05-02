En esta sección, aprenderemos cómo un contrato puede enviar y recibir Ether.

### Enviar Ether

Tenemos tres opciones diferentes para transferir Ether: `transfer()`, `send()` y `call()`

#### **transferir**

`<address payable>.transfer(uint256 amount)`

- `transfer()` hace una excepción si hay un fallo
- Reenvía un estipendio fijo de 2300 gas

Un ejemplo de `transfer()` se puede ver en el contrato `SendEther` (línea 35)
\*\* No se recomienda usar `Transfer()` más.\*\*
Si se elimina la modificadora

#### **enviar**

`<address payable>.send(uint256 amount) regresa (bool)`

- `send()` devuelve falso o un fallo.
- Reenvía un estipendio fijo de 2300 gas

Un ejemplo de `send()` puede verse en el contrato SendEther`(línea 41). ** No se recomienda usar `Send()\` más.\*\*

#### **llamar**

`<address>.call(bytes memory) devuelve (bool, bytes memory)`

- `call()`  devuelve falso o un fallo
- Devuelve un número máximo de gas, pero este es ajustable.

Un ejemplo de `call()` puede verse en el contrato `SendEther` (línea 48)
`Call()` es recomendable actualmente si se quiere transferir Ether.
Sino, el Ether sera denegada y el contrato lanzará una excepción.

La razón por la que  `transfer()` y `send()` fueron introducidos fue cubrirse de los _reentry attacks_, limitando el gas reenviado hasta 2300, que sería insuficiente para hacer una llamada reentrante que pueda modificar el almacenaje.

Como hemos explicado en la sección anterior, cada operación en Ethereum tiene un coste específico asociado a ella. Ciertas operaciones se han hecho más costosas a lo largo del tiempo, asi que los costes de gas asociados con ellas también se han elevado. Cuando los costes por las operaciones están sujetos a cambios no conviene usar la cantidad de gas escrito a mano (hardcoded) como por ejemplo lo hacen transfer() o send().

Esto es por lo que `call()` en lugar de `transfer()` es ahora recomendado para enviar Ether.

Aprende más sobre la materia en <a href="https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/" target="_blank">Blog post sobre Consensys</a>.

### Ataque de reentrada

Un _ataque de reentrada_ (reentrancy attack) ocurre cuando una función crea una llamada externa a un contrato no confiable y el atacante usa el contrato para hacer llamadas recurrentes de vuelta a la función original antes de que finalice su ejecución. A través de este método, el atacante puede absorber fondos y manipular data de maneras no deseables.

Para protegerse de los ataques de reentrada, todos los cambios de estado han de hacerse antes de llamar a un contrato externo. Esto también es llamado el patrón <a href="https://docs.soliditylang.org/en/latest/security-considerations.html#re-entrancy" target="_blank">Checks-Effects-Interactions</a>

Otra manera de protegerse de las reentradas es usar un _Guardia de Reentrada_ que chequea esas llamadas y las deniega. Puedes ver el ejemplo de esto en el contrato en la sección de modificaciones o una versión más eficiente con el gas en <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/ReentrancyGuard.sol" target="_blank">Open Zepplin</a>.

### Recibir Ether

Si queremos habilitar un contrato para recibir Ether sin tener que llamar a una función, necesitamos  crear una función  `receive` (línea 22) o una función `fallback` (línea 25).

La función  `receive` se ejecuta con llamadas de calldata vacío (por ejemplo transferencias de Ether básicas vía send() o transfer()), mientras que la función fallback se ejecuta en llamadas con calldata. Si no existe ninguna función `receive`pero sí una función `fallback`, las llamadas con un calldata vacío también usarán la función fallback.

### Función de pago modificar

La función `payable`modificadora, habilita que las funciones puedan recibir Ether.

La función `receive` (línea 22) necesita ser  `payable` (pagable). Se borras el modificador  `payable` recibirás un error del compilador. Si borras el modificador  `payable` de la función `fallback` (línea 25) que compilará, pero no será capay de recibir Ether.
Las funciones   `sendViaTransfer`, `sendViaSend` y `sendViaCall` (líneas 33, 38 y 45) también necesitan ser pagables para poder recibir Ether.

### Dirección pagable

Solidity hace una distinción entre dos sabores diferentes del tipo de data de la dirección: dirección y dirección pagable.

La función `receive` (línea 22) necesita ser `payable` (pagable).
`address`: contiene un valor de 20-byte
`address payable`: tiene un valor de 20-byte y puede recibir Ether via transferencias y envíos de sus miembros.

Si se cambia el tipo de parámetros para las funciones `sendViaTransfer` y `sendViaSend` (línea 33 and 38) de`payable address` a `address`, no se podrá usar `transfer()` (línea 35) o `send()` (línea 41).

<a href="https://www.youtube.com/watch?v=_5vGaqgzlG8" target="_blank">Mire un vídeo con tutoriales sobre envío de Ether</a>.

## ⭐️ Misión

Crear un contrato caritativo que recibe Ether que puede ser retirado por un beneficiario.

1. Crear un contrato llamado `Charity`.
2. Añadir una variable de estado público llamada `owner` del tipo address.
3. Crear una función donar que es pública y pagable sin ningún parámetro o código de función.
4. Crear una función de retirada que es pública y envía el balance total de los contratos de la dirección `owner`.

Consejo: Pruebe su contrato desplegándolo desde una cuenta y después enviando Ether a ella desde otra cuenta. Después ejecute la función de retirada.
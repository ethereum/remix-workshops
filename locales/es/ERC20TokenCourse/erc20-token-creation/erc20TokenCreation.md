Un estándar de autentificador nos dice qué funcionalidad necesita el contrato para cumplirlo. La manera en que se implementa esta funcionalidad depende de los desarrolladores. En este contrato, utilizaremos una implementación de un contrato ERC20 autentificador de OpenZeppelin (línea 4). En este caso, importamos la versión 4.4.0 de los contratos de OpenZeppelin.

Echa un vistazo a su muy bien documentado contrato <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol" target="_blank">ERC20 contract</a> para tener una mejor comprensión de cómo podría verse una implementación. Aparte de la funcionalidad especificada en el estándar ERC20, este contrato proporciona funcionalidad adicional.

Vamos a crear nuestro propio contrato llamado MyToken (línea 6), que hereda la funcionalidad desde la implementación del contrato de autentificadores ERC20 de OpenZepplin que importamos (línea 4).

Este contrato implementa las funciones opcionales `name()` y `symbol()` del estándar de autentificadores ERC20 y tiene un constructor donde sus valores pueden establecerse durante el despliegue del contrato (línea 7).
En este caso, vamos a usar los valores por defecto. Llamaremos a nuestra ficha igual que el contrato `"MyToken"` y haremos de \`"MTK" su símbolo.

A continuación, hacemos uso de la función `_mint` heredada (línea 8) que nos permite crear autentificadores en el despligue del contrato. Dentro de los parámetros especificamos la dirección de la cuenta que recibe los autentificadores y la cantidad de autentificadores que son creados.
En este caso, la cuenta que despliega el contrato recibirá los autentificadores y establecemos la cantidad a 1000000 a la potencia de `decimals()`. La función opcional `decimals()` del estándar de autentificador ERC20 es implementada y establecida al valor por defecto de 18. Esto creará 1000000 autentificadores que tendrán 18 decimales.

## ⭐ Tarea

1. Renombra tu contrato a `EduCoin`.
2. Renombra tu autentificador a `EduCoin`.
3. Cambia el símbolo de tu autentificador a `EDC`.
4. Cambia la cantidad de autentificadores que serán acuñados de 1000000 a 1000.
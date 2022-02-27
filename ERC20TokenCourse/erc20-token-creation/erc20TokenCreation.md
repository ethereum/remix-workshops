Un Estándar de token nos indica qué funcionalidad ha de cumplir el contrato. Cómo esta funcionalidad es implementada depende de los desarrolladores. En este contrato usaremos una implementación de contrato de token ERC20 de OpenZeppelin (línea 4).
En este caso importamos la versión 4.4.0. De los contratos de OpenZeppelin.

Puede echar un vistazo a su documentación  <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol" target="_blank">contrato ERC20</a> para obtener un mejor entendimiento de qué aspecto tendría una implementación. Además de la funcionalidad especificada en el estándar ERC20, este contrato proporciona funcionalidad adicional. 

Crearemos nuestro propio contrato llamado MyToken (línea 6), el cual hereda la funcionalidad que hemos importado de la implementación del contrato de token ERC20 de OpenZeppelin (línea 4).

Este contrato implementa las funciones opcionales `name()` y `symbol()` del estándar de token ERC20 y tiene un constructor en el que los valores pueden establecerse durante el despliegue del contrato (línea 7). En este caso, usaremos valores por defecto. Llamaremos a nuestro token igual que el contrato `"MyToken"` y haremos de `"MTK"` su símbolo. 

Más adelante, haremos uso de la función heredada `_mint` (línea 8), que permite crear tokens sobre el despliegue del contrato. Dentro de los parámetros, especificamos la dirección de la cuenta que recibe los tokens y la cantidad de tokens que han sido creados. 

En este caso, la cuenta que despliega el contrato recibirá los tokens y estableceremos la cantidad a 1000000 al poder de `decimals()`. La función opcional `decimals()` del estándar de token ERC20 es implementada y establecida como el valor por defecto 18. Esto creará  1000000 tokens que tendrán 18 decimales. 

## ⭐️ Misión
1. Renombrar su contrato como `EduCoin`.
2. Renombrar su token como `EduCoin`.
3. Cambiar el símbolo de su token a `EDC`.
4. Cambiar la cantidad de tokens que serán acuñados de 1000000 a 1000.

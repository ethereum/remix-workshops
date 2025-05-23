# Un ejemplo básico de proxy genérico

En el archivo de solidity asociado, **step4.sol**, hay 2 contratos: **ProxyContract** y **LogicContract**.

Para usar este sistema, primero implementamos el LogicContract.

Y luego, cuando vamos a implementar el ProxyContract, pasamos la dirección de LogicContract como argumento del constructor del ProxyContract.

El ProxyContract se implementa únicamente una vez.

El código de LogicContract se llamará en la línea 20. Se reenviará con una llamada de delegado mientras se mantiene el contexto de LogicContract.

En caso de que necesitemos cambiar la lógica, desplegaríamos un nuevo LogicContract y estableceríamos la dirección del mismo con la función setter setLogicContractAddress.

\*Nota: El LogicContract que tenemos aquí no utiliza el almacenamiento. Una vez que necesitas usar el almacenamiento, la implementación se vuelve un poco más complicada porque esos contratos comparten el contexto. \*
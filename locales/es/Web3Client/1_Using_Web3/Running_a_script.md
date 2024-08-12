## Consultando la cadena de bloques

En este tutorial, ejecutaremos un script que consulta la cadena de bloques utilizando una biblioteca de JavaScript.

Esto significa que en lugar de usar la interfaz gráfica de usuario de Remix o un explorador de bloques como Etherscan, usaremos un script en el editor y lo ejecutaremos desde el terminal.

Las bibliotecas JS que más se utilizan para interactuar con la cadena de bloques son web3.js y ethers.js.

Comencemos con un simple ejemplo de web3.js, queryBlockNum.js.

La llamada del script a web3.js está envuelta en una función asíncrona de autoejecución que contiene un bloque try/catch.

Consultaremos el número de bloque actual con:
`let blockNumber = await web3.eth.getBlockNumber()`

Tenga en cuenta que el objeto "web3" es inyectado por Remix. Para obtener más información sobre web3.js, consulte sus documentos, <a href="https://web3js.readthedocs.io/" target="_blank">https://web3js.readthedocs.io</a>.

Para usar web3.js o ethers.js, debe seleccionar el entorno **Inyected Web3** o **Web3 Provider** en el módulo **Deploy & Run**.  Los scripts no funcionan actualmente con la JSVM. \*\*Si lo intentas, obtendrás un error. \*\*

Así que para este ejemplo, elija **Injected Web3** en el módulo Deploy & Run y tenga Metamask instalada.

Desde el terminal, ejecute `remix.execute()`. Este comando ejecutará el archivo JavaScript actual con la línea `let blockNumber = await web3.eth.getBlockNumber()`.

En la consola, deberías ver el número de bloque actual de la cadena a la que está conectado metamask.

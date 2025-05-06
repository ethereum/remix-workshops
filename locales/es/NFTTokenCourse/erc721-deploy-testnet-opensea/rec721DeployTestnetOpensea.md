En esta sección, usaremos Metamask (una cartera de Ethereum) para implementar nuestro contrato en la red de pruebas Rinkeby de la cadena de bloques de Ethereum, acuñar un NFT y verlo en el mercado NFT OpenSea.

### 1. Instalar Metamask

**1.1** Ir a <a href="https://metamask.io/" target="_blank">metamask.io</a>.

**1.2** Haga clic en el botón de descarga, luego haga clic en instalar para su navegador (por ejemplo, Chrome) y agregue la extensión a su navegador.

**1.3** Crea una cartera como se describe.

### 2. Obtener token de red de prueba para Rinkeby

Para realizar transacciones en la testnet, necesitamos tokens de Ethereum testnet.

**2.1** Cambia tu metamáscara de "Ethereum Mainnetwork" a "Rinkeby Test Network".

**2.2** Vaya a <a href="https://faucet.paradigm.xyz/" 
target="_blank">https://faucet.paradigm.xyz/</a>, introduzca la dirección de su cuenta y reclame testnet ETH.
También puedes usar otros grifos de ropsten como <a href="https://faucet.paradigm.xyz/" target="_blank">https://faucet.paradigm.xyz/</a> o <a href="https://app.mycrypto.com/faucet" target="_blank">https://app.mycrypto.com/faucet</a>. Eche un vistazo a los grifos que aparecen en <a href="https://ethereum.org/en/developers/docs/networks/#testnet-faucets" target="_blank">ethereum.org</a> para obtener más información.

### 3. Despliegue de Contrato

**3.1** En el módulo "DEPLOY & RUN TRANSACTIONS" del Remix IDE en "ENVIRONMENT", seleccione "Injected Web3". Luego debería pedirle que conecte su cuenta, lo que debe confirmar. Entonces deberías ver la insignia de la red Rinkeby en "Inyected Web3".

**3.2** Implemente su contrato de token y confirme la transacción en Metamask.

**3.3** Su contrato debe aparecer en la sección "Contratos desplegados".

### 4. Acuñe un NFT

**4.1** Amplíe su contrato en el IDE para que pueda ver los botones de las funciones.

**4.2** Expande los campos de entrada junto al botón safeMint. Introduzca la dirección de Ethereum de la cuenta que está conectada a Remix en el campo de entrada "a:". Introduzca "0" en el campo de entrada "tokenID:". Haga clic en transacción.

**4.3** En Metamask, haga clic en los activos, luego haga clic en el enlace "Importar tokens" y pegue la dirección de su contrato en el campo de entrada. Puedes poner los decimales a 0.

Ahora debería ver el nombre del símbolo de su contrato de token (por ejemplo, GEO) en su vista "Activos" en MetaMask. Debería tener una de estas fichas.

### 5. Vea su NFT en OpenSea

<a href="https://opensea.io/" 
target="_blank">OpenSea</a> es uno de los mercados en línea más populares de NFTs. OpenSea también ofrece una versión en la que se pueden ver los activos en la red de pruebas, en <a href="https://testnets.opensea.io/" 
target="_blank">https://testnets.opensea.io</a>

**5.1** Vaya a <a href="https://testnets.opensea.io/login" 
target="_blank">https://testnets.opensea.io/login</a>.

**5.2** Conecte con su cartera de MetaMask. Debería ser redirigido a la vista de su cuenta <a href="https://testnets.opensea.io/account" target="_blank">https://testnets.opensea.io/account</a> en Opensea, donde debería poder ver su NFT. Debería ver la imagen de su NFT; al hacer clic en ella, debería ver el nombre, la descripción y, en propiedades, también los atributos que ha creado.

Si ha completado con éxito este curso y está familiarizado con los fundamentos del desarrollo en Solidity, le animamos a que continúe su viaje de aprendizaje aprendiendo a crear su propio contrato de subasta NFT a partir de los recursos de Learneth.
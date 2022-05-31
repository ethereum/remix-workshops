En esta sección, usaremos Metamask (una cartera de Ethereum) para desplegar nuestro contrato a la red de prueba Rinkeby de la blockchain de Ethereum, acuñaremos un NFT y miraremos el mercado de NFTs OpenSea.

### 1. Instalar Metamask
**1.1** Vaya a <a href="https://metamask.io/" target="_blank">metamask.io</a>.

**1.2** Cliquee en el botón de descarga, después cliquee en instalar para su navegador (por ejemplo Chrome) y añada la extensión a su navegador. 


**1.3** Cree una cartera como se ha descrito.

### 2. Adquiera el token de la red de prueba Rinkeby.

Para realizar transacciones en la red de prueba necesitamos tokens de testnet de Ethereum. 

**2.1** Cambie la red de su Metamask, de "Ethereum Mainnetwork" a "Rinkeby Test Network".

**2.2** Vaya a <a href="https://faucet.paradigm.xyz/" target="_blank">https://faucet.paradigm.xyz/</a>, introduzca la dirección de su cuenta y reclame ETH de la red de prueba. 

Puede también usar otros grifos (faucet) ropsen como por ejemplo <a href="https://faucet.paradigm.xyz/" target="_blank">https://faucet.paradigm.xyz/</a> or <a href="https://app.mycrypto.com/faucet" target="_blank">https://app.mycrypto.com/faucet</a>.
Eche un vistazo a los faucets listados en <a href="https://ethereum.org/en/developers/docs/networks/#testnet-faucets" target="_blank">ethereum.org</a> para aprender más.

### 3. Despliegue del contrato.

**3.1** En el módulo del IDE de Remix "DEPLOY & RUN TRANSACTIONS" habiendo seleccionado "ENVIRONMENT" seleccione  "Injected Web3". Debería entonces pedirle que conecte su cuenta, lo que debería confirmar. Después debería ver el símbolo de la red Rinkeby bajo "Injected Web3".

**3.2** Despliegue su contrato de token y confirme la transacción en Metamask. 

**3.3**  Su contrato deberá de aparecer en la sección "Deployed Contracts". 

### 4. Acuñe un NFT

**4.1** Expanda su contrato en el IDE y así puede ver los botones para las funciones. 

**4.2**Expanda los campos a rellenar al lado del botón safeMint button. Introduzca la dirección de Ethereum de la cuenta que está conectada a Remix en el campo a rellenar  “to:”. Introduzca  “0”  en el campo "tokenID:". Cliquee en transact. 

**4.3** En Metamask cliquee en activos, después clique en el link “Import tokens”, pegue la dirección de su contrato en el campo a rellenar. Puede establecer las decimales a 0.

Debe de ver ahora el nombre del símbolo de su contrato de token (por ejemplo: GEO) en la vista de activos de su Metamask. Debe de tener uno de estos tokens. 

### 5. Vea su NFT en OpenSea. 

<a href="https://opensea.io/" 
target="_blank">OpenSea </a> es el mercado más popular de NFTs. OpenSea también proporciona una versión en la que puede ver sus activos en la red de prueba, en <a href="https://testnets.opensea.io/" 
target="_blank">https://testnets.opensea.io/</a>

**5.1** Vaya a <a href="https://testnets.opensea.io/login" 
target="_blank">https://testnets.opensea.io/login</a>.

**5.2** Conecte con la cartera Metamask. Debe de ser redirigido a la vista de su cuenta<a href="https://testnets.opensea.io/account" target="_blank">https://testnets.opensea.io/account</a> en OpenSea, en donde debería de ver su NFT.Debería de poder ver también la imágen de su NFT; cuando clique sobre él, debe de ver el nombre, la descripción, y bajo propiedades, también los atributos que ha creado. 

Si ha completado satisfactoriamente este curso y está familiarizado con las bases del desarrollo de Solidity, le sugerimos que continúe su aprendizaje practicando cómo crear su propio contrato de subasta de un NFT desde los recursos de Learneth. 

In this section, we will use Metamask (an Ethereum wallet) to deploy our contract to the Sepolia testnet of the Ethereum blockchain, mint an NFT, and look at it on the NFT marketplace OpenSea.

### 1. Instalar Metamask

**1.1** Ir a <a href="https://metamask.io/" target="_blank">metamask.io</a>.

**1.2** Haga clic en el botón de descarga, luego haga clic en instalar para su navegador (por ejemplo, Chrome) y agregue la extensión a su navegador.

**1.3** Crea una cartera como se describe.

### 2. Get testnet token for Sepolia

Para realizar transacciones en la testnet, necesitamos tokens de Ethereum testnet.

**2.1** Switch your Metamask from "Ethereum Mainnetwork" to "Sepolia Test Network".

**2.2** Go to <a href="https://www.alchemy.com/faucets/ethereum-sepolia" 
target="_blank">https://www.alchemy.com/faucets/ethereum-sepolia</a>, enter the address of your account and claim testnet ETH.
Or check the faucets listed on <a href="https://ethereum.org/en/developers/docs/networks/#testnet-faucets" target="_blank">ethereum.org</a> for other options.

### 3. Despliegue de Contrato

**3.1** In the "DEPLOY & RUN TRANSACTIONS" module of the Remix IDE under "ENVIRONMENT" **select** "Injected Provide-Metamask" (or whatever wallet you are using). Luego debería pedirle que conecte su cuenta, lo que debe confirmar. Then in the wallet, connect to the Sepolia network.  You may need to turn on a switch to view test networks. Once connected, there will be a "badge" with Sepolia and its network ID under "Injected Provider".

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
En esta sección, usaremos Metamask (una wallet de Ethereum) para desplegar nuestro contrato a una testnet (red de prueba) de la blockchain de Ethereum. Esta testnet se comporta de manera similar a la blockchain real (mainnet), pero no requiere el pago en ETH por las transacciones.  

### 1. Instale Metamask
**1.1** Vaya a  <a href="https://metamask.io/" target="_blank">metamask.io</a>.

**1.2** Clique en el botón de descarga, después clique en instalar para su navegador (por ejemplo Chrome) y añada la extensión a su navegador. 

**1.3** Cree una wallet (cartera) como se le describe)

### 2. Adquiera el token de la testnet

Para poder realizar transacciones sobre la testnet necesitamos testnet tokens de Ethereum, que se pueden recibir de unl “faucet”. 

**2.1** Cambie la red de su Metamask clicando "Ethereum Mainnetwork"  en el desplegable y seleccionando "Ropsten Test Network". Si no ve ninguna red de prueba, clique en el link "Show/hide"  y active  "Show test networks".

**2.2** Vaya a  <a href="https://faucet.ropsten.be/" target="_blank">https://faucet.ropsten.be/</a>, introduzca la dirección de su cuenta y pida sus testnet ETH. También puede usar otros grifos (faucets) ropsten como por ejemplo <a href="https://faucet.paradigm.xyz/" target="_blank">https://faucet.paradigm.xyz/</a> o <a href="https://app.mycrypto.com/faucet" target="_blank">https://app.mycrypto.com/faucet</a>. 
Eche un vistazo a los faucets listados en <a href="https://ethereum.org/en/developers/docs/networks/#testnet-faucets" target="_blank">ethereum.org</a> para saber más.

### 3. Despliegue 
Cerciórese de que su contrato EduCoin está compilado. 

**3.1.** En el módulo  "DEPLOY & RUN TRANSACTIONS" del IDE de Remix vaya a "ENVIRONMENT" y  seleccione  "Injected Web3". Le pedirá que se conecte a su cuenta y para ello usted deberá confirmar. 

**3.2** Despliegue el contrato EduCoin y confirme la transacción en Metamask. 

**3.3** Su contrato debe aparecer en la sección "Deployed Contracts". Copie la dirección del contrato. 

**3.4** En Metamask, clique en assets, después clique en el link "Import tokens" y pegue la dirección de su contrato en el campo a rellenar. 
Debería ver un balance de 1000 EDC en su wallet. 

### 4. Realice una transacción
**4.1** Clique en el identicon (representación visual de su dirección) en la wallet de Metamask y cree una segunda cuenta (Account 2)

**4.2** Copie la dirección de Account 2.

**4.3** Cambie a la primera cuenta  (Account 1) y envíe 250 EDC a Account 2. Verifique el balance en Account 1 y Account 2. Quizá deba añadir la dirección del token de nuevo para 
Account 2 para importar los tokens y necesitará testeth si quiere realizar una transacción con esa cuenta. 

Puede también ver el balance de su cuenta si mira al contrato en Remix y llama a la función `balanceOf`usando las direcciones de Account 1 y Account 2.

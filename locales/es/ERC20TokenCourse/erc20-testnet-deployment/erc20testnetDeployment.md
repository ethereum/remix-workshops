En esta sección, utilizaremos Metamask (una cartera de Ethereum) para desplegar nuestro contrato en una red de pruebas de la cadena de bloques Ethereum. Esta red de pruebas se comporta de manera muy similar a la cadena de bloques real (mainnet), pero no requiere ETH real para pagar las transacciones.

### 1. Instalar MetaMask

**1.1** Ve a <a href="https://metamask.io/" target="_blank">metamask.io</a>.

**1.2** Haz clic en el botón de descarga, luego haga clic en instalar para tu navegador (por ejemplo, Chrome) y agregue la extensión a su navegador.

**1.3** Crear una cartera como se describió.

### 2. Obtener el autentificador de testnet

Para realizar transacciones en la red de pruebas necesitamos autentificadores de Ethereum testnet, por lo cual puedes recibir de algo llamado _grifo_.

**2.1** Cambia tu red Metamask haciendo clic en el menú desplegable "Ethereum Redprincipal" y seleccionando "Red de pruebas Ropsten". Si no ves ninguna red de pruebas, haga clic en el enlace "Mostrar/ocultar" y activa "Mostrar redes de prueba" en la configuración.

**2.2** Ve a <a href="https://faucet.ropsten.be/" target="_blank">https://faucet.ropsten.be/</a>, introduce la dirección de tu cuenta y reclama el ETH de testnet. También puede usar otros grifos de ropsteno como <a href="https://faucet.paradigm.xyz/" target="_blank">https://faucet.paradigm.xyz/</a> o <a href="https://app.mycrypto.com/faucet" target="_blank">https://app.mycrypto.com/faucet</a>. Echa un vistazo a los grifos listados en <a href="https://ethereum.org/en/developers/docs/networks/#testnet-faucets" target="_blank">ethereum.org</a> para saber más.

### 3. Despliegue

Asegúratede que el contrato de EduCoin está compilado.

**3.1.** En el módulo "DESPLEGAR & CORRER TRANSACCIONES" del IDE Remix bajo "ENTORNO" seleccione "Web3 inyectada". Te pedirá que conectes tu cuenta la cual deberías confirmarla.

**3.2** Despliega el contrato de EduCoin y confirma la transacción en Metamask.

**3.3** Tu contrato debería aparecer en la sección "Contratos Desplegados". Copia la dirección del contrato.

**3.4** En Metamask, haz clic en activos, luego haz clic en el enlace "Importar autentificadores" y pega la dirección de tu contrato en el campo de entrada.

Ahora debería ver un saldo de 1000 EDC en tu cartera.

### 4. Realizar una transacción

**4.1** Haz clic en el identificador (representación visual de tu dirección) en el monedero Metamask y crea una segunda cuenta (Cuenta 2).

**4.2** Copia la dirección de la Cuenta 2.

**4.3** Cambia a la primera cuenta (Cuenta 1) y envía 250 EDC a la Cuenta 2. Consulte los balances de la Cuenta 1 y la Cuenta 2. Puede que necesites agregar la dirección del autenticador de nuevo para la Cuenta 2 para importar los autenticadires y necesitarás testeth si deseas realizar una transacción con esta cuenta.

También puedes ver los saldos de tu cuenta si observas el contrato en Remix y llamas a la función `balanceOf` usando las direcciones de la Cuenta 1 y la Cuenta 2.

En esta sección, desplegaremos un contrato en nuestro navegador y probaremos su funcionalidad.

### 1. Despliegue del contrato

**1.1** Compila tu contrato de EduCoin en el módulo "Compilador de Solidity" del IDE Remix.

**1.2** En el módulo "Desplegar y correr transacciones", seleccione su contrato "EduCoin" en el campo de entrada del contrato y haga clic en el botón "Desplegar". Asegúrate siempre de seleccionar el contrato correcto en el campo de entrada del selector del contrato.

**GIF** Compila y despliega: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_compileAndDeploy.gif?raw=true" alt="Compile and deploy contract" width="300"/>

### 2. Probar las funciones

Expandir las funciones del contrato de autentificadores en el IDE.

#### 2.1 decimales

Haz clic en el botón "decimales" para llamar a la función decimals().
Te debería devolver "18".

#### 2.2 Nombre

Haz clic en el botón "nombre" para llamar a la función name().
Te debería devolver "EduCoin".

#### 2.3 Símbolos

Haga clic en el botón "símbolo" para llamar a la función symbol().
Te debería devolver "EduCoin".

#### 2,4 Suministro total

Haga clic en el botón "totalSupply" para llamar a la función totalSupply().
Te debería devolver 1000000000000000000 (1000\*10\*\*18).

**GIF** Prueba los decimales, el nombre, el símbolo y las funciones de totalSupply: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_test_functions.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.5 Balance de

**2.5.1** Ve a la sección "CUENTA" en la barra lateral y copia la dirección mostrada usando el icono de copia junto a ella.

**2.5.2** Pega la dirección en el campo de entrada junto al botón "balanceOf" y hacer clic en el botón.
Te debería devolver 1000000000000000000000000000 (1000\*10\*\*18).

**GIF** Prueba la función balanceOf: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_balanceOf.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2,6 Transferencia

We will transfer EduCoin from one account to a second account.

**2.6.1** Go to the "ACCOUNT" section in the sidebar and click on the displayed address. This should open a dropdown. Select the second address displayed and copy its address (account 2).

**2.6.2** Open the dropdown and select the first account again (account 1), because this is the account that we want to use to make the transfer.

**2.6.3** Paste the address in the input field next to the "transfer" function button, input the number 500000000000000000000, and click on the button.

**2.6.4** If you check the balances for account 1 and account 2, they should both return the amount 500000000000000000000.

**GIF** Test transfer function: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_transfer.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.7 Approve

We will now allow account 1 to spend tokens on behalf of account 2.

**2.7.1** Go to the "Account" section, copy the address of account 1, then set it to account 2 again.

**2.7.2** In the approve function, enter the address of account 1 as the input for spender and set the amount to 250000000000000000000.

**GIF** Test approve function: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_approve.gif?raw=true" alt="Test approve function" width="300"/>

#### 2.8 Allowance

Next to the "allowance" button enter the address of account 2 as the owner and account 1 as the spender; click on the button.
It should return 1000000000000000000000.

**GIF** Test allowance function: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_allowance.gif?raw=true" alt="Test allowance function" width="300"/>

#### 2.9 TransferFrom

Now account 1 will transfer 250000000000000000000 tokens from account 2 to its own account.

**2.9.1** Select account 1 in the "ACCOUNT" section.

**2.9.2** Next to the "transferFrom" button enter the address of account 2 as the sender and account 1 as the recipient, enter 250000000000000000000 as the amount and click on the button.

**2.9.3** Check the balances of accounts 2 and 1, they should return 250000000000000000000 and 750000000000000000000.

**GIF** Test transferFrom function: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_transferFrom.gif?raw=true" alt="Test transferFrom function" width="300"/>

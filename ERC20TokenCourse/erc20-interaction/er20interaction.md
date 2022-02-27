En esta sección, desplegamos un contrato en nuestro navegador y comprobaremos su funcionalidad. 

### 1. Desplegar el contrato
**1.1** Compile su contrato EduCoin el módulo "Solidity compiler" en el IDE de Remix.

**1.2**En el módulo "Deploy & run transactions" (despliegue y ejecute la transacción), seleccione su contrato "EduCoin" en campo a rellenar y presione el botón "Deploy". Siempre debe cerciorarse de que ha seleccionado el contrato correcto en la selección de contratos que se encuentra en el campo a rellenar. 
 
**GIF** Compile y despliegue:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_compileAndDeploy.gif?raw=true" alt="Compile and deploy contract" width="300"/>

### 2. Compruebe las funciones
Expanda las funciones del contrato de token en el IDE. 

#### 2.1 Decimales
Clique en el botón "decimals"  para llamar a la función decimals()
Debería retornar "18".

####  2.2 Nombre
Clique en el botón "name" para llamar a la función name().
Debería retornar "EduCoin".

#### 2.3 Símbolo
Clique en el botón "symbol" para llamar a la función symbol().
Debería retornar "EDC".

#### 2.4 Suministro total
Clique en el botón "totalSupply" para llamar a la función totalSupply().
Debería retornar 1000000000000000000000 (1000*10**18).

**GIF** Compruebe las decimales, nombres, símbolos y las funciones totalSupply:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_test_functions.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.5 Balance de
**2.5.1** Vaya a la sección "ACCOUNT" en la barra lateral y copie la dirección que aparece usando el icono de copia que se encuentra a su lado. 

**2.5.2** Pegue la dirección el el campo a rellenar al lado del botón de la función "balanceOf" y clíquelo. Debería retornar  1000000000000000000000 (1000*10**18).

**GIF** Compruebe la función balanceOf:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_balanceOf.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.6 Transferencia
Transferiremos EduCoin de una cuenta a una segunda cuenta.

**2.6.1** Vaya a la sección "ACCOUNT" en la barra lateral y cliquee en la dirección que aparece. Esto debería desplegar un menú. Seleccione la segunda dirección disponible y copie la dirección (Account 2).

**2.6.2** Abra el desplegable y seleccione la primera cuenta una vez más (Account 1), porque esta es la cuenta que queremos usar para realizar la transferencia. 

**2.6.3** Pegue la dirección en el campo a rellenar a un lado del botón de la función "transfer", inserte el número 500000000000000000000, y cliquee en el botón.

**2.6.4** Si comprueba el balance de la cuenta 1 y la cuenta 2, ambos deberían devolver la cantidad 500000000000000000000.

**GIF** Compruebe la función de transferencia:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_transfer.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.7 Apruebe
Permitiremos que la cuenta 1 gaste tokens en nombre de la cuenta 2. 

**2.7.1** Vaya a la sección "Account", copie la dirección de la cuenta y establezcala en la cuenta 2 de nuevo.  

**2.7.2** En la función approve, introduzca la dirección de la cuenta 1 como el input para el emisor y establecer el importe a 250000000000000000000.

**GIF**  Compruebe la función `approve`:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_approve.gif?raw=true" alt="Test approve function" width="300"/>

#### 2.8 Remuneración (Allowance)
Cerca del botón "allowance" entre la dirección de la cuenta 2 como el dueño de la cuenta 1 como el agente de gasto; clique en el botón. 
Debería devolver 1000000000000000000000.

**GIF** Compruebe la función allowance:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_allowance.gif?raw=true" alt="Test allowance function" width="300"/>

#### 2.9 TransferFrom
Ahora la cuenta 1 transferirá 250000000000000000000 tokens de la cuenta 2 a su propia cuenta.

**2.9.1** Seleccione la cuenta 1 en la sección "ACCOUNT". 

**2.9.2** Después del botón "transferFrom" introduzca la dirección de la cuenta 2 como el emisor y la cuenta 1 como el receptor, introduzca  250000000000000000000 como importe y clique en el botón. 

**2.9.3** Compruebe los balances de las cuentas 2 y 1, deberían devolver 250000000000000000000 and 750000000000000000000.

**GIF** Compruebe la función transferFrom:
<img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_transferFrom.gif?raw=true" alt="Test transferFrom function" width="300"/>

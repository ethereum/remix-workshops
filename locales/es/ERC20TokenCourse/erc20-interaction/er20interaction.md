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

Transfiriremos EduCoin de una cuenta a otra cuenta.

**2.6.1** Ve a la sección "CUENTA" en la barra lateral y haz clic en la dirección mostrada. Esto debería abrir un menú desplegable. Selecciona la segunda dirección que aparece y copie su dirección (cuenta 2).

\*\*2,6. \*\* Abre el menú desplegable y selecciona de nuevo la primera cuenta (cuenta 1), porque esta es la cuenta que queremos usar para hacer la transferencia.

**2.6.3** Pega la dirección en el campo de entrada junto al botón "transferir", ingrese el número 500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000 y haz clic.

**2.6.4** Si revisas los balances de la cuenta 1 y de la cuenta 2, ambos devolverían la cantidad 500000000000000000000000000.

**GIF** Prueba de la función transferir: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_transfer.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.7 Aprobar

Ahora permitiremos que la cuenta 1 gaste autentificadores en nombre de la cuenta 2.

**2.7.1** Ve a la sección "Cuenta", copia la dirección de la cuenta 1 y luego vuelve a establecerla en la cuenta 2.

**2.7.2** En la función de aprobación, introduce la dirección de la cuenta 1 como la entrada para el gasto y establece la cantidad a 2500000000000000000000000000000000000.

**GIF** Prueba de la función aprobar: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_approve.gif?raw=true" alt="Test approve function" width="300"/>

#### 2,8 Permiso

Al lado del botón de "ayuda" introduzca la dirección de la cuenta 2 como propietario y la cuenta 1 como pender; haga clic en el botón.
Te debería devolver 000000000000000000000.

**GIF** Prueba de la función permiso. <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_allowance.gif?raw=true" alt="Test allowance function" width="300"/>

#### 2.9 TransferirDesde

Ahora la cuenta 1 transferirá 250000000000000000000000000000000 autentificadores de la cuenta 2 a su propia cuenta.

**2.9.1** Seleccione la cuenta 1 en la sección "CUENTA".

\*\*2,9. \*\* Junto al botón "transferDesde" introduce la dirección de la cuenta 2 como remitente y la cuenta 1 como destinatario, introduce 250000000000000000000000000 como la cantidad y haga clic en el botón.

**2.9.3** Compruebe los balances de las cuentas 2 y 1, deberían devolver 25000000000000000000000 y 75000000000000000000000.

**GIF** Prueba de la funcion TransferirDesde: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_transferFrom.gif?raw=true" alt="Test transferFrom function" width="300"/>
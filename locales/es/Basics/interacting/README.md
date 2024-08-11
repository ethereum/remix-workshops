## Acceder a las funciones en un contrato desplegado

1. Cuando un contrato se ha desplegado con éxito, aparecerá en la parte inferior del plugin Desplegar y Ejecutar. Abre el contrato haciendo clic en el cursor - para que el cursor apunte hacia abajo.
   ![desplegar contrato](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/instance.png "contrato desplegado")

2. Hay dos funciones en este contrato.  Para introducir los parámetros individualmente, haciendo clic en el cursor a la derecha del changeOwner (descrito en rojo abajo). En la vista ampliada, cada parámetro tiene su propia casilla de entrada.

![Desplegar contrato](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/deployed_open2.png "contrato desplegado")

Si este contrato hubiera importado otros contratos, las funciones de los contratos importados también serían visibles aquí.  En algún momento, trate de jugar con un contrato ERC20 para ver todas sus funciones.

3. Las funciones con botones azul son funciones **puras** o **vistas**.  Esto significa que simplemente están leyendo una propiedad o que están devolviendo un valor.  En otras palabras, no están ahorrando nada - así que son GRATIS (no cuestan gas).  Funciones con otros colores - generalmente naranja (dependiendo del tema de Remix) cuestan gas porque están ahorrando información.  Están creando una **transacción**.

4. 2_Owner.sol no tiene una función **de pago**.  If it did, the button's color would be red.  Payable functions allow you to send Ether to the function.  To send ETH with a payable function, you put the amount you want to send in the **value** field towards the top of the Deploy & Run module.

5. In the Remix VM, you don't need to approve a transaction.  When using a more realistic test environment or when using the mainnet - you will need to approve the transactions for them to go through. Approving a transaction costs gas.

6. Choosing a public network is not done in Remix but in your Browser Wallet.  There is a plug icon to the right of the Environment title that links to chainlist.org where you can get the specs of the chain you want to interact with.
   ![chainlist](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/chainlist.png "chainlist")

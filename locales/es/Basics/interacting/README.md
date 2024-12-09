## Acceder a las funciones en un contrato desplegado

1. Cuando un contrato se ha desplegado con éxito, aparecerá en la parte inferior del plugin Desplegar y Ejecutar. Abre el contrato haciendo clic en el cursor - para que el cursor apunte hacia abajo.
   ![desplegar contrato](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/instance.png "contrato desplegado")

2. Hay dos funciones en este contrato.  Para introducir los parámetros individualmente, haciendo clic en el cursor a la derecha del changeOwner (descrito en rojo abajo). En la vista ampliada, cada parámetro tiene su propia casilla de entrada.

![Desplegar contrato](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/deployed_open2.png "contrato desplegado")

Si este contrato hubiera importado otros contratos, las funciones de los contratos importados también serían visibles aquí.  En algún momento, trate de jugar con un contrato ERC20 para ver todas sus funciones.

3. Las funciones con botones azul son funciones **puras** o **vistas**.  Esto significa que simplemente están leyendo una propiedad o que están devolviendo un valor.  En otras palabras, no están ahorrando nada - así que son GRATIS (no cuestan gas).  Funciones con otros colores - generalmente naranja (dependiendo del tema de Remix) cuestan gas porque están ahorrando información.  Están creando una **transacción**.

4. 2_Owner.sol no tiene una función **de pago**.  Si así fuera, el color del botón sería rojo.  Las funciones Playable permiten enviar Ether a la función.  Enviar ETH con una función de playable, pones la cantidad que quieres enviar en el campo **valor** hacia la parte superior del módulo Deploy & Run.

5. En la MV Remix no necesita aprobar una transacción.  Cuando se utiliza un entorno de prueba más realista o cuando se utiliza la red principal - será necesario aprobar las transacciones para que se realicen. Aprobar una transacción cuesta gas.

6. La elección de una red pública no se hace en Remix sino en tu cartera de navegador.  Hay un icono de enchufe a la derecha del título de Entorno que enlaza a chainlist.org donde se pueden obtener las especificaciones de la cadena con la que se quiere interactuar.
   ![chainlist](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/chainlist.png "lista de cadenas")

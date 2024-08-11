En el capítulo anterior, compilamos un contrato, que es decir, el código de Solidity se ha transformado en pequeños trozos de código de bytes de Ethereum Virtual Machine (EVM).

Ahora pondremos ese código en una cadena de bloques de prueba.

1. Haz clic en el icono Desplegar y Correr![deploy & run icon](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_to_the_remixvm/images/run.png "icono desplegar y correr").

2. Seleccione uno de los **Remix VM** en el menú desplegable **Entorno**.

3. Haga clic en el botón Desplegar (o el botón de transacción en la vista expandida).

4. Has desplegado tu contrato compilado en la máquina virtual Remix - una cadena de bloque simulada que se está ejecutando dentro de la ventana de su navegador.  La MV Remix es una cadena de pruebas simple y rápida.  No es tan realista porque usted no necesita aprobar cada transacción.

5. Comprueba la terminal para ver los detalles de esta transacción de implementación.

También puede usar Remix para desplegar en otras cadenas de EVM públicas. Para hacer esto, necesitarás conectarte a un **entorno** diferente - como Inyected Provider.  El Injected Provider conecta Remix a la cartera del navegador (como MetaMask o similar).  Intentaremos desplegar a una red pública al final de este tutorial. Pero antes de que lleguemos, cubriremos cómo interactuar con las funciones de un contrato desplegado.

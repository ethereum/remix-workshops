1. Si no tienes una cartera de navegador como **MetaMask**, descarga e instala una ahora.

2. Haz clic en el icono de MetaMask en tu navegador. Inicie sesión y elija la red de prueba de Ephemery. Es posible que tengas que actualizar la configuración de tu cartera para poder ver **probar las redes**.  Alternativamente, puedes ir al módulo de transacciones Deploy & Run de Remix y en la sección ENTORNO, seleccionar Ephemery.

3. Obtener ETH de prueba para las redes de prueba públicas a menudo es molesto.  Ephemery es una red pública que se actualiza mensualmente, por lo que obtener la prueba de ETH debería ser indolora.  Aquí hay un enlace a alguno <a href="https://github.com/ephemery-testnet/ephemery-resources?tab=readme-ov-file#faucets" target="_blank">Ephemery faucets</a>.

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/testnet.png)

Sepolia es otra red de pruebas popular que no se actualiza, por lo que los despliegues persistirán, pero los grifos de Sepolia son más difíciles de usar.

En la cartera de tu navegador, asegúrate de NO haber seleccionado la red principal ni ninguna red que cueste ETH real. En el módulo Desplegar y Correr, debajo del cuadro de selección de entorno, verá una insignia con el ID de la red y, para las cadenas populares, su nombre.  En el caso de abajo, su Sepolia.

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/sepolia.png)

5. Asegúrese de ver el 2_Owner.sol como una opción en el cuadro de selección **CONTRATO**, luego haz clic en el botón **Desplegar**.

Si el cuadro de selección **CONTRATO** está vacío, tendrás que compilar 2_Owner de nuevo haciendo de 2_Owner.sol el archivo activo en el **editor** y luego ir al **Compilador de solidez** para compilarlo.

6. Después de pulsar el botón "Desplegar", verá la ventana emergente de la cartera del navegador que le pide que pague por las transacciones.  Si tienes el tipo de ETH adecuado para esta cadena, aprueba esta transacción.  Revisa la impresión en la terminal.  Una vez que el bloque es validado, la **instancia desplegada** aparecerá en la parte inferior de Deploy & Run

Y con eso has terminado este tutorial.  Ahora tienes experiencia con la apertura, compilación, implementación e interacción con Contratos Inteligentes en Remix IDE.

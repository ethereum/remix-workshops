Ahora que sabemos cómo consultar datos simples, intentemos una consulta más compleja.

Este es un contrato desplegado en la red principal - en esta dirección: <a href="https://etherscan.io/address/0xdac17f958d2ee523a2206206994597c13d831ec7#code" target="_blank">https://etherscan.io/address/0xdac17f958d2ee523a2206206994597c13d831ec7#code</a>

Vamos a consultar el contrato para encontrar el nombre de su token.

La variable **nombre** es una variable de estado del contrato.

Para acceder a este contrato **mainnet**, tenemos que hacer algo de configuración.

1. Cambie a la red principal en metamask.
2. Probablemente tendrás que actualizar Remix.
3. Como resultado de la actualización, es posible que también tengas que volver a cargar este tutorial.
4. Vaya a Implementar y ejecutar y cambie a **Inyected Web3**.

**Uso de Web3**En el script, queryContract.js, necesitamos crear una instancia de una nueva instancia del objeto web3.eth.Contract.  Para esto necesitamos tomar el ABI del contrato y su dirección.  El código fuente y el ABI están disponibles en etherscan porque el desarrollador del contrato lo publicó intencionalmente.

En etherscan, podemos ver que su nombre es **TetherToken**.  Al desplazarse hacia abajo hasta el contrato TetherToken en la sección de código fuente de etherscan, podemos ver las variables de estado del contrato, la primera de las cuales se llama **nombre**.

Hay algunos aros sintácticos por los que saltar para devolver el valor de la variable de estado.

- Para llamar a la función getter generada automáticamente de la variable de estado público, debe tratar la variable como una función (añadiendo paréntesis) y también agregar una llamada().

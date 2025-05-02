Como hemos visto en la sección anterior, ejecutar código vía transacciones en la red Ethereum exige cargos en forma de Ether. La cantidad de la tarifa que ha de ser pagada para ejecutar una transacción depende de la cantidad de _gas_ que cueste la ejecución de la transacción.

### Gas

_Gas_ es la unidad que mide la cantidad de esfuerzo computacional que es requerido para ejecutar una operación concreta en la red  Ethereum.

### Precio del Gas

El _gas_ que alimenta a Ethereum es a veces comparado con la gasolina que alimenta a un coche. La cantidad de gas que consume un coche es casi siempre la misma, pero el precio que se paga por el gas depende del mercado.

Del mismo modo, la cantidad de gas que requiere una transacción es siempre la misma para el mismo trabajo computacional con el. Sin embargo, el precio que el emisor de la transacción quiere pagar por el gas depende de ellos. Transacciones con precios de gas más altos pasan más rápido; transacciones con precios de gas más bajos quizá nunca lleguen a pasar.

Cuando se envía una transacción, el emisor ha de pagar la tasa de gas (gas_price \* gas) cuando la transacción es ejecutada. Si el _gas_ sobra después de que la ejecución se complete, el emisor recibe el importe de vuelta.

_Gas_ es referido como gwei.

### Límite de Gas

Cuando se envía una transacción el emisor especifica la máxima cantidad de gas que está dispuesto a pagar por la transacción. Si el límite es demasiado bajo, la transacción puede quedarse sin gas antes de ser completada, revirtiendo cualquier cambio que se haya hecho. En este caso, el gas se consume y no podrá ser reembolsado.

Aprenda más sobre _gas_ en <a href="https://ethereum.org/en/developers/docs/gas/" target="_blank">ethereum.org</a>.

<a href="https://www.youtube.com/watch?v=oTS9uxU6cAM" target="_blank">Mire un vídeo con tutoriales sobre Gas y los precios del Gas</a>.

## ⭐️ Misión

Crear una nueva variable de estado `public` en el contrato de `Gas` llamado `cost` del tipo `uint`. Almacenar el valor del coste del gas para desplegar el contrato en una nueva variable, incluyendo el coste por el nuevo valor que se está almacenando.

Consejo: Puede revisar en la terminal de Remix los detalles de una transacción incluyendo los costes de gas. También puede usar el plugin de Remix _Gas Profiler_  para buscar los costes de gas de las transacciones.
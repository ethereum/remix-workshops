# ¿Cómo funciona?

**EIP-7 DelegateCall** opcode permite una ejecución separada en otro contrato mientras se mantiene el contexto de ejecución original.

Todas las **llamadas de mensajes** del usuario pasan por un **contrato de proxy**.

El **contrato de proxy** los redirigirá al **contrato lógico**.

Y cuando necesites **actualizar** la lógica, **solo** implementarás que - **SIN EMBARGO** - la implementación de Proxy seguirá siendo la misma.

Solo tendrás que actualizar la dirección del contrato de Logic en Proxy.

El contrato de proxy utiliza **llamadas de delegado** y **ensamblaje de solidez** porque sin él, es imposible devolver cualquier valor de **delegatecall**.

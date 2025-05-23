# ¿Qué pasa si tenemos variables de estado?

Las cosas son más complicadas una vez que tenemos que lidiar con las variables de estado.  Las variables de estado se guardan en **almacenamiento**.

"Almacenamiento": es una asignación; cada valor almacenado allí se persiste y se guarda en cadena.

_Nota: Las variables de estado de tamaño estático (todo excepto el mapeo y los tipos de matriz de tamaño dinámico) se diseñan de forma contigua en el almacenamiento a partir de la posición 0. Múltiples elementos contiguos que necesitan menos de 32 bytes se empaquetan en una sola ranura de almacenamiento si es posible. Para los contratos que utilizan la herencia, el orden de las variables de estado está determinado por el orden linealizado C3 de los contratos que comienza con el contrato más básico_

Una vez que ejecutamos **llamada de delegación**, el almacenamiento de ambos contratos se **"fusiona"** en un solo estado desordenado.

Tenemos que "decirle" a ProxyContract cómo es el **estado** del **contrato lógico**.

La forma más fácil de hacer esto es crear un contrato separado, en este ejemplo, llamado **StorageContract** que representará el **estado** y del que proxyContract heredará.

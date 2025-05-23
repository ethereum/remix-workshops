# Llamada de delegados

Es una variante especial de una **llamada de mensaje**, que es idéntica a una llamada de mensaje, aparte del hecho de que el código en la dirección de destino se ejecuta en el contexto del contrato de llamada, por lo que **msg.sender** y **msg.value** no cambian sus valores.

Esto significa que un contrato puede cargar dinámicamente código desde una dirección diferente en tiempo de ejecución.

El almacenamiento, la dirección actual y el saldo todavía se refieren al contrato de llamada, solo el código se toma de la dirección llamada.

Por lo tanto, cuando un **Proxy** delega llamadas al contrato de Logic, cada modificación de almacenamiento afectará al almacenamiento del contrato de Logic.
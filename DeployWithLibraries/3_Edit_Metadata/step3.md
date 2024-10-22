La propiedad `Deploy` en `sampleContract.json` contiene todo lo que necesitas para decirle a Remix IDE la dirección de la biblioteca para una red específica.

- `<address>` contiene la dirección de la biblioteca que ya está instalada. Debe especificar esta dirección para cada red.
- `autoDeployLib` es un booleano y le dice a Remix IDE si debería desplegar automáticamente la librería antes de desplegar el contrato.

Básicamente si `autoDeployLib` es **verdadero**, el `<address>` no será utilizado y Remix desplegará automáticamente la librería antes de desplegar el contrato.

Para el propósito de esta demostración - estamos imitando una situación en la que la librería ya ha sido desplegada porque esta es una situación más común.

Así que establece `autoDeploy` a **falso**, para la entrada `VM:-`.

Ir al siguiente paso.

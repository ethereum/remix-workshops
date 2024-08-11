La propiedad `Deploy` en `sampleContract.json` contiene todo lo que necesitas para decirle a Remix IDE la dirección de la biblioteca para una red específica.

- `<address>` contiene la dirección de la biblioteca que ya está instalada. Debe especificar esta dirección para cada red.
- `autoDeployLib` es un booleano y le dice a Remix IDE si debería desplegar automáticamente la librería antes de desplegar el contrato.

Básicamente si `autoDeployLib` es **verdadero**, el `<address>` no será utilizado y Remix desplegará automáticamente la librería antes de desplegar el contrato.

For the purpose of this demo - we are mimicking a situation where the library has already been deployed because this is a more common situation.

So set `autoDeploy` to **false**, for the `VM:-` entry.

Move to next Step.

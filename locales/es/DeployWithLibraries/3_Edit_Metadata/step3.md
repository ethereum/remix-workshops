La propiedad `Deploy` en `sampleContract.json` contiene todo lo que necesitas para decirle a Remix IDE la dirección de la biblioteca para una red específica.

- `<address>` contiene la dirección de la biblioteca que ya está instalada. Debe especificar esta dirección para cada red.
- `autoDeployLib` is a boolean and tells Remix IDE if it should autodeploy the library before deploying the contract.

Basically if `autoDeployLib` is **true**, the `<address>` will not be used and Remix will automatically deploy the library before deploying the contract.

For the purpose of this demo - we are mimicking a situation where the library has already been deployed because this is a more common situation.

So set `autoDeploy` to **false**, for the `VM:-` entry.

Move to next Step.

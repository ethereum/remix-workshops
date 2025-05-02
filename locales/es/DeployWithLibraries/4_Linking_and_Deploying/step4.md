Cambia al módulo `Deploy & Run`
![Run transaction](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/4_Linking_and_Deploying/images/remix_runtransaction.png "Run transaction")

- Seleccione el entorno VM Remix y seleccione el contrato `sampleContract` en la lista de contratos compilados.

- Haz clic en `Desplegar`

La terminal debe de devolver algo como `creación de ejemplo error: <address> no es una dirección válida. Por favor, compruebe que la dirección proporcionada es válida. `That is expected: **We have set `autoDeployLib` to false, so Remix expects to have an address and not just `<address>`**

Por lo tanto, necesitamos desplegar la librería para obtener su dirección.

- Selecciona la librería `aLib` en la lista de contrato compilado y presiona `deploy`

 ![Choose aLib](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/4_Linking_and_Deploying/images/contract_alib.png "Choose aLib")

- Haz clic en el icono del portapapeles para copiar la dirección de la librería.

 ![Copy lib1](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/4_Linking_and_Deploying/images/alib_copy.png "Copy")

- Pégalo en los metadatos JSON de la **muestra de contrato**.

- Reelige el contrato `sampleContract` en el módulo `Run transaction` y presiona desplegar.

- El despliegue ahora debería ser exitoso.


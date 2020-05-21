# metadata JSON

`Deploy` property in `sample.json` contains everything you need for telling Remix IDE the address of the library for a specific network.

 - `<address>` contains the address of the library that is already deployed. You have to specify this address for each network.
 - `autoDeployLib` is a boolean and tells Remix IDE if it should autodeploy the library before deploying the contract.

Basically if `autoDeployLib` is **true**, the `<address>` will not be used and Remix will automatically deploy the library before deploying the contract.

For the purpose of this demo - we are mimicking a situation where the library has already been deployed because this is a more common situation. 

So set `autoDeploy` to **false**, for the `VM:-` entry.

Move to next Step.

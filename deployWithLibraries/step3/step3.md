# metadata JSON

The generated JSON looks like:
![contract.json](https://github.com/ethereum/remix-workshops/raw/master/deployWithLibraries/step2/remix_metadata.png "contract.json")

Let's use it.

`Deploy` property contains everything you need for telling Remix IDE which is the address of the library for a specific network.

 - `<address>` contains the address of the library that is already deployed. You have to specify this address for each network.
 - `autoDeployLib` is a boolean and tells Remix IDE if it should autodeploy the library before deploying the contract.
    basically if `autoDeployLib` is true, the `<address>` will not be used.

please set `autoDeploy` to false, for the `VM:-` entry.

Move to next Step.

# Deploying Library

Before deploying a library, it is necessary to link it to the contract.

You will find [there](https://solidity.readthedocs.io/en/v0.5.10/contracts.html?highlight=library#libraries) more information about Solidity libraries.

In short, the address of the library that is being used **needs** to be added to the compiled contract before deploying it.
This is what we are going to do now.

 - First go to the settings page ![settings page](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_deploy_library/remix_settings.png "Settings")
 - And check the first option `Generate contract metadata`. 
 - This tells the compiler to generate a JSON file containing important information about the compilation result.
 - Moreover, it can be used for linking libraries to a contract.

# Compile and generate metadata (JSON) file.

Open the Solidity compiler ![Solidity Compiler](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_deploy_library/remix_icon_solidity.png "Solidity Compiler") and compile `contractSimpleLibrary.sol`.
Switch to the File Explorer ![File Explorer](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_deploy_library/remix_file_explorer.png "File Explorer") and select the newly created JSON file. 
It has the **same name** as the contract `test` but with the extension `JSON` - `test.json` and not `contractSimpleLibrary.json`.
It looks like:

![contract.json](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_deploy_library/remix_metadata.png "contract.json")

See step 3 for making use of it.


# Deploying Library

The **library** from the previous chapter was in the same file as the **contract**. However, when each are deployed they will each have their own address. In order to use a library, the calling contract must have the library's **address**.  

So we need to get the library's address into the contract.

--------------
Here in the <a href="https://solidity.readthedocs.io/en/latest/contracts.html?highlight=library#libraries" target="_blank">Solidity Docs</a> is more information about Solidity libraries.

---------------------

We will deploy the library and the contract, but first we need to so some setup.

When Remix sees that there is a linked library, by default, it will try to deploy the library before it deploys the contract.  In this example we don't want this behavior because we are mimicking the setup where a library has already been deployed.

Also, when we deploy the contract, we need to tell Remix the ** linked library's address**... that is once we know it.

Turning off the auto deployment of the library and inputting the library's address happens in the compiled contract's **metadata** AKA the `build artifact`.  This is a JSON file which we need to tell Remix to generate.

 - Go to the settings module by clicking on the settings ![settings](https://github.com/ethereum/remix-workshops/raw/depWithLibs/DeployWithLibraries/2_deploy_library/settings.png "Settings") icon in the icon panel. ![settings module](https://github.com/ethereum/remix-workshops/raw/depWithLibs/DeployWithLibraries/2_deploy_library/remix_settings.png "Settings")
 - And check the first option `Generate contract metadata`. 

# Compile and generate metadata (JSON) file.

1. Open the Solidity Compiler ![Solidity Compiler](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_deploy_library/remix_icon_solidity.png "Solidity Compiler")

2. Compile `contractSimpleLibrary.sol`.

3. Switch to the File Explorer ![File Explorer](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_deploy_library/remix_file_explorer.png "File Explorer") 

4. Navigate to the newly create JSON files.  
    - It should be in browser/.learneth/DeployWithLibraries/2_deploy_library/artifacts/   
    
5. Select the newly created JSON file created from the contract.  It has the **same name** as the contract `sample` but with the extension `JSON`: `sample.json` and not `contractSimpleLibrary.json`.
It looks like:

![contract.json](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_deploy_library/remix_metadata.png "contract.json")

See step 3 for making use of it.


# Deploying Library

The **library** from the previous chapter was in the same file as the **contract**. However, when each are deployed they will each have their own address. In order to use a library, the calling contract must have the library's **address**.  

In Remix we will need to get the library's address. It doesn't go in the Solidity code but in the compiled contract's `build artifact` AKA its **metadata**. 

So we need to tell Remix to generate the **metadata**.

 - Go to the settings module by clicking on the settings ![settings](https://github.com/ethereum/remix-workshops/raw/depWithLibs/DeployWithLibraries/2_deploy_library/settings.png "Settings") icon in the icon panel. ![settings module](https://github.com/ethereum/remix-workshops/raw/depWithLibs/DeployWithLibraries/2_deploy_library/remix_settings.png "Settings")
 - And check the first option `Generate contract metadata`. 

# Compile and generate metadata (JSON) file.

1. Open the Solidity Compiler ![Solidity Compiler](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_deploy_library/remix_icon_solidity.png "Solidity Compiler")

2. Compile `contractSimpleLibrary.sol`.

3. Switch to the File Explorer ![File Explorer](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_deploy_library/remix_file_explorer.png "File Explorer") 

4. Navigate to the newly create JSON files.  
    - It should be in browser/.learneth/DeployWithLibraries/2_deploy_library/artifacts/   
    
5. Select the newly created JSON file created from the contract.  It has the **same name** as the contract `sample` but with the extension `JSON`: `sample.json` and not `contractSimpleLibrary.json`.

In the next step we'll make some adjustments to the metadata file.

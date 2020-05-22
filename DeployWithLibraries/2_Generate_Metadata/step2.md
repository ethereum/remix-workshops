# Deploying Library

The **library** from the previous chapter was in the same file as the **contract**. However, they won't be deployed together and will have different addresses.

In order to use a library, the calling contract must have the library's **address**.  

But it doesn't go in the contract's Solidity code.  It goes in the compiled contract's `build artifact` AKA its **metadata**. 

So we need to tell Remix to generate the **metadata** and then we'll update that.

 - Go to the settings module by clicking on the settings ![settings](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/settings.png "Settings") icon in the icon panel. 
 
 ![settings module](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/remix_settings.png "Settings Module")

 - And check the first option `Generate contract metadata`. 

# Compile and generate metadata (JSON) file.

1. Open the Solidity Compiler ![Solidity Compiler](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/remix_icon_solidity.png "Solidity Compiler")

2. Compile `2_contractSimpleLibrary.sol`.

3. Switch to the File Explorer ![File Explorer](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/remix_file_explorer.png "File Explorer") 

4. Navigate to the newly create JSON files.  
    - It should be in the folder:

**browser/.learneth/DeployWithLibraries/2_Generate_Metadata/artifacts/**  
    
5. Select the newly created JSON file created from the contract.  It has the **same name** as the contract `sample` but with the extension **json**: `sample.json` (don't select the library's metadata `contractSimpleLibrary.json`).

In the next step we'll make some adjustments to the metadata file.

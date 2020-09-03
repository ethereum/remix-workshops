## Deploying Library

The **library** from the previous chapter was in the same file as the **contract**. However, they won't be deployed together and will have different addresses.

In order to use a library, the calling contract must have the library's **address**.  

But the library's address is not directly specified in the solidity code. The calling contract's compiled bytecode contains a **placeholder** where library's **addresses** will go.

At deployment of the **calling contract**, Remix will look in the contract's **metadata** for the library's address and will update the placeholder with the address.

So before deploying a contract that calls a library, you need to generate the contract's metadata (AKA its **build artifact**) and then you need to input the library's address into the metadata file.

A contract's metadata is generated at **compile time**. 

Let's setup Remix to generate the **metadata file**.

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

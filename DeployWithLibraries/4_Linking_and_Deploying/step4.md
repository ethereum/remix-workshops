Switch to the `Deploy & Run` module 
![Run transaction](https://github.com/ethereum/remix-workshops/raw/depWithLibs3/DeployWithLibraries/4_Linking_and_Deploying/remix_runtransaction.png "Run Transaction")

 - Select the JavaScript VM Environment and select the `sampleContract` contract in the list of compiled contracts.

 - Click on `Deploy`
 
 The terminal should output something like `creation of sample errored: <address> is not a valid address. Please check the provided address is valid.`
 That is expected: **We have set `autoDeployLib` to false, so Remix expects to have an address and not just `<address>`**

So we need deploy the library to get its address.

  - Select the library `aLib` in the list of compiled contract and hit `deploy`

    ![Choose aLib](https://github.com/ethereum/remix-workshops/raw/depWithLibs3/DeployWithLibraries/4_Linking_and_Deploying/lib1.png "Choose aLib")

  - Click the clipboard icon to copy the address of the library.

    ![Copy lib1](https://github.com/ethereum/remix-workshops/raw/depWithLibs3/DeployWithLibraries/4_Linking_and_Deploying/copy-addr.png "Copy")

  - Paste it into the **contract sample's** metadata JSON.

  - Reselect the `sampleContract` contract in the `Run transaction` module and hit deploy.

  - Deploy should now be successful.


# linking and deploying

Switch to the `Run transaction` module 
![Run transaction](https://github.com/ethereum/remix-workshops/raw/master/deployWithLibraries/step4/remix_runtransaction.png "Run Transaction")

 - Select the `sample` contract in the list of compiled contracts.
 - Click on `Deploy`
 
 The terminal should output something like `creation of sample errored: <address> is not a valid address. Please check the provided address is valid.`
 That is expected: **We have set `autoDeployLib` to false so Remix expect to have an address and not just `<address>`**

So we need first to deploy the library.

  - Select the library `lib1` in the list of compiled contract and hit `deploy`
  - copy the address of the library
  ![Run transaction](https://github.com/ethereum/remix-workshops/raw/master/deployWithLibraries/step4/remix_deploy_lib.png "Run Transaction")

  - and paste it in the metadata JSON.

  - reselect the `sample` contract in the `Run transaction` module and hit deploy
  - Deploy should now be successful


   


切换到`Deploy & Run`模块
![Run transaction](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/4_Linking_and_Deploying/images/remix_runtransaction.png "Run Transaction")

 - 选择Remix VM环境，并在已编译合约列表中选择`sampleContract`合约。

 - 点击`Deploy`按钮。
 
 终端应该输出类似于`creation of sample errored: <address> is not a valid address. Please check the provided address is valid.`的信息。这是预期的：**我们将`autoDeployLib`设置为false，因此Remix希望有一个地址而不仅仅是`<address>`**

所以我们需要部署库来获取其地址。

  - 在已编译合同列表中选择`aLib`库并点击`deploy`按钮。

    ![Choose aLib](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/4_Linking_and_Deploying/images/contract_alib.png "Choose aLib")

  - 单击剪贴板图标以复制库的地址。

    ![Copy lib1](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/4_Linking_and_Deploying/images/alib_copy.png "Copy")

  - 将其粘贴到sample合约的元数据JSON中。

  - 重新选择`Run transaction`模块中的`sampleContract`合约并点击deploy按钮。

  - 现在应该可以成功部署。


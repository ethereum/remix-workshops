## 部署库

上一章的**库**与**合约**在同一个文件中。但是它们不会一起部署，而且将拥有不同的地址。

为了使用库，调用合约必须具有该库的地址。

但是，在Solidity代码中并没有直接指定库的地址。调用合约的编译字节码包含一个占位符，其中将放置库的地址。

在部署调用合约时，Remix将查找合约元数据以获取库的地址，并更新占位符为该地址。

因此，在部署调用某个库的合约之前，您需要生成该合约的元数据文件，并将把使用到的相应库地址放到元数据文件中。

一个智能合约在编译时就已经生成了其对应的元数据信息。

让我们设置 Remix 来生成元数据文件吧！

 - 点击图标面板上方“设置”![settings](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/settings.png "Settings")图标进入设置模块。
 
 ![settings module](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/remix_settings.png "Settings Module")

 - 选择第一个选项`Generate contract metadata`.

# 编译并生成元数据（JSON）文件。
1. 打开Solidity编译器 ![Solidity Compiler](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/remix_icon_solidity.png "Solidity Compiler")

2. 编译 `2_contractSimpleLibrary.sol`。

3. 切换到文件浏览器 ![File Explorer](https://github.com/ethereum/remix-workshops/raw/master/DeployWithLibraries/2_Generate_Metadata/remix_file_explorer.png "File Explorer") 

4. 导航到新创建的JSON文件。
    - 它应该在以下文件夹中：

**browser/.learneth/DeployWithLibraries/2_Generate_Metadata/artifacts/**  

5. 选择合约新创建的JSON文件。它与示例合约具有相同的名称，但扩展名为**json**：`sample.json`（不要选择库的元数据`contractSimpleLibrary.json`）。

在下一步中，我们将对元数据文件进行一些调整。
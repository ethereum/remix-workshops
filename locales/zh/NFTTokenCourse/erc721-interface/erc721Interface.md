ERC721是以太坊区块链上管理非同质化代币（NFT）的标准合约。

每个非同质化代币都是独一无二且不可互换的。 NFT可以具有不同的属性、行为或权利。 非同质化代币用于表示对唯一数字和实物资产（如艺术品、收藏品或房地产）的所有权。

如果您想了解更多关于ERC721令牌标准的信息，请查看其以<a href="https://eips.ethereum.org/EIPS/eip-721" target="_blank">以太坊改进提案</a>的规范。

## 接口

ERC721标准比ERC20标准更复杂，并具有可选扩展功能。符合ERC721规范的合约必须至少实现本节中介绍的ERC721和ERC165接口。 符合ERC721规范的合约必须至少实现本节中介绍的ERC721和ERC165接口。

此接口（第11行）是<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/IERC721.sol" target="_blank">OpenZeppelin</a>提供的开源合约库之一。

## 基础IERC721函数

符合ERC721标准的合约必须实现以下函数：

### balanceOf

函数`balanceOf`（第30行）返回地址`owner`拥有数量的token数量。

### ownerOf

函数`ownerOf`（第39行）返回持有`tokenId`的账户地址。

### safeTransferFrom

函数`safeTransferFrom`（第55行）将`tokenId`的所属权从地址`from`拥有者转移到地址`to`拥有者名下.

该函数`safeTransferFrom`（第137行）与函数`safeTransferFrom`（第55行）几乎相同。唯一的区别是此函数具有非空有效负载数据。

如果要接收转移，则智能合约必须实现 ERC721TokenReceiver 接口。这将确保该合约可以处理ERC721代币转移并防止代币被锁定在无法处理ERC721代币的合约中。 这将确保该合约可以处理ERC721代币转移并防止代币被锁定在无法处理ERC721代币的合约中。

### transferFrom

函数`transferFrom`（第55行）将`tokenId`所属权从地址`from`拥有者转移到地址`to`拥有者名下.

**建议尽可能使用 safeTransferFrom 而不是 transferFrom。**
`transferFrom`函数不安全，因为它不检查作为传输接收方的智能合约是否已实现`ERC721TokenReceiver`接口并且是否能够处理`ERC721`代币。

## 高级IERC721功能

### approve

函数`approve`（第94行）授予地址`to`代表调用该函数的账户管理id为`tokenId`的权限。

### getApproved

函数`getApproved`（第103行）返回获得批准管理id为`tokenId`的token的操作者地址（return var `operator`）。

### setApprovalForAll

函数`setApprovalForAll`（第115行）设置指定地址（输入参数 - operator）拥有调用者账户持有的所有token的权限 (_approved) 。

### isApprovedForAll

如果地址`operator`的账户已获得管理拥有者`owner`持有的token权限，则函数`getApproved`（第103行）返回布尔值 true。

## IERC721 Events

ERC721合约还必须发出以下事件：

### Transfer

当id为`tokenId`的token从地址`from`转移到地址`to`时，必须发出`Transfer`事件（第15行）。

### Approval

当具有地址`owner`的账户批准地址`spender`的账户代表其管理id为`tokenId`的token的权限时，必须发出`Approval`事件（第20行）。

### ApprovalForAll

当拥有者`owner`授予或删除操作员，管理其所有token的权限时，必须发出`ApprovalForAll`事件（第25行）。

## IERC165

除了`ERC721`接口外，符合`ERC721`规范的合约还必须实现`ERC165`接口。

通过实现ERC165接口，合约可以声明对特定接口的支持。想要与另一个合约交互的合约可以在进行交易之前查询该合约是否支持此接口，例如向其发送可能不支持的代币。 每个非同质化代币都是独一无二且不可互换的。NFT可以具有不同的属性、行为或权利。非同质化代币用于表示对唯一数字和实物资产（如艺术品、收藏品或房地产）的所有权。

IERC721接口导入（第6行）并继承（第11行）了IERC165接口。

以下是<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/introspection/IERC165.sol" target="_blank">OpenZeppelins实现</a>ERC165接口的方式：

```
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
```

例如，在EIP721中指定的ERC721界面的ERC165标识符为“0x80ac58cd”。 例如，在EIP721中指定的ERC721界面的ERC165标识符为“0x80ac58cd”。学习如何计算接口标识符以及有关<a href="https://eips.ethereum.org/EIPS/eip-165" target="_blank">改进提案</a>中ERC165更多信息。

## 其他接口

必须实现<a href="https://eips.ethereum.org/EIPS/eip-721#specification" target="_blank">IERC721TokenReceiver</a>接口才能接受安全转移。

在EIP721中指定了两个可选扩展名用于ERC721合约：

IERC721Enumerable使合约能够发布其完整的代币列表并使用户可以发现它们。

IERC721Metadata使合约能够将附加信息与代币关联。我们将在下一节中更详细地了解这个功能。 我们将在下一节中更详细地了解这个功能。

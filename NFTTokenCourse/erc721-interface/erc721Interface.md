ERC721 is a standard for token contracts that manage non-fungible tokens (NFTs) on the Ethereum blockchain.

Each non-fungible token is unique and not interchangeable. NFTs can have different properties, behavior, or rights. Non-fungible tokens are used to represent ownership of unique digital and physical assets like art, collectibles, or real estate.

If you want to know more about the ERC721 token standard, have a look at the specifications in its <a href="https://eips.ethereum.org/EIPS/eip-721" target="_blank">Ethereum improvement proposal</a>.

## Interface
The ERC721 standard is more complex than the ERC20 standard and it features optional extensions. ERC721 compliant contracts must, at a minimum, implement the ERC721 and ERC165 interfaces, which we will look at in this section.

This interface (line 11) is part of the open-source contract library provided by <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/IERC721.sol" target="_blank">OpenZeppelin</a>.

## IERC721 Functions
Contracts compliant with the ERC20 standard have to implement the following functions:

### balanceOf
The function `balanceOf` (line 30) returns the amount of tokens owned by the account with the address `owner`.

### ownerOf
The function `ownerOf` (line 39) returns the address `owner` of the account that holds the token with the id `tokenId`.

### safeTransferFrom
The function `safeTransferFrom` (line 55) transfers the ownership of a token with the id `tokenId` from the account with the address `from` to the account with the address `to`.

The function `safeTransferFrom` (line 137) is almost identical to the function `safeTransferFrom` (line 55) .The only difference is that this function has a non-empty payload `data`.

A smart contract must implement the ERC721TokenReceiver Interface if it is to receive a transfer. This will ensure that the contract can handle ERC721 token transfers and prevent the tokens from being locked in a contract that can’t.

### transferFrom
The function `transferFrom` (line 55) transfers the ownership of a token with the id `tokenId` from the account with the address `from` to the account with the address `to`.

**It is recommended to use safeTransferFrom instead of transferFrom whenever possible.**
The `transferFrom` function is not secure because it doesn’t check if the smart contract that is the recipient of the transfer has implemented the ERC721TokenReceiver interface and is capable of handling ERC721 tokens.

### approve
The function `approve` (line 94) gives the account with the address `to` the permission to manage the token with the id `tokenId` on behalf of the account calling the function.

### getApproved
The function `getApproved` (line 103) returns the address `operator` of the account that is approved to manage the token with the id `tokenId`.

### setApprovalForAll
The function `setApprovalForAll` (line 115) gives or removes the permission (`_approved`) to the account with the address `operator` to manage all tokens of the account calling the function.

### isApprovedForAll
The function `getApproved` (line 103) returns the boolean true if the account with the address `operator` is approved to manage all tokens of the account with the address `owner`.

## IERC721 Events
ERC721 contracts must also emit the following events:

### Transfer
The `Transfer` event (line 15) must be emitted when the token with the id `tokenId` is transferred from the account with the address `from` to the account with the address  `to`.

### Approval
The `Approval` event (line 20) must be emitted when the account with the address `owner` approves the account with the address `spender` to manage the token with the id `tokenId` on its behalf.

### ApprovalForAll
The `ApprovalForAll` event (line 25) must be emitted when the account with the address `owner` gives or removes the permission (`_approved`) of the account with the address `operator` to manage all its tokens.

## IERC165
In addition to the ERC721 interface, ERC721 compliant contracts must also implement the ERC165 interface.

With the implementation of the ERC165 interface, contracts can declare the support of specific interfaces. A contract that wants to interact with another contract can then query if the other contract supports this interface before making a transaction e.g. sending tokens to it that they might not support.

Our IERC721 interface here imports (line 6) and inherits (line 11) from the IERC165 interface.

This is how <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/introspection/IERC165.sol" target="_blank">OpenZeppelins implementation</a> of the ERC165 interface looks like:

```
interface IERC165 {
    function supportsInterface(bytes4 interfaceId) external view returns (bool);
}
```

For example, the ERC165 identifier for the ERC721 interface as specified in the EIP721 is “0x80ac58cd”. Learn how to calculate an interface identifier and more about the ERC165 in its <a href="https://eips.ethereum.org/EIPS/eip-165" target="_blank">improvement proposal</a>.

## Other interfaces
The <a href="https://eips.ethereum.org/EIPS/eip-721#specification" target="_blank">IERC721TokenReceiver</a> interface must be implemented to accept safe transfers.

There are two optional extensions for ERC721 contracts specified in the EIP721:

IERC721Enumerable enables a contract to publish its full list of tokens and make them discoverable.

IERC721Metadata enables a contract to associate additional information to a token. We will have a more detailed look into this in the next section.

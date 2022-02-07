In this section of the course, we will give you a theoretical introduction to blockchain-based tokens.

Blockchain tokens are a new technological building block created by blockchain technology (like websites were for the internet) that enables a decentralized, ownable internet (web3).

### Introduction
In the context of web3, tokens represent ownership. Tokens can represent ownership of anything: art, reputation, items in a video game, shares in a company, voting rights, or currencies.

The revolutionary innovation of blockchain technology is that it allows data to be stored publicly in an immutable (unchangeable) way.
This new form of data storage allows us to keep track of ownership and enable truly ownable digital items for the first time.

Blockchain Technology was originally invented to keep track of the ownership of Bitcoin, a decentralized digital currency and fungible token.

### Fungible and non-fungible tokens
Assets like money: Bitcoin or a one-dollar bill, for example, are fungible. Fungible means that all assets are the same and are interchangeable. Assets like art, collectibles, or houses are non-fungible; they are all different and not interchangeable.   

We can divide tokens into these two types: fungible tokens, where all tokens are the same, and non-fungible tokens (NFTs), where every token is unique.

### Token standard
The behavior of a token is specified in its smart contract (token contract). The contract could, for example, include the functionality to transfer a token or check for its total supply.

If everybody would create their own token contracts with different behavior and naming conventions, it would make it very hard for people to build contracts or applications that are able to interact with each other.

The Ethereum community has developed token standards that define how a developer can create tokens that are interoperable (able to work with others) with other contracts, products, and services. Contracts developed under these standards need to include a certain set of functions and events.

The most popular token standards are the ERC20 for fungible tokens and the ERC721 for non-fungible tokens. In this course, we will learn how to create and interact with NFTs, tokens created with the ERC721 token standard.

If you want to learn more about fungible tokens and the ERC20 token standard, have a look at the Learneth ERC20 Token Course. 

The ERC777 is a fungible token standard, like the ERC20, that includes more advanced features like hooks while remaining backward compatible with ERC20. Learn more about the ERC777 in its <a href="https://eips.ethereum.org/EIPS/eip-777" target="_blank">EIP (Ethereum improvement proposal)</a>.

The ERC1155 is a multi-token standard that allows a single contract to manage different types of tokens, such as fungible, non-fungible, or semi-fungible tokens.
Learn more about the ERC1155 in its <a href="https://eips.ethereum.org/EIPS/eip-1155" target="_blank">EIP</a>.

## ⭐️ Assignment
For this assignment, we will test your knowledge via a short quiz.
Assign the number of the best answer to the variables `question1` (line 5), 
`question2` (line 6), `question3` (line 7) in the `Quiz` contract (line 4). 

### Question 1:
Why are blockchain-based tokens so revolutionary?
1. Because people can now make investments anonymously. 
2. Because they represent ownership in digital assets that can be owned and transferred.
3. Because you can use tokens to make transactions without having to pay taxes.

### Question 2:
Why did the community create token standards?
1. So that the community can control and approve the tokens that are created.
2. In order to restrict the functionality of tokens to safe and non-malicious actions.
3. So that the community can create tokens that are interoperable with other contracts, products, and services.

### Question 3:
If you would create a decentralised application for a baseball trading card game where each baseball player would be represented by a token, what token standard would you use to write the token contract?
1. ERC20
2. ERC721
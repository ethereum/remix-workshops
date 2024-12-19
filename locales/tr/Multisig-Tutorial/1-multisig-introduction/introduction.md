Welcome to the Multisignature Wallet course! In this section, we'll explore the fundamentals of Multisignature (Multisig) wallets and we'll go through a multisig wallet contract.

## What is a Multisignature Wallet?

A multisignature (multisig) wallet is a type of digital wallet that requires multiple keys to authorize a cryptocurrency transaction.

Imagine a multisig wallet as a secure vault with multiple locks. To open the vault, each keyholder must open their individual lock. This setup ensures that no single person can access the vault's contents without the others' consent.

## How Does a Multisig Wallet Work?

In a multisig setup, each transaction must receive a predetermined number of approvals from a set group of individuals. For instance, in a 3-of-5 wallet configuration, there are five authorized addresses, but a transaction only goes through when at least three of them give their approval. When a transaction is initiated, it's presented as a **proposal** to the group. Each member who agrees to the transaction uses their private key to digitally sign it.

These **digital signatures** are unique and are generated based on the combination of the transaction data and the private key.

When the required number of signatures is reached, the transaction is broadcasted to the blockchain for execution.

## Why Use a Multisig Wallet?

Multisig wallets are crucial for enhanced security in cryptocurrency transactions. They mitigate the risk of theft or loss of a single key. In business, they're used to ensure that funds can't be moved without consensus among stakeholders. For instance, in a company managing cryptocurrency assets, a multisig wallet might require the CFO, CEO, and a board member to all approve significant transactions, protecting against internal fraud or external hacks.

## Conclusion

In this section, we learned that a multisig wallet requires multiple keys to authorize a proposed cryptocurrency transaction and that a multisigs mitigates the risk of theft or loss of a single key.

## ⭐️ Assignment: Multiple Choice Test

### 1. What is a Multisignature Wallet?

1. A digital wallet that requires a single signature for transactions.
2. A digital wallet that requires multiple signatures for transactions.
3. A physical wallet used for storing cryptocurrency.
4. A wallet that can only hold multiple types of cryptocurrencies.

### 2) How does a Multisignature Wallet enhance security?

1. By requiring a single private key for transactions.
2. By distributing transaction approval across multiple owners.
3. By storing transaction data on-chain.
4. None of the above.

Feel free to take your time and answer the questions above. Once you're ready, we'll move on to exploring the Multisig smart contract and understanding its structure.

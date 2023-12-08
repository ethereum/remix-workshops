# Section 1: Introduction
## 1.1 Smart Contracts and Blockchain
Welcome to the world of smart contracts and blockchain technology! In this tutorial, we will delve into the creation and understanding of a multi-signature wallet using the Solidity programming language. But before we jump into the code, let's establish a foundational understanding.

#### Smart Contracts:
Smart contracts are self-executing contracts where the terms of an agreement or transaction are directly written into code. They run on blockchain networks, ensuring transparency, immutability, and trustless execution. Ethereum, a popular blockchain platform, allows developers to create decentralized applications (DApps) through the use of smart contracts.

## 1.2 Multi-Signature Wallets
Our focus in this tutorial is on a specific type of smart contract known as a multi-signature wallet. Unlike traditional wallets controlled by a single private key, multi-signature wallets require multiple private key signatures to authorize and execute transactions. This extra layer of security is particularly valuable in scenarios where multiple parties need to agree on fund transfers.

#### What You Will Learn:
- Solidity Code Structure: We will explore the structure of the Solidity code and understand its different components.

- Modifiers and Functions: Learn about Solidity modifiers and how they are utilized in the contract functions for enhanced security.

- State Variables: Understand the importance of state variables and how they maintain the state of the contract.

- Events: Explore how events are used to log important information on the blockchain.

- Transaction Workflow: Dive into the process of submitting, confirming, and executing transactions in a multi-signature wallet.

By the end of this tutorial, you'll have a solid understanding of how multi-signature wallets work and be equipped to explore more complex smart contract development.



## Section 2: Understanding the Code
### 2.1 SPDX License and Pragma Statement
Let's start our exploration of the Solidity code by examining the SPDX license and the pragma statement.

#### SPDX License Identifier:
The SPDX-License-Identifier is a standard way to declare the license under which the smart contract is released. In our case, it is MIT, indicating that the code is open source and can be freely used, modified, and distributed.

```solidity
// SPDX-License-Identifier: MIT
```

#### Pragma Statement:
The pragma statement defines the version of the Solidity compiler that should be used. In our contract, we specify that any compiler version equal to or greater than 0.8.20 and less than 0.9.0 should be used.

```solidity
pragma solidity ^0.8.20;
```

This ensures compatibility and prevents potential issues that may arise from using incompatible compiler versions.

### 2.2 MultiSigWallet Contract Overview
Now, let's take a look at the MultiSigWallet contract itself.

```solidity
contract MultiSigWallet {
    // Contract events and state variables will be explained in subsequent sections.
}
```
Our contract consists of events, state variables, modifiers, and functions that collectively create a multi-signature wallet. The events provide transparency by logging key activities on the blockchain, while modifiers ensure that only authorized users can execute certain functions.

In the upcoming sections, we will break down each component of the contract, starting with the constructor function, which initializes the wallet with a list of owners and the required number of confirmations.

### 2.3 Constructor Function
The constructor function is executed only once during the deployment of the contract. It initializes essential parameters, ensuring the contract starts with the correct configuration.


```solidity
constructor(address[] memory _owners, uint _numConfirmationsRequired) {
    // Constructor implementation will be discussed in detail in the next section.
}
```
In the next section, we will delve into the details of the constructor, exploring how it validates and sets up the initial state of the multi-signature wallet.

Stay tuned for a deeper dive into the contract initialization process in the "Contract Initialization" section.




## Section 3: Contract Initialization
### 3.1 Constructor Function
Now, let's explore the constructor function, which is crucial for initializing our multi-signature wallet.

```solidity
constructor(address[] memory _owners, uint _numConfirmationsRequired) {
    require(_owners.length > 0, "owners required");
    require(
        _numConfirmationsRequired > 0 &&
            _numConfirmationsRequired <= _owners.length,
        "invalid number of required confirmations"
    );

    // Initialization logic
    for (uint i = 0; i < _owners.length; i++) {
        address owner = _owners[i];

        require(owner != address(0), "invalid owner");
        require(!isOwner[owner], "owner not unique");

        isOwner[owner] = true;
        owners.push(owner);
    }

    numConfirmationsRequired = _numConfirmationsRequired;
}

```
Let us break down the constructor function into smaller chunks and understand each part.

- The constructor takes two parameters: an array of owner addresses (_owners) and the number of confirmations required for a transaction (_numConfirmationsRequired).

- It includes several require statements to ensure that the inputs are valid. For example:

    - There must be at least one owner.
    - The number of required confirmations must be greater than zero and less than or equal to the number of owners.
- The constructor then initializes the contract state by:

    - Verifying the uniqueness of each owner.
    - Assigning ownership status to each owner.
    - Populating the owners array with the provided owner addresses.
- Finally, it sets the numConfirmationsRequired variable with the specified value.

### 3.2 State Variables
Let's recap the key state variables used in the contract:

```solidity

address[] public owners;
mapping(address => bool) public isOwner;
uint public numConfirmationsRequired;

```

- **owners:** An array containing the addresses of all owners.
- **isOwner:** A mapping indicating whether an address is an owner.
- **numConfirmationsRequired:** The number of confirmations required for a transaction.
  These variables play a crucial role in managing ownership, confirming transactions, and establishing the security rules of the multi-signature wallet.

In the upcoming sections, we will explore how these variables interact with the functions of the contract, especially during the submission and execution of transactions.


## Section 4: Modifiers in Solidity

### 4.1 Modifiers Overview
Modifiers in Solidity are special keywords that can be used to amend the behavior of functions. They are particularly useful for enforcing conditions before allowing a function to execute. In our multi-signature wallet contract, we use several modifiers to enhance security.

Let's take a closer look at the modifiers used in this contract:

```solidity
modifier onlyOwner() {
    require(isOwner[msg.sender], "not owner");
    _;
}

modifier txExists(uint _txIndex) {
    require(_txIndex < transactions.length, "tx does not exist");
    _;
}

modifier notExecuted(uint _txIndex) {
    require(!transactions[_txIndex].executed, "tx already executed");
    _;
}

modifier notConfirmed(uint _txIndex) {
    require(!isConfirmed[_txIndex][msg.sender], "tx already confirmed");
    _;
}


```

Let's break down each modifier and understand its purpose.

### 4.2 onlyOwner Modifier
The onlyOwner modifier ensures that only owners can execute a function. It does this by checking whether the address of the caller is an owner.

```solidity
modifier onlyOwner() {
    require(isOwner[msg.sender], "not owner");
    _;
}
```

The require statement checks whether the caller is an owner. If the caller is an owner, the function is executed. Otherwise, an error message is returned.

### 4.3 txExists Modifier
The txExists modifier ensures that a transaction exists before executing a function. It does this by checking whether the transaction index is valid.

```solidity
modifier txExists(uint _txIndex) {
    require(_txIndex < transactions.length, "tx does not exist");
    _;
}
```

The require statement checks whether the transaction index is valid. If the index is valid, the function is executed. Otherwise, an error message is returned.

### 4.4 notExecuted Modifier
The notExecuted modifier ensures that a transaction has not been executed before executing a function. It does this by checking whether the transaction has been executed.

```solidity
modifier notExecuted(uint _txIndex) {
    require(!transactions[_txIndex].executed, "tx already executed");
    _;
}
```

The require statement checks whether the transaction has been executed. If the transaction has not been executed, the function is executed. Otherwise, an error message is returned.

### 4.5 notConfirmed Modifier

The notConfirmed modifier ensures that a transaction has not been confirmed by the caller before executing a function. It does this by checking whether the caller has confirmed the transaction.

```solidity
modifier notConfirmed(uint _txIndex) {
    require(!isConfirmed[_txIndex][msg.sender], "tx already confirmed");
    _;
}
```

The require statement checks whether the caller has confirmed the transaction. If the caller has not confirmed the transaction, the function is executed. Otherwise, an error message is returned.

Modifiers provide a clean and efficient way to validate conditions before executing functions, enhancing the security and reliability of our multi-signature wallet. In the next section, we will delve into the implementation of the fallback function and the associated Deposit event.

## Section 5: Fallback Function and Deposit Event

### 5.1 Fallback Function

In Ethereum smart contracts, a fallback function is a function with no name that is executed when a contract receives Ether without calling any function. This function is marked with the receive keyword.

In our multi-signature wallet, we have a fallback function designed to handle incoming Ether transactions:

```solidity
receive() external payable {
    emit Deposit(msg.sender, msg.value, address(this).balance);
}
```

- The receive function is marked as external and payable, indicating that it can receive Ether from external transactions.
- It emits a Deposit event, providing information about the sender, the deposited amount (msg.value), and the current balance of the contract.

### 5.2 Deposit Event

```solidity
event Deposit(address indexed sender, uint amount, uint balance);
```
The Deposit event is emitted whenever Ether is deposited into the multi-signature wallet.
It includes three parameters:
- sender: The address that sent the Ether.
- amount: The amount of Ether deposited.
- balance: The updated balance of the contract after the deposit.

The Deposit event provides transparency by logging key information on the blockchain. In the next section, we will explore the process of submitting and confirming transactions in our multi-signature wallet.


## Section 6: Submitting and Confirming Transactions

### 6.1 submitTransaction Function

The submitTransaction function in our multi-signature wallet allows owners to propose new transactions. Let's examine the function and understand its purpose:

```solidity
function submitTransaction(
    address _to,
    uint _value,
    bytes memory _data
) public onlyOwner {
    uint txIndex = transactions.length;

    transactions.push(
        Transaction({
            to: _to,
            value: _value,
            data: _data,
            executed: false,
            numConfirmations: 0
        })
    );

    emit SubmitTransaction(msg.sender, txIndex, _to, _value, _data);
}
```
let us break down the submitTransaction function into smaller chunks and understand each part.

- The submitTransaction function takes three parameters:

    - _to: The destination address of the transaction.
    - _value: The amount of Ether to be sent.
    - _data: Additional data to include in the transaction.


- The function is marked as public and is restricted to be called only by the owners of the multi-signature wallet (onlyOwner modifier).


- It creates a new transaction object and appends it to the transactions array, initializing its properties:
    - to: Destination address.
    - value: Amount of Ether.
    - data: Additional transaction data.
    - executed: Initially set to false.
    - numConfirmations: Initially set to 0.

The function emits a SubmitTransaction event, providing information about the owner who submitted the transaction, the transaction index, destination address, Ether value, and additional data.


### 6.2 Transaction Submission Workflow

- An owner calls the submitTransaction function, proposing a new transaction by providing the destination address, Ether value, and optional data.

- A new transaction object is created and added to the transactions array.

- The SubmitTransaction event is emitted, recording the details of the submitted transaction on the blockchain.

- The submitted transactions are now in a pending state, awaiting confirmation from other owners. In the next section, we'll explore how owners can confirm these transactions and how the contract ensures that transactions are only executed when a sufficient number of confirmations are received.


## Section 7: Transaction Confirmation

### 7.1 confirmTransaction Function
The confirmTransaction function allows owners to confirm a previously submitted transaction. Let's explore its implementation:

```solidity
function confirmTransaction(
    uint _txIndex
) public onlyOwner txExists(_txIndex) notExecuted(_txIndex) notConfirmed(_txIndex) {
    Transaction storage transaction = transactions[_txIndex];
    transaction.numConfirmations += 1;
    isConfirmed[_txIndex][msg.sender] = true;

    emit ConfirmTransaction(msg.sender, _txIndex);
}
```

Let us break down the confirmTransaction function into smaller chunks and understand each part.

- The confirmTransaction function takes one parameter: _txIndex, the index of the transaction to confirm.

- It is marked as public and has three modifiers:

    - onlyOwner: Ensures that only owners can confirm transactions.
    - txExists: Checks if the specified transaction index exists.
    - notExecuted: Ensures that the transaction has not been executed.
    - notConfirmed: Ensures that the owner has not already confirmed the transaction.
- The function retrieves the specified transaction from the transactions array and increments the numConfirmations counter.

- It updates the isConfirmed mapping for the owner and the transaction index, indicating that the owner has confirmed this transaction.

- The function emits a ConfirmTransaction event, providing information about the owner who confirmed the transaction and the transaction index.

### 7.1 Transaction Confirmation Workflow

- An owner calls the confirmTransaction function, providing the index of the transaction they want to confirm.

- The function verifies that the owner is eligible to confirm, the transaction exists, has not been executed, and has not been confirmed by the owner previously.

- The numConfirmations counter for the transaction is incremented, and the isConfirmed mapping is updated accordingly.

- The contract emits a ConfirmTransaction event, capturing details about the confirming owner and the transaction index.

With the ability for owners to confirm transactions, we are building the foundation for the multi-signature wallet to require a minimum number of confirmations before executing transactions. In the next section, we will explore how transactions are executed, and the associated ExecuteTransaction event is emitted.



## Section 8: Transaction Execution

### 8.1 executeTransaction Function
The executeTransaction function allows owners to execute a confirmed transaction. Let's examine its implementation:

```solidity
function executeTransaction(
    uint _txIndex
) public onlyOwner txExists(_txIndex) notExecuted(_txIndex) {
    Transaction storage transaction = transactions[_txIndex];

    require(
        transaction.numConfirmations >= numConfirmationsRequired,
        "cannot execute tx"
    );

    transaction.executed = true;

    (bool success, ) = transaction.to.call{value: transaction.value}(
        transaction.data
    );
    require(success, "tx failed");

    emit ExecuteTransaction(msg.sender, _txIndex);
}
```

Let us break down the executeTransaction function into smaller chunks and understand each part.


- The executeTransaction function takes one parameter: _txIndex, the index of the confirmed transaction to execute.

- It is marked as public and has three modifiers:

    - onlyOwner: Ensures that only owners can execute transactions.
    - txExists: Checks if the specified transaction index exists.
    - notExecuted: Ensures that the transaction has not been executed.
- The function retrieves the specified transaction from the transactions array.

- It requires that the number of confirmations for the transaction is greater than or equal to the numConfirmationsRequired set during contract initialization.

- The executed flag for the transaction is set to true, indicating that it has been executed.

- The function uses the call function to execute the transaction, sending Ether if specified and including additional data.

- It emits an ExecuteTransaction event, providing information about the owner who executed the transaction and the transaction index.

### 8.2 Transaction Execution Workflow
An owner calls the executeTransaction function, providing the index of the confirmed transaction they want to execute.

The function verifies that the owner is eligible to execute, the transaction exists, and has not been executed.

It checks if the number of confirmations for the transaction meets the required threshold (numConfirmationsRequired).

If conditions are met, the transaction's executed flag is set to true.

The transaction is executed using the call function, and the associated Ether is sent to the specified address with the provided data.

The contract emits an ExecuteTransaction event, capturing details about the executing owner and the transaction index.

The multi-signature wallet ensures that transactions are executed only when a sufficient number of confirmations are received, providing a robust mechanism for secure fund transfers. In the next section, we will explore how owners can revoke their confirmations for a transaction.


## Section 9: Transaction Revocation

### 9.1 revokeConfirmation Function
The revokeConfirmation function allows owners to revoke their confirmations for a transaction. Let's examine its implementation:

```solidity
function revokeConfirmation(
    uint _txIndex
) public onlyOwner txExists(_txIndex) notExecuted(_txIndex) {
    Transaction storage transaction = transactions[_txIndex];

    require(isConfirmed[_txIndex][msg.sender], "tx not confirmed");

    transaction.numConfirmations -= 1;
    isConfirmed[_txIndex][msg.sender] = false;

    emit RevokeConfirmation(msg.sender, _txIndex);
}
```

Let us break down the revokeConfirmation function into smaller chunks and understand each part.

- The revokeConfirmation function takes one parameter: _txIndex, the index of the transaction for which the owner wants to revoke confirmation.

- It is marked as public and has three modifiers:

    - onlyOwner: Ensures that only owners can revoke their confirmations.
    - txExists: Checks if the specified transaction index exists.
    - notExecuted: Ensures that the transaction has not been executed.
-  The function retrieves the specified transaction from the transactions array.

- It requires that the owner has previously confirmed the transaction.

- The function decrements the numConfirmations counter for the transaction and updates the isConfirmed mapping to mark the owner as unconfirmed.

- The contract emits a RevokeConfirmation event, providing information about the owner who revoked confirmation and the transaction index.

### 9.3 Transaction Revocation Workflow
An owner calls the revokeConfirmation function, providing the index of the transaction for which they want to revoke confirmation.

The function verifies that the owner is eligible to revoke, the transaction exists, and has not been executed.

It checks if the owner has previously confirmed the transaction.

If conditions are met, the numConfirmations counter for the transaction is decremented, and the owner is marked as unconfirmed.

The contract emits a RevokeConfirmation event, capturing details about the owner who revoked confirmation and the transaction index.

Transaction revocation provides flexibility for owners who may change their mind about confirming a transaction, adding an additional layer of control to the multi-signature wallet. In the next section, we will explore how users can query information about the state of the contract using getter functions


## Section 10: Getter Functions

### 10.1 getOwners Function
The getOwners function allows users to retrieve the list of owners of the multi-signature wallet. Let's examine its implementation:

```solidity

function getOwners() public view returns (address[] memory) {
    return owners;
}
    
```

###  10.2 getTransactionCount Function
The getTransactionCount function provides the total number of transactions that have been submitted to the multi-signature wallet. Let's explore its implementation:

```solidity
function getTransactionCount() public view returns (uint) {
    return transactions.length;
}

```

The getTransactionCount function returns the length of the transactions array, providing the total number of transactions that have been submitted to the multi-signature wallet.



### 10.3 getTransaction Function

The getTransaction function allows users to retrieve the details of a specific transaction. Let's examine its implementation:

```solidity
function getTransaction(
    uint _txIndex
)
    public
    view
    returns (
        address to,
        uint value,
        bytes memory data,
        bool executed,
        uint numConfirmations
    )
{
    Transaction storage transaction = transactions[_txIndex];

    return (
        transaction.to,
        transaction.value,
        transaction.data,
        transaction.executed,
        transaction.numConfirmations
    );
}
```

- The getTransaction function is marked as public, view, and returns multiple values.
- It takes a transaction index as a parameter and retrieves the corresponding transaction from the transactions array.
- It returns a tuple containing the destination address (to), Ether value (value), additional data (data), execution status (executed), and the number of confirmations (numConfirmations) for the specified transaction.

Getter functions enhance the usability of the multi-signature wallet by providing transparency into its state and transaction history.


## Section 11: Conclusion

At the end of this tutorial, your multi-signature wallet contract should look like this:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MultiSigWallet {
    event Deposit(address indexed sender, uint amount, uint balance);
    event SubmitTransaction(
        address indexed owner,
        uint indexed txIndex,
        address indexed to,
        uint value,
        bytes data
    );
    event ConfirmTransaction(address indexed owner, uint indexed txIndex);
    event RevokeConfirmation(address indexed owner, uint indexed txIndex);
    event ExecuteTransaction(address indexed owner, uint indexed txIndex);

    address[] public owners;
    mapping(address => bool) public isOwner;
    uint public numConfirmationsRequired;

    struct Transaction {
        address to;
        uint value;
        bytes data;
        bool executed;
        uint numConfirmations;
    }

    // mapping from tx index => owner => bool
    mapping(uint => mapping(address => bool)) public isConfirmed;

    Transaction[] public transactions;

    modifier onlyOwner() {
        require(isOwner[msg.sender], "not owner");
        _;
    }

    modifier txExists(uint _txIndex) {
        require(_txIndex < transactions.length, "tx does not exist");
        _;
    }

    modifier notExecuted(uint _txIndex) {
        require(!transactions[_txIndex].executed, "tx already executed");
        _;
    }

    modifier notConfirmed(uint _txIndex) {
        require(!isConfirmed[_txIndex][msg.sender], "tx already confirmed");
        _;
    }

    constructor(address[] memory _owners, uint _numConfirmationsRequired) {
        require(_owners.length > 0, "owners required");
        require(
            _numConfirmationsRequired > 0 &&
                _numConfirmationsRequired <= _owners.length,
            "invalid number of required confirmations"
        );

        for (uint i = 0; i < _owners.length; i++) {
            address owner = _owners[i];

            require(owner != address(0), "invalid owner");
            require(!isOwner[owner], "owner not unique");

            isOwner[owner] = true;
            owners.push(owner);
        }

        numConfirmationsRequired = _numConfirmationsRequired;
    }

    receive() external payable {
        emit Deposit(msg.sender, msg.value, address(this).balance);
    }

    function submitTransaction(
        address _to,
        uint _value,
        bytes memory _data
    ) public onlyOwner {
        uint txIndex = transactions.length;

        transactions.push(
            Transaction({
                to: _to,
                value: _value,
                data: _data,
                executed: false,
                numConfirmations: 0
            })
        );

        emit SubmitTransaction(msg.sender, txIndex, _to, _value, _data);
    }

    function confirmTransaction(
        uint _txIndex
    ) public onlyOwner txExists(_txIndex) notExecuted(_txIndex) notConfirmed(_txIndex) {
        Transaction storage transaction = transactions[_txIndex];
        transaction.numConfirmations += 1;
        isConfirmed[_txIndex][msg.sender] = true;

        emit ConfirmTransaction(msg.sender, _txIndex);
    }

    function executeTransaction(
        uint _txIndex
    ) public onlyOwner txExists(_txIndex) notExecuted(_txIndex) {
        Transaction storage transaction = transactions[_txIndex];

        require(
            transaction.numConfirmations >= numConfirmationsRequired,
            "cannot execute tx"
        );

        transaction.executed = true;

        (bool success, ) = transaction.to.call{value: transaction.value}(
            transaction.data
        );
        require(success, "tx failed");

        emit ExecuteTransaction(msg.sender, _txIndex);
    }

    function revokeConfirmation(
        uint _txIndex
    ) public onlyOwner txExists(_txIndex) notExecuted(_txIndex) {
        Transaction storage transaction = transactions[_txIndex];

        require(isConfirmed[_txIndex][msg.sender], "tx not confirmed");

        transaction.numConfirmations -= 1;
        isConfirmed[_txIndex][msg.sender] = false;

        emit RevokeConfirmation(msg.sender, _txIndex);
    }

    function getOwners() public view returns (address[] memory) {
        return owners;
    }

    function getTransactionCount() public view returns (uint) {
        return transactions.length;
    }

    function getTransaction(
        uint _txIndex
    )
        public
        view
        returns (
            address to,
            uint value,
            bytes memory data,
            bool executed,
            uint numConfirmations
        )
    {
        Transaction storage transaction = transactions[_txIndex];

        return (
            transaction.to,
            transaction.value,
            transaction.data,
            transaction.executed,
            transaction.numConfirmations
        );
    }
}
```

Congratulations! You have successfully created a multi-signature wallet using Solidity. You can now deploy the contract to a testnet or mainnet and start using it to manage your funds.

The **Ethereum Virtual Machine (EVM)** is the engine that all EVM-compatible smart contracts run on. It’s not one server. It’s a set of rules (a specification).

Every node follows the same rules so that, with the same inputs, they all get the same result. The EVM defines what a smart contract can do, how data is stored, what operations exist, and how much those operations cost.

## From Solidity to Bytecode

When you write a smart contract, you're working in a high-level language like Solidity. But the EVM doesn't understand Solidity directly. It only understands **bytecode**, which is a sequence of low-level instructions called opcodes. Think of opcodes as the assembly language of Ethereum: simple commands like "add two numbers," "store this value," or "jump to another instruction."

The Solidity compiler takes your human-readable code and translates it into this bytecode. You can see this compilation output in Remix under the Solidity Compiler tab, where you'll find compilation details including the ABI, storage layouts, function hashes, and two types of bytecode that serve different purposes.

![Solidity compile details](https://raw.githubusercontent.com/ethereum/remix-workshops/master/intro-to-blockchain-and-ethereum/intro-to-evm/images/compile-details.png)

## Deploying a Smart Contract on the EVM

Let's deploy a simple ETH vault to understand how this works:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Vault {
    mapping(address => uint256) public balanceOf;

    event Deposited(address indexed from, uint256 amount);
    event Withdrawn(address indexed to, uint256 amount);

    function deposit() external payable {
        balanceOf[msg.sender] += msg.value;
        emit Deposited(msg.sender, msg.value);
    }

    function withdraw(uint256 amount) external {
        require(balanceOf[msg.sender] >= amount, "insufficient");
        // effects
        balanceOf[msg.sender] -= amount;
        // interaction
        (bool ok, ) = msg.sender.call{value: amount}("");
        require(ok, "send failed");
        emit Withdrawn(msg.sender, amount);
    }
}
```

When you compile this contract, the compiler produces two distinct programs. The **creation bytecode** (labeled "bytecode" in Remix) runs once during deployment: it sets up your contract's initial state and returns the **runtime bytecode**, which is what gets permanently stored at your contract's address. Every future interaction with your contract executes this runtime bytecode.

The EVM itself operates as a simple stack machine. It has a stack where it pushes and pops values during computation, temporary memory that gets wiped after each transaction, and permanent storage where your state variables, like the `balanceOf` mapping live on the blockchain. Even though your Solidity code has mappings, events, and named functions, the EVM just sees a sequence of opcodes manipulating these memory spaces.

## Calling the Contract: ABI, Selectors, and Dispatch

Once your contract is deployed, how does the EVM know which function to execute when someone interacts with it? This is where **calldata** comes in. Calldata is the data you send along with a transaction: it contains the instructions for what you want the contract to do.

Wallets and tools follow the **Ethereum ABI** (Application Binary Interface) to format this calldata correctly. For our `deposit()` function, the calldata structure is straightforward. The first 4 bytes contain the **function selector**, which uniquely identifies which function you're calling. This selector is computed by taking the keccak256 hash of the function signature (like `"deposit()"`) and keeping only the first 4 bytes. After the selector comes any encoded arguments, though `deposit()` has none.

When your runtime bytecode executes, it begins by reading those first 4 bytes from the calldata. It then uses conditional jumps to route execution to the appropriate function logic (a process called dispatching). If the selector doesn't match any known function, Solidity routes to your `fallback` or `receive` handlers if they exist, or the transaction reverts.

In Remix's Deployed Contracts panel, you'll see your contract's address and all its callable methods. When you click these buttons, Remix is constructing the proper calldata with the correct function selector and sending it to your contract.

![Contract Callable Methods](https://raw.githubusercontent.com/ethereum/remix-workshops/master/intro-to-blockchain-and-ethereum/intro-to-evm/images/deployed-contract.png)

## Events and Logs

When you emit events in your code, the EVM uses special `LOG` opcodes to write **logs** into the transaction receipt. These logs don't modify storage; they're not part of your contract's state. Instead, they're designed for off-chain consumers like UIs and indexers to track what happened during execution.

Each log contains the contract's address, up to four indexed **topics** (like the `from` parameter marked `indexed` in our `Deposited` event), and additional unindexed data. The first topic is typically the hash of the event signature, which helps tools identify what kind of event occurred.

## Gas

Every opcode in the EVM has a gas cost. When you send a transaction, you specify a gas **limit**: the maximum amount of gas you're willing to spend. As your transaction executes, each operation debits from this limit. Reading from storage costs gas. Writing to storage costs more gas. Simple arithmetic costs less than both.

If your transaction runs out of gas before completing, the current **execution frame** reverts; all state changes are undone, though you still pay for the gas consumed up to that point. This mechanism prevents infinite loops and ensures that network resources aren't abused. It also means that writing efficient code isn't just good practice; it directly reduces costs for your users.

## Further Reading

- [The Ethereum virtual machine](https://ethereum.org/developers/docs/evm/).
- [The Ethereum Yellow Paper](https://ethereum.github.io/yellowpaper/paper.pdf).

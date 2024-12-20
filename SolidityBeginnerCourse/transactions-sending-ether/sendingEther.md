In this section, we will learn how a contract can send and receive Ether.

### Sending Ether
We have three different options to transfer Ether: `transfer()`, `send()` and `call()`.

#### **transfer**
`<address payable>.transfer(uint256 amount)`
* `transfer()` throws an exception on failure 
* Forwards a fixed 2300 gas stipend

An example of `transfer()` can be seen in the `SendEther` contract (line 35).
**`Transfer()` is not recommended to be used anymore.**

#### **send**
`<address payable>.send(uint256 amount) returns (bool)`
* `send()` returns false on failure 
* Forwards a fixed 2300 gas stipend

An example of `send()` can be seen in the `SendEther` contract (line 41).
**`Send()` is not recommended to be used anymore.**

#### **call**
`<address>.call(bytes memory) returns (bool, bytes memory)`
* `call()` returns false on failure 
* Forwards the maximum amount of gas, but this is adjustable

An example of `call()` can be seen in the `SendEther` contract (line 48).
`Call()` is currently recommended if you are transferring Ether.

The reason `transfer()` and `send()` were introduced was to guard against *reentry attacks* by limiting the forwarded gas to 2300, which would be insufficient to make a reentrant call that can modify storage.

As we discussed in the last section, each operation on Ethereum has a specific cost associated with it. Certain operations have become more cost intensive over time, so the gas costs associated with them are also raised. When gas costs for operations are subject to change it is not good to use a hardcoded gas amount like transfer(), and send() do.

That’s why `call()` instead of `transfer()` is now recommended to send Ether.

Learn more about the subject in this <a href="https://consensys.net/diligence/blog/2019/09/stop-using-soliditys-transfer-now/" target="_blank">Consensys blog post</a>.


### Reentrancy attack
A *reentrancy attack* occurs when a function makes an external call to an untrusted contract and the attacker uses the contract to make recursive calls back to the original function before it finishes its execution. Through this method, the attacker can drain funds and manipulate data in unintended ways.

To guard against a *reentrancy attack*, all state changes should be made before calling an external contract. This is also called the <a href="https://docs.soliditylang.org/en/latest/security-considerations.html#re-entrancy" target="_blank">Checks-Effects-Interactions</a> pattern.

Another way to prevent reentrancy is to use a *Reentrancy Guard* that checks for such calls and rejects them. You can see an example of this in the contract in our modifier section or a more gas-efficient version on <a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/ReentrancyGuard.sol" target="_blank">Open Zepplin</a>.

### Receiving Ether
If we want to enable a contract to receive Ether without a function being called, we need to create a `receive` function (line 22) or a `fallback` function (line 25); otherwise, the Ether will be rejected, and the contract will throw an exception.

The `receive` function is executed on calls with empty calldata (e.g. plain Ether transfers via send() or transfer()), while the fallback function is executed on calls with calldata. If no receive function exists but a fallback function does, calls with empty calldata will also use the fallback function.

### Payable function modifier
The `payable` function modifier allows a function to receive Ether.

The `receive` function (line 22) needs to be `payable`. If you delete the `payable` modifier you will get an error from the compiler. If you delete the `payable` modifier from the `fallback` function (line 25) it will compile, but it won’t be able to receive Ether.
The functions `sendViaTransfer`, `sendViaSend`, and `sendViaCall` (lines 33, 38, and 45) also need to be `payable` in order to receive Ether.

### Payable address
Solidity makes a distinction between two different flavors of the address data type: address and address payable.

`address`: Holds a 20-byte value.
`address payable`: Holds a 20-byte value and can receive Ether via its members: transfer and send.

If you change the parameter type for the functions `sendViaTransfer` and `sendViaSend` (line 33 and 38) from `payable address` to `address`, you won’t be able to use `transfer()` (line 35) or `send()` (line 41).

<a href="https://www.youtube.com/watch?v=_5vGaqgzlG8" target="_blank">Watch a video tutorial on Sending Ether</a>.

## ⭐️ Assignment
Build a charity contract that receives Ether that can be withdrawn by a beneficiary.

1. Create a contract called `Charity`.
2. Add a public state variable called `owner` of the type address.
3. Create a donate function that is public and payable without any parameters or function code.
4. Create a withdraw function that is public and sends the total balance of the contract to the `owner` address.

Tip: Test your contract by deploying it from one account and then sending Ether to it from another account. Then execute the withdraw function.
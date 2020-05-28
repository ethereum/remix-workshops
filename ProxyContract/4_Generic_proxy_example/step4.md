# A Basic Generic Proxy Example

In the associated solidity file, **step4.sol**, there are 2 contracts - **ProxyContract** and **LogicContract**.

To use this system, we first deploy the LogicContract.

And then when we go to deploy the ProxyContract, we pass the LogicContract's address as an arguement of the ProxyContract's constructor.

The ProxyContract is deployed only once.

The code of LogicContract will be called at the line 20. It will be forwarded with delegate call while keeping the context of LogicContract.

In case we need to change the logic we would deploy a new LogicContract and set the address of it with setLogicContractAddress setter function.

*Note: The LogicContract we have here does not use the storage. Once you need to use the storage the implementation becomes a bit more complicated because those contracts share the context.*
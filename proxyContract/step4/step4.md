# Generic Proxy example

Here is a very simple example of using a Proxy contract.
The plan is first to deploy the LogicContract and pass the address of it to ProxyContract as a constructor argument.
Then will deploy the ProxyContract(only once)
The code of LogicContract will be called at the line 20 It will be forwarded with delegate call while keeping the context of LogicContract.
In case we need to change the logic we would deploy a new LogicContract and set the address of it with setLogicContractAddress setter function.

Note: The LogicContract we have here does not use the storage. Once you need touse the storage the implementation becomes a bit more difficult because those contracts share the context.
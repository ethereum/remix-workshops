pragma solidity >=0.5.0 <0.7.0;

contract Coin {
    address public minter;
    mapping(address => uint) public balances;

    constructor() public {
        balances[msg.sender] = 1000;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MultisigTutorial {
    address[] public owners;
    mapping(address => bool) public isOwner;
    uint public numConfirmationsRequired;

    modifier onlyOwner() {
        require(isOwner[msg.sender], "not owner");
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

    // Function to get the list of owners
    function getOwners() public view returns (address[] memory) {
        return owners;
    }

    // Function to get the number of confirmations required
    function getNumConfirmationsRequired() public view returns (uint) {
        return numConfirmationsRequired;
    }
}

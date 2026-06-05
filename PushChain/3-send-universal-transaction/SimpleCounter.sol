// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

contract SimpleCounter {
    uint256 public countPC;
    event CountIncremented(uint256 indexed countPC, address indexed caller);

    function increment() public {
        countPC += 1;
        emit CountIncremented(countPC, msg.sender);
    }

    function reset() public {
        countPC = 0;
    }
}

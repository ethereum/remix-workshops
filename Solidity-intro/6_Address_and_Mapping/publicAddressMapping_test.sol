pragma solidity >=0.4.0 <0.7.0;

import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./publicAddressMapping.sol";

contract test5 {

    Coin coinToTest;
    function beforeAll () public {
       coinToTest = new Coin();
    }

    function checkBalanceIsSet () public {
        Assert.equal(coinToTest.balances(address(this)), uint(1000), "The balance should be set to 10000");
    }
}
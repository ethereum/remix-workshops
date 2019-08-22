pragma solidity >=0.4.0 <0.7.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./variables.sol";

contract test3 {

    Coin storageToTest;
    function beforeAll () public {
       storageToTest = new Coin();
    }

    function checkBalanceIsSet () public {
        Assert.equal(storageToTest.minter(), address(this), "The minter address should be set in the constructor");
    }
}
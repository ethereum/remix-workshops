pragma solidity >=0.4.0 <0.7.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./publicAddressMapping.sol";

contract test3 {

    SimpleStorage storageToTest;
    function beforeAll () public {
       storageToTest = new SimpleStorage();
    }

    function checkBalanceIsSet () public {
        Assert.equal(storageToTest.balances(address(this)), uint(1000), "The balance should be set to 10000");
    }
}
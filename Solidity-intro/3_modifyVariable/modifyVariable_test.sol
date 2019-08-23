pragma solidity >=0.4.0 <0.7.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./modifyVariable.sol";

contract test3 {

    SimpleStorage storageToTest;
    function beforeAll () public {
       storageToTest = new SimpleStorage;
    }

    function checkSetFunction () public {
        storageToTest.set(12345);
        Assert.equal(storageToTest.storedData()), uint(12345), "the contract should contain the function `set` which update the `storedData`");
    }
}

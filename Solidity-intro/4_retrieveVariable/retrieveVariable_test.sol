pragma solidity >=0.4.0 <0.7.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./retrieveVariable.sol";

contract test3 {

    SimpleStorage storageToTest;
    function beforeAll () public {
       storageToTest = new SimpleStorage;
    }

    function checkGetFunction () public {
        storageToTest.set(3);
        Assert.equal(storageToTest.get(), uint(3), "the function `get` should return the value stored value");
    }
}

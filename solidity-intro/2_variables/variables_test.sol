
pragma solidity >=0.4.0 <0.7.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./variables.sol";

contract test3 {

    SimpleStorage storageToTest;

    function beforeAll () public {
       storageToTest = new SimpleStorage;
    }

function checkVariableCreated () public {
    Assert.equal(storageToTest.storedData, uint(0),"Message");
}
}
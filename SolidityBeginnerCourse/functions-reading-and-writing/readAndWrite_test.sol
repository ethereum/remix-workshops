pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./readAndWrite.sol";

contract MyTest {
  SimpleStorage foo;

  function beforeEach() public {
    foo = new SimpleStorage();
  }
  
  function checkBool() public returns (bool) {
    return Assert.equal(foo.get_b(), true, "Value is not correct");
  }
}
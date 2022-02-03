pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./inputsAndOutputs.sol";

contract MyTest {
  Function foo;

  function beforeEach() public {
    foo = new Function();
  }
  
  function checkFunction() public {
    (int i, bool b) = foo.returnTwo();
    Assert.equal(i, -2, "First value is not correct");
    Assert.equal(b, true, "Second value is not correct");
  }
}
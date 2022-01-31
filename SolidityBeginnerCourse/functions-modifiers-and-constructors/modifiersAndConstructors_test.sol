pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./modifiersAndConstructors.sol";

contract MyTest {
  FunctionModifier foo;

  function beforeEach() public {
    foo = new FunctionModifier();
  }
  
  function checkFunction() public returns (bool) {
    foo.increaseX(4);
    return Assert.equal(foo.x(), 14, "Value is not correct");
  }
}
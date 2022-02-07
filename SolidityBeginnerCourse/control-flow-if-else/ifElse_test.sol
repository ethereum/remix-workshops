pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./ifElse.sol";

contract MyTest {
  IfElse foo;

  function beforeEach() public {
    foo = new IfElse();
  }
  
  function checkFunction() public {
    Assert.equal(foo.evenCheck(2), true, "Should be true");
    Assert.equal(foo.evenCheck(1), false, "Should be false");
  }
}
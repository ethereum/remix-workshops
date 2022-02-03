pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./viewAndPure.sol";

contract MyTest {
  ViewAndPure foo;

  function beforeEach() public {
    foo = new ViewAndPure();
  }
  
  function checkFunction() public returns (bool) {
    foo.addToX2(4);
    return Assert.equal(foo.x(), 5, "Value is not correct");
  }
}
pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./visibility.sol";

contract MyTest {
  Child foo;

  function beforeEach() public {
    foo = new Child();
  }
  
  function testInternalVar() public {
    (string memory a, string memory b) = foo.testInternalVar();
    Assert.equal(a, "my internal variable", "Value is not correct");
    Assert.equal(b, "my public variable", "Value is not correct");
  }
}
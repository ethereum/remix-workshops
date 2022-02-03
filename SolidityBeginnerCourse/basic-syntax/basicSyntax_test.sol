pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./basicSyntax.sol";

contract MyTest {
  MyContract foo;

  function beforeEach() public {
    foo = new MyContract();
  }
  
  function checkName() public returns (bool) {
    return Assert.equal(foo.name(), string("Alice"), "Value is not correct");
  }
}
pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./enums.sol";

contract MyTest is Enum {
  Enum foo;

  function beforeEach() public {
    foo = new Enum();
  }
  
  function testEnum() public {
    Assert.equal(uint(foo.getSize()), uint(Size.S), "Value is not correct");
  }
}
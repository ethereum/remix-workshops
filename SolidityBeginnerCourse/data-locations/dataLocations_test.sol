pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./dataLocations.sol";

contract MyTest is DataLocations {
  DataLocations foo1;

  function beforeEach() public {
    foo1 = new DataLocations();
  }
  
  function testStucts() public {
    (MyStruct memory a, MyStruct memory b, MyStruct memory c) = foo1.f();
    Assert.equal(a.foo, 4, "Value is not correct");
    Assert.equal(b.foo, 1, "Value is not correct");
    Assert.equal(c.foo, 3, "Value is not correct");
  }
}
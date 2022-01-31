pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./etherAndWei.sol";

contract MyTest {
  EtherUnits foo;

  function beforeEach() public {
    foo = new EtherUnits();
  }
  
  function testGwei() public {
    Assert.equal(foo.oneGwei(), 1e9, "Value is not correct");
  }
  
  function testIsGwei() public {
    Assert.equal(foo.isOneGwei(), true, "Value is not correct");
  }
}
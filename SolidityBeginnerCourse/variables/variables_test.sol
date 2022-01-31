pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./variables.sol";

contract MyTest {
  Variables foo;

  function beforeEach() public {
    foo = new Variables();
  }
  
  function testBlockNumber() public{
    Assert.equal(foo.blockNumber(), 0, "Value is not correct");
    foo.doSomething();
    Assert.equal(foo.blockNumber(), block.number, "Value is not correct");
  }
}
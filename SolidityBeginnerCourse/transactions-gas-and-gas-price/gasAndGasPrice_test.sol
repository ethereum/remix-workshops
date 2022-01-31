pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./gasAndGasPrice.sol";

contract MyTest {
  Gas foo;

  function beforeEach() public {
    foo = new Gas();
  }
  
  function testGwei() public {
    Assert.equal(foo.cost(), 170367, "Value is not correct");
  }
 
}
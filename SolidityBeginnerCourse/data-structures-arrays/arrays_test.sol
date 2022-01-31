pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./arrays.sol";

contract MyTest {
  Array foo;

  function beforeEach() public {
    foo = new Array();
  }
  
  function checkArray() public {
    Assert.equal(foo.arr3(0), 0, "Value of first element should be 0.");
    Assert.equal(foo.arr3(1), 1, "Value of first element should be 1.");
    Assert.equal(foo.arr3(2), 2, "Value of first element should be 2.");
  }
  
  function checkFunction() public {
    Assert.equal(foo.arr3(0), 0, "Value of first element should be 0.");
    Assert.equal(foo.arr3(1), 1, "Value of first element should be 1.");
    Assert.equal(foo.arr3(2), 2, "Value of first element should be 2.");
  }
}
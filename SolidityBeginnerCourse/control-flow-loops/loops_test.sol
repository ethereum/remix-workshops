pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./loops.sol";

contract MyTest {
  Loop foo;

  function beforeEach() public {
    foo = new Loop();
  }
  
  function checkFunction() public {
    Assert.equal(foo.count(), 0, "Count should be initially 0.");
    foo.loop();
    Assert.equal(foo.count(), 9, "Count should be 9 after executing the loop funcion.");
  }
}
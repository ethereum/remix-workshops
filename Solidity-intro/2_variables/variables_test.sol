pragma solidity >=0.4.22 <0.7.0;
import "remix_tests.sol";
import "./variables.sol";

contract MyTest {
  SimpleStorage foo;

  function beforeEach() public {
    foo = new SimpleStorage();
  }

  function initialValueShouldBe3() public returns (bool) {
    return Assert.equal(foo.get(), 3, "initial value is not correct");
  }
}
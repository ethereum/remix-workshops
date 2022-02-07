pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./introduction.sol";

contract MyTest {
  Quiz foo;

  function beforeEach() public {
    foo = new Quiz();
  }
  
  function checkQuestion1() public returns (bool) {
    return Assert.equal(foo.question1(), 2, "Answer to question 1 is not correct");
  }

  function checkQuestion2() public returns (bool) {
    return Assert.equal(foo.question2(), 3, "Answer to question 2 is not correct");
  }

  function checkQuestion3() public returns (bool) {
    return Assert.equal(foo.question3(), 2, "Answer to question 3 is not correct");
  }
}
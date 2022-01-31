pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./primitiveDataTypes.sol";

contract MyTest {
  Primitives foo;

  function beforeEach() public {
    foo = new Primitives();
  }
  
  function checkNewAddr() public returns (bool) {
    return Assert.notEqual(foo.newAddr(), address(0xb180Fc7dB413D965D0E6f8098F37e2df33a4347E), "Same address as in the contract.");
  }

  function checkNeg() public returns (bool) {
    return Assert.lesserThan(foo.neg(), int(0), "This value is not correct.");
  }
  
  function checkNewU() public returns (bool) {
    return Assert.equal(foo.newU(), uint8(0), "This value is not correct.");
  }
}
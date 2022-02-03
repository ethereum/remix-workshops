pragma solidity ^0.8.3;
import "remix_tests.sol";
import "./structs.sol";

contract MyTest {
  Todos foo;

  function beforeEach() public {
    foo = new Todos();
  }
  
  function testTodo() public {
    foo.create("Read");

    (string memory s, bool b) = foo.get(0);
    Assert.equal(s, "Read", "Value is not correct");
    
    foo.remove(0);
    
    try foo.get(0) returns (string memory, bool) {
        Assert.ok(true, 'Execution should fail');
    } catch Error(string memory reason) {
        Assert.ok(false, reason);
    } catch (bytes memory /*lowLevelData*/) {
        Assert.ok(false, 'failed unexpected');
    }
  }
}
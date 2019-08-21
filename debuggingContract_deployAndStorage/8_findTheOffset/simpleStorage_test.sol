pragma solidity >=0.4.0 <0.6.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./simpleStore.sol";

contract test {
    findTheOffset t;
    function beforeAll() public {
      t = new findTheOffset();
    }
    
    function check() public {
      Assert.equal(t.offset(), bytes8(hex"43"), "getNumber should return '10'");
    }
}

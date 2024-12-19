pragma solidity >=0.4.0 <0.6.0;
import "remix_tests.sol"; // this import is automatically injected by Remix.
import "./proxy.sol";

contract test {
    ProxyContract proxy;
    LogicContract logic; 
    function beforeAll() public {
     logic = new LogicContract();
     proxy = new ProxyContract(address(logic));
    }

    function check() public {
      Assert.equal(logic.getNumber(), uint(10), "getNumber should return '10'");
      (bool success, bytes memory data) = address(proxy).call(abi.encodeWithSignature("getNumber()"));
      bytes8 checkReturn = hex"0a";
      bytes8 checkAgainst = data[data.length - 1];
      bool testHex = checkReturn == checkAgainst;
      Assert.equal(checkAgainst, checkReturn, "proxy should also return '10'");
    }
}
pragma solidity ^0.8.3;
import "remix_tests.sol";
import "remix_accounts.sol";
import "./mappings.sol";

contract MyTest {
  Mapping foo;
  address acc0;

  function beforeEach() public {
    foo = new Mapping();
    acc0 = TestsAccounts.getAccount(0);
  }
  
  function checkBalance() public {
    foo.set(acc0);
    Assert.equal(foo.balances(acc0), acc0.balance, "Balance is not correct");
  }
}
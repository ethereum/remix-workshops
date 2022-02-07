pragma solidity ^0.8.3;
import "remix_tests.sol";
import "remix_accounts.sol";
import "./erc20TokenCreation.sol";

contract MyTest is EduCoin {
    address acc0;

    function beforeAll() public {
        acc0 = TestsAccounts.getAccount(0); 
    }

    function checkName() payable public returns (bool) {
        return Assert.equal(name(), string("EduCoin") , "Wrong name");
    }

    function checkSymbol() payable public returns (bool) {
        return Assert.equal(symbol(), string("EDC") , "Wrong symbol");
    }

    function checkBalance() payable public returns (bool) {
        return Assert.equal(balanceOf(acc0), 1000000000000000000000, "Wrong balance");
    }
}
pragma solidity ^0.8.3;
import "remix_tests.sol";
import "remix_accounts.sol";
import "./sendingEther.sol";

contract Mytest is Charity{
    address acc0;
    address acc1;

    function beforeAll() public {
        acc0 = TestsAccounts.getAccount(0); 
        acc1 = TestsAccounts.getAccount(1);
    }
    
    function testInitialOwner() public {
        Assert.equal(owner, acc0, 'owner should be acc0');
    }
    
    /// #value: 1000000000000000000
    /// #sender: account-1
    function testDonate() payable public {
        Assert.equal(msg.value, 1000000000000000000, 'value should be 1 Eth');
        donate();
        Assert.equal(address(this).balance, 1000000000000000000, 'balance should be 1 Eth');
    }
    
    /// #sender: account-0
    function testWithdraw() payable public {
        uint initialBal = acc0.balance;
        withdraw();
        uint finalBal = acc0.balance;
        Assert.equal(finalBal-initialBal, 1000000000000000000, 'balance should be increased by 1 Eth');
    }
}
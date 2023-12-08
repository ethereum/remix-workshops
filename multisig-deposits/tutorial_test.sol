pragma solidity ^0.8.3;
import "remix_tests.sol";
import "remix_accounts.sol";
import "./MultiSigTutorial.sol";

contract MultiSigTutorialTest is MultiSigTutorial {
    address acc0;

    function beforeAll() public {
        acc0 = TestsAccounts.getAccount(0);
    }

    // Test depositing 2 Ether into the Multisig contract
    function checkDeposit(address contractAddress) payable public {
        // Check if the balance is now 2 Ether
        Assert.equal(address(contractAddress).balance, 2 ether, "Deposit failed");
    }
}

pragma solidity ^0.8.3;
import "remix_tests.sol";
import "remix_accounts.sol";
import "./erc721TokenCreation.sol";

contract MyTest is Geometry {
    address acc0;

    function beforeAll() public {
        acc0 = TestsAccounts.getAccount(0); 
    }

    function checkName() payable public returns (bool) {
        return Assert.equal(name(), string("Geometry"), "Wrong name");
    }

    function checkSymbol() payable public returns (bool) {
        return Assert.equal(symbol(), string("GEO"), "Wrong symbol");
    }

    function checkMint() payable public returns (bool) {
        safeMint(acc0,0);
        return Assert.equal(tokenURI(0), string("https://ipfs.io/ipfs/QmSw9o2dDbGSK8BGHB1yYZDCzBfAjKtv5DFebQadJUZb85/0"), "Wrong tokenURI");
    }
}
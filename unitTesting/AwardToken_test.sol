pragma solidity ^0.4.24;
import "remix_tests.sol";
import "./AwardToken.sol";

contract AwardTokenTest {
    AwardToken awtkn;

    function beforeAll() {
        awtkn = new AwardToken();
    }

    function addressShouldNotBe_0x0() public constant returns (bool) {
        address zro = 0x0000000000000000000000000000000000000000;
        return Assert.notEqual(address(awtkn), zro, "address should not be 0");
    }

    function totalSupplyShouldBe_0() public constant returns (bool) {
        return Assert.equal(awtkn.totalSupply(), 0, "total supply should be 0");
    }

    function startRoundShouldReturn_true() public constant returns (bool) {
        return Assert.equal(awtkn.startRound(), true, "startRound return is false");
    }

    function ownerShouldBeTester() public constant returns (bool) {
        address tester = this;
        return Assert.equal(awtkn.owner(), tester, "owner should be tester");
    }
}

contract AwardTokenBalanceTest {
    AwardToken awtkn;
    address to = 0xe60667640C07E654E37b7082aE4E629cb0a7605f;

    function beforeAll() {
        awtkn = new AwardToken();
        address(awtkn).call.gas(80000).value(0)(bytes4(sha3("mint(address,uint256)")), to, 100);
    }

    function balanceShouldBeGreaterThan_0() public constant returns (bool) {
        return Assert.greaterThan(uint256(awtkn.balanceOf(to)), uint256(0), "balance should be greater than 0");
    }
}

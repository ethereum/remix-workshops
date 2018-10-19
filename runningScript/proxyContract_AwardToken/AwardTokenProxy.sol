import "./AwardToken.sol";

/*
BallotMaster : 0xdc04977a2078c8ffdf086d618d1f961b6c546222
AwardTokenMaster : 0xef55bfac4228981e850936aaf042951f7b146e41
*/
contract AwardTokenProxy is AwardTokenData {
    address internal proxied;
    constructor(address _proxied, address _ballotMaster) public {
        proxied = _proxied;
        ballotMaster = _ballotMaster;
    }
    
    function () public payable {
        address addr = proxied;
        assembly {
            let freememstart := mload(0x40)
            calldatacopy(freememstart, 0, calldatasize())
            let success := delegatecall(not(0), addr, freememstart, calldatasize(), freememstart, 32)
            switch success
            case 0 { revert(freememstart, 32) }
            default { return(freememstart, 32) }
        }
    }
}

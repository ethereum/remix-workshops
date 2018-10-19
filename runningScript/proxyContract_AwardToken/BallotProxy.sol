import "./Ballot.sol";

contract BallotProxy is BallotData {
    address internal proxied;
    constructor(address _proxied, uint duration) public {
        proxied = _proxied;
        chairperson = msg.sender;
        _duration = duration;
        _startTime = now;
        _finishEarly = false;
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

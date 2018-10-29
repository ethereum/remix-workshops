import "./Kombucha.sol";

contract KombuchaProxy is KombuchaData {
    address internal proxied;
    constructor(address _proxied, string _flavor, uint _fillAmount, uint _capacity) public {
        proxied = _proxied;
        
        require(_fillAmount <= _capacity && _capacity > 0);
        flavor = _flavor;
        fillAmount = _fillAmount;
        capacity = _capacity;
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

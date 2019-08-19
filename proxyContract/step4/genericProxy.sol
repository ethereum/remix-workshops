contract GenericProxy  {
    address internal proxied;
    constructor(address _proxied) public {
        proxied = _proxied;
    }
    
    function () external payable {
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

contract Tutorials {
    
    function register() public {
        require(tutorsMap[msg.sender].tutorAddress == address(0), 'already added');
        
        Tutor memory newTutor;
        newTutor.tutorAddress = msg.sender;
        newTutor.index = tutors.length;
        tutors.push(msg.sender);
        tutorsMap[msg.sender] = newTutor;
        tutorsCount++;
    }

    function unregister() public {
        require(tutorsMap[msg.sender].tutorAddress != address(0), 'unknown address');
        
        delete tutors[tutorsMap[msg.sender].index];
        delete tutorsMap[msg.sender];
        tutorsCount--;
    }
    
    function getTutors () view public returns (address[] memory) {
        return tutors;
    }
    
    function getSanitizedTutors () view public returns (address[] memory) {
        address[] memory result = new address[](tutorsCount);
        uint index = 0;
        for (uint k = 0; k < tutors.length; k++) {
            if (tutors[k] != address(0)) {
                result[index] = tutors[k];
                index++;
            }
        }
        return result;
    }
}

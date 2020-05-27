pragma solidity >=0.4.0 <0.7.0;

contract SimpleStorage {
    uint storedData;
}

pragma solidity >=0.4.0 <0.7.0;

contract SimpleStorage {
    uint storedData;
    
    // a public function named set that returns a uint goes here
    function set(uint _p1) public returns (uint) {
        storedData = _p1;
    }
    
   function get() public view returns (uint) {
        return storedData;
    }
}
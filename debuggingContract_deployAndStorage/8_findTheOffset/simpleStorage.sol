contract simpleStore {
    constructor (uint[2] memory _o) public {}
}

contract findTheOffset {
    function offset () public returns (bytes8) {
        return bytes8(hex"43");
    }
}
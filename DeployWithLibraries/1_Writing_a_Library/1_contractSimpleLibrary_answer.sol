pragma solidity >=0.4.22 <0.6.0;

contract test {
    function get () public returns(uint) {
        // should call a library method which returns `3`
        return LibraryForTest.getFromLib();    
    }
}

library LibraryForTest {
    function getFromLib() public returns(uint) {
        return 3;
    }
}
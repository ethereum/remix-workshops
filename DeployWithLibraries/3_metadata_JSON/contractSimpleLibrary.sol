pragma solidity >=0.4.22 <0.6.0;

library lib1 {
    function doGenericStuff() public {
    }
}

contract sample {
    function get () public {
        lib1.doGenericStuff();
    }
}

pragma solidity >=0.4.22 <0.6.0;

contract sampleContract {
    function get () public {
        aLib.doStuff();
    }
}

library aLib {
    function doStuff() public {
    }
}

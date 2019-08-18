library lib1 {
    function doGenericStuff() public {
    }
}

contract sample {
    function get () public {
        lib1.doGenericStuff();
    }
}

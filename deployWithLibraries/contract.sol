library lib1 {
    function doGenericStuff() {
        
    }
}

contract test {
    function get () {
        lib1.doGenericStuff();
    }
}

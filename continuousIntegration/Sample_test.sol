pragma solidity ^0.4.0;
import "./sample.sol";

contract test {
    Sample sample;
    function beforeAll () {
        sample = new Sample();
    }
    function testReturnsValue () {
        Assert.equal(uint(57), uint(sample.get()), "return value of 'get' is not 56");
    }
}

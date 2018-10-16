pragma solidity ^0.4.23;

contract KombuchaData {
    event FilledKombucha(uint amountAdded, uint newFillAmount);
    event DrankKombucha(uint amountDrank, uint newFillAmount);
    uint public fillAmount;
    uint public capacity;
    string public flavor;
}

contract Kombucha is KombuchaData {
    
    constructor(string _flavor, uint _fillAmount, uint _capacity)
        public
    {
        require(_fillAmount <= _capacity && _capacity > 0);
        flavor = _flavor;
        fillAmount = _fillAmount;
        capacity = _capacity;
    }
    function fill(uint amountToAdd) public {
        uint newAmount = fillAmount + amountToAdd;
        require(newAmount > fillAmount && newAmount <= capacity);
        fillAmount = newAmount;
        emit FilledKombucha(amountToAdd, newAmount);
    }
    function drink(uint amountToDrink) public returns (bytes32) {
        uint newAmount = fillAmount - amountToDrink;
        require(newAmount < fillAmount);
        fillAmount = newAmount;
        emit DrankKombucha(amountToDrink, newAmount);
        // this mess of hashes just here to pad out the bytecode
        return keccak256(keccak256(keccak256(keccak256(keccak256(
            keccak256(keccak256(keccak256(keccak256(keccak256(
            keccak256(keccak256(keccak256(keccak256(keccak256(
            keccak256(keccak256(keccak256(keccak256(keccak256(
            keccak256(keccak256(keccak256(keccak256(keccak256(
            keccak256(keccak256(keccak256(keccak256(keccak256(
            keccak256(keccak256(keccak256(keccak256(keccak256(
            keccak256(keccak256(keccak256(keccak256(keccak256(
            keccak256(keccak256(keccak256(keccak256(keccak256(
            keccak256(keccak256(keccak256(keccak256(keccak256(
                amountToDrink
            ))))))))))))))))))))))))))))))))))))))))))))))))));
    }
}

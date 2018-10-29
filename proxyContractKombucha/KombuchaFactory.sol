import "./KombuchaProxy.sol";

contract KombuchaFactory {
    Kombucha private masterCopy;
    constructor(Kombucha _masterCopy) public {
        masterCopy = _masterCopy;
    }
    function createKombucha(string flavor, uint fillAmount, uint capacity)
        public
        returns (Kombucha)
    {
        return Kombucha(new KombuchaProxy(masterCopy, flavor, fillAmount, capacity));
    }
}
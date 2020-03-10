import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract CustomERC20 is ERC20 {
    event feeGenerated(uint);
    address baseAddress;
    uint rate;
    constructor () public {
        baseAddress = msg.sender;
        rate = 5; // 5/100 
        _mint(msg.sender, 10000000);
    }
    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        uint fee = (amount * rate) / 100;
        _transfer(_msgSender(), baseAddress, fee); // send fee
        emit feeGenerated(fee);
        super.transfer(recipient, amount);
        return true;
    }
}
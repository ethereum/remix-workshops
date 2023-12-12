// introduction.sol

// Multisig Wallet Contract
contract MultisigWallet {
    address[] public owners;
    uint public numConfirmationsRequired;

    struct Transaction {
        address to;
        uint value;
        bytes data;
        bool executed;
        uint numConfirmations;
    }

    mapping(uint => Transaction) public transactions;
    mapping(address => mapping(uint => bool)) public confirmations;

    event Deposit(address indexed sender, uint value, uint balance);
    event SubmitTransaction(address indexed owner, uint indexed transactionId, address to, uint value, bytes data);
    event ConfirmTransaction(address indexed owner, uint indexed transactionId);
    event ExecuteTransaction(address indexed owner, uint indexed transactionId);

    modifier onlyOwner() {
        require(isOwner(msg.sender), "Not an owner");
        _;
    }

    modifier txExists(uint transactionId) {
        require(transactions[transactionId].to != address(0), "Transaction does not exist");
        _;
    }

    modifier notExecuted(uint transactionId) {
        require(!transactions[transactionId].executed, "Transaction already executed");
        _;
    }

    modifier notConfirmed(uint transactionId) {
        require(!confirmations[msg.sender][transactionId], "Transaction already confirmed");
        _;
    }

    constructor(address[] memory _owners, uint _numConfirmationsRequired) {
        require(_owners.length > 0, "Owners required");
        require(_numConfirmationsRequired > 0 && _numConfirmationsRequired <= _owners.length, "Invalid number of confirmations");

        owners = _owners;
        numConfirmationsRequired = _numConfirmationsRequired;
    }

    receive() external payable {
        emit Deposit(msg.sender, msg.value, address(this).balance);
    }

    function isOwner(address owner) public view returns (bool) {
        for (uint i = 0; i < owners.length; i++) {
            if (owners[i] == owner) {
                return true;
            }
        }
        return false;
    }

    function submitTransaction(address to, uint value, bytes memory data) public onlyOwner {
        uint transactionId = transactions.length;

        transactions[transactionId] = Transaction({
            to: to,
            value: value,
            data: data,
            executed: false,
            numConfirmations: 0
        });

        emit SubmitTransaction(msg.sender, transactionId, to, value, data);
    }

    function confirmTransaction(uint transactionId) public onlyOwner txExists(transactionId) notExecuted(transactionId) notConfirmed(transactionId) {
        transactions[transactionId].numConfirmations++;
        confirmations[msg.sender][transactionId] = true;

        emit ConfirmTransaction(msg.sender, transactionId);
    }

    function executeTransaction(uint transactionId) public onlyOwner txExists(transactionId) notExecuted(transactionId) {
        if (transactions[transactionId].numConfirmations == numConfirmationsRequired) {
            transactions[transactionId].executed = true;
            (bool success, ) = transactions[transactionId].to.call{value: transactions[transactionId].value}(transactions[transactionId].data);

            if (success) {
                emit ExecuteTransaction(msg.sender, transactionId);
            } else {
                transactions[transactionId].executed = false;
            }
        }
    }
}

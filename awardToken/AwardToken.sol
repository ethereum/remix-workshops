pragma solidity ^0.4.0;

import "./ERC20Mintable.sol";
import "./Ballot.sol";

contract AwardToken is ERC20Mintable {
    uint quantity;
    uint ballotPeriod = 7 hours;
    Ballot public currBallot;
    address[] public prevWinners;
    event log (string _msg);
    event winLog (address _win);
    event newBallot (address _addr);
    
    function AwardToken () {
        quantity = 100;
    }
    
    function getPreviousWinners() constant returns (address[]) {
      return prevWinners;
    }
    
    // either a name change or it works fine without it
    // function approve(address spender, uint256 value) public returns (bool);
    function startRound() onlyMinter public returns (bool) {
        // if this is the first minting then we should let this go immediately
        if (address(currBallot) == 0x0) {
            currBallot = new Ballot(ballotPeriod);
            newBallot(currBallot);
        } else {
            return false;
        }
    }
    
    function closeRoundEarly () onlyMinter {
        if (address(currBallot) != 0x0 && !currBallot.timeOut()) {
          currBallot.finish();
        } else revert();
    }
    
    function closeRound() onlyMinter {
        //  this can only be done by the owner of the contract
        
        if (address(currBallot) != 0x0 && currBallot.timeOut()) {
            // get winner
            address winner = currBallot.winningProposal();
            winLog(winner);
            // send to winner - but first make sure the address is valid
            if ( winner == 0x0){
                log("no winner");
            } else {
                winLog(winner);
                super.mint(winner, quantity);
                prevWinners.push(winner);
            }
            delete currBallot;
            // start new round
        }else revert();
    }
    
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
        revert();
    }
    
    function approve(address _spender, uint256 _value) public returns (bool) {
        revert();
    }
    
    function increaseApproval(address _spender, uint _addedValue) public returns (bool) {
        revert();
    }
    
    function decreaseApproval(address _spender, uint _subtractedValue) public returns (bool) {
        revert();
    }
    
    function transfer(address _to, uint256 _value) public returns (bool) {
        revert();
    }
    
}
pragma solidity ^0.4.0;

contract BallotData {
    uint _duration;
    uint _startTime;
    bool _finishEarly;
    struct Proposal {
        string description;
        string title;
        uint voteCount;
        address targetAddress;
    }
    event log (string _msg);

    address chairperson;
    mapping(address => mapping (address => uint8)) voters; // map between proposal and voter and votes
    mapping(address => Proposal) public proposals;
    address[] public proposalsSender;
}

contract Ballot is BallotData {
    
    function getProposals() constant returns (address[]) {
      return proposalsSender;
    }

    /// Create a new ballot with $(_numProposals) different proposals.
    function Ballot(uint duration) public {
        chairperson = msg.sender;
        _duration = duration;
        _startTime = now;
        _finishEarly = false;
    }
    
    // duration issues...
    // add a new proposals
    function addProposal(string desc, string title, address targetAddr) public {
        if (timeOut() || targetAddr == 0x0 || proposals[msg.sender].targetAddress != 0x0){
            revert();
        }
        proposals[msg.sender].description  = desc;
        proposals[msg.sender].title  = title;
        proposals[msg.sender].voteCount  = 0;
        proposals[msg.sender].targetAddress  = targetAddr;
        proposalsSender.push(msg.sender);
    }

    /// Give a single vote to proposal $(toProposal).
    function vote(address proposal) public {
        // is this msg.sender in vote - the voter the proposal or the owner of the contract?
        // apparantly you can't vote more than once
        uint8 vote = voters[proposal][msg.sender];
        // the revert - takes it back to the initial state - but that blows away everyting - I suppose...
        // check on revert();
        if (timeOut()) revert();
        if (vote != 0) {
            revert(); // already voted for this proposal
        } else {
            voters[proposal][msg.sender] = 1;
            proposals[proposal].voteCount += 1;
        }
    }

    function finish() {
        if (chairperson == msg.sender) _startTime = now - _duration;
        else revert();
    }
    // timeOut vs duration in voteCount
    // for use in vote(), addProposal(), 
    function timeOut() public constant returns ( bool timeOver) {
        if (_startTime + _duration > now){
            timeOver = false;
        }else timeOver = true;
    }
    
    function winningProposal() public constant returns (address currLeader) {
        // does this need to be run only by the contract owner?  Currently I think it is not limited
        uint vote = 0;
        if (timeOut()){
            // timeOut - mean that at least the _duration  is over
            // what if there is tie?
            if(proposalsSender.length > 0) {
                for (uint8 k = 0; k < proposalsSender.length; k++) {
                    Proposal proposal = proposals[proposalsSender[k]];
                    if (vote < proposal.voteCount) {
                        vote = proposal.voteCount;
                        currLeader = proposal.targetAddress;
                    }
                }
                if (vote > 0) {
                    return currLeader;
                }else{
                    log("aint no voters!");
                }
            }else{
                log("aint no proposals!");
            }
        }
    }
}
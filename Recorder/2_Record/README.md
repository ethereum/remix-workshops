# Setting up a tedious series of steps

## Following this could get tedious but that's the point.
We are going to:
- Deploy a voting contract where there are 3 proposals input in the constructor.  
- Give voting privileges to 2 additional address (so we have a total of 3 voting addresses).
- Have one address vote for the 2rd proposal and the other two vote for the 3rd.

1. Take the 3_Ballot.sol from the sample solidity files and compile it.  Then go to the **Deploy & Run** Module.

2. Select the **JavaScript VM** Environment.

3. In the constructor's parameter - put in **["0x5031000000000000000000000000000000000000000000000000000000000000", "0x5032000000000000000000000000000000000000000000000000000000000000", "0x5033000000000000000000000000000000000000000000000000000000000000"]** Then click the **Deploy** button.

4. Open up the deployed contract.  

5. In the **vote** function put in 2.  This means that you as the msg.sender & chairperson are voting for proposal #3 (2 is position 3rd element in the array).

6. Now you need to give other addresses the right to vote.  Select another address in the **account** pulldown and copy it and then **go back to the 1st address**.  Paste the copy address into the textbox next to the giveRightToVote function.  And again, select another address and copy it and **then go back to the 1st address** again and paste it into giveRightToVote.

7. Now you have 3 addresses with the right to vote.

8. Switch to one of the addresses that you gave the right to vote and vote for proposal 2.  (Put **1** in the textbox next to the vote function).  And then switch to the other address and vote for proposal 3 with that one.

9. Open up the **Transactions recorded** section of the module - by clicking on the caret. Click the hard disk icon in the **Transactions recorded** section to save your steps.
![recorder](https://github.com/ethereum/remix-workshops/blob/master/Recorder/2_Record/images/recorder.png?raw=true "recorder")

10. You will get a modal window that tells you it wants to save a file called **scenario.json**.  Click OK.

11. Click on the function **winningProposal** to confirm that the final proposal won - which is the proposal at position #2 in the array. **0: uint256: winningProposal_ 2**

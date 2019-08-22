# Setting up a tedious series of steps

## Following this could get tedious but that's the point.

1. Take the ballot.sol and compile it and go to the **Deploy & Run** Module.

2. Select the JSVM Environment.

3. In the constructor's parameter - put in 4 & click the **Deploy** button.

4. Open up the deployed contract.  

5. In the **vote** function put in 1.  This means that you as the msg.sender & chairperson have voted for proposal #1.

6. Now we need to give other addresses the right to vote.  Select another address and copy it and then **go back to the 1st address**.  Paste the copy address into the textbox next to the giveRightToVote funciton.  And select another address and copy it and **then go back to the 1st address** again and paste it into giveRightToVote.

7. Now you have 3 addresses with the right to vote.

8. Switch to one of the addresses that you gave the right to vote and vote for proposal 3.  (Put **3** in the textbox next to the vote function).  And then switch the other address and vote for proposal 3.

9. Open up the **Transactions recorded** section of the module - by clicking on the caret. Click the hard disk icon in the **Transactions recorded** section to save your steps.
![recorder](https://github.com/ethereum/remix-workshops/blob/master/recorder/1_setup/images/recorder.png?raw=true "recorder")

10. You will get a modal window that tells you it wants to save a file called **scenario.json**.  Click OK.

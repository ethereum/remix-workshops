# Recorder Workshop

## The recorder is a furtively useful trick in Remix.

The recorder is used for recording all the transactions in the Deploy & Run module and then playing them back in another context.  It really is the remix of Remix!

Scenarios for the recorder:

1. You want to show someone what happens when you do a number of transactions with a contract and you don't want to explain each step - you want to get them to the last step.

    - this can be useful to show someone a problem in their code.

    - this can be useful in a class, where you want to get the students to a certain place and have them start working there.

2. You want to start you development in the JSVM because it is quick and then you want to switch to another testnet using Injected Web3 - but you don't want to have to repeat all the tedious clicking for each different testnet.
    
    - you can take edit the file that the recoder plays - so, for example that you are not stuck with the addresses that the JSVM used when you are running the same functions on Rinkeby.  You can change the accounts or change the input parameters that are used.
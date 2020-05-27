# Retrieve a variable

Let's review the getter function from the previous step:

```
   function get() public view returns (uint) {
        return storedData;
    }
```

Note the use of the `view` modifier.  This promises that the function will not modify the state.  See more about **view** and **pure** functions <a href="https://solidity.readthedocs.io/en/latest/contracts.html?highlight=pure#functions" target="_blank"> here</a>.  

Because they don't modify the state,  view and pure functions do not have a gas cost - which is to say they are FREE!

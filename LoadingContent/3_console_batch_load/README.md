# Using the console to import one file and multiple files.
 
1. From the console paste in this command:

```remix.loadurl('https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/access/roles/MinterRole.sol')```

2. As you can see (if you get it to load), a single file has been brought into a **github** file explorer.

3. But if you have a lot of files to import - doing this one at a time can be tedious.  So we can batch load files.

4. But first refresh the page.

4. Try loading this gist: 

```https://gist.github.com/ryestew/1d3250ca532b5f1e3ed4f52b18feb602```

5. You'll need to grab the ID and put it in the remix command remix.loadgist(id) and also wrap the ID in quotes.

6. Go to the dependancies.js in the gist explorer.

7. Make sure it is the active file in the tabs.

8. In the console type: **remix.exeCurrent()**

9. Navigate to the gist explorer and you'll see that you've just imported these files. 



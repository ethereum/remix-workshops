# Using the console to import a gist.
 
1. In the console, type: 

```remix.loadgist('21cad99396f8c78ecf229834f1b6eaeb')``` 

2. In the **Files Explorers** module, you'll see a file explorer for gist.

3. By the way... the command you put in above **remix.loadgist(id)** is a remix command.  There is autocomplete so you can find other commands and so you don't need to memorize them.  Or just take a look at the [readthedocs page on remix commands.](https://remix-ide.readthedocs.io/en/latest/remix_commands.html)

4. If you are working on the ballot.sol file that is in the browser file explorer and you want to import the AwardToken from the gist file explorer, you would use an import statement like this:

```import gist/AwardToken.sol ```

4. If you refresh the page, the files you loaded will disappear.

5. Refresh your page.

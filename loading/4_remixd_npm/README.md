# Remix, your local filesystem and npm

## Jumping the browser filesystem barrier
 
### The problem

For security purposes, web browsers don't have direct access to your filesystem.  But with remix, you'd often want to access files on your local system so that when you refresh the page, the files don't disappear.  Also if you are importing npm files, you need access to files on your local filesystem.

### The solution is remixd
1. To safely jump the barriers between the browser and the filesystem, you need to set up a folder on your computer where you will tell remix to access files. 

So create the folder now and in a terminal init npm in that folder by running `npm init`.

2. Install remixd:

remixd can be globally installed using the following command: `npm install -g remixd`

Or just install it in the directory you just created by removing the -g flag: `npm install remixd`

3. Then from the terminal, the command remixd -s <absolute-path-to-the-shared-folder> --remix-ide <your-remix-ide-URL-instance> will start remixd and will share the given folder with remix-ide.

For example, to use remixd with the alpha version of Remix IDE use this command: 
```remixd -s <absolute-path-to-the-shared-folder> --remix-ide https://remix-alpha.ethereum.org```

In the command above - we are using https. If you browser is on http:// remix will not work.

4. In the Plugin Manager, activate **remixd**.

5. You'll see the modal asking you if you want to connect.

6. Once you click OK, and all is running correctly, in the **Files Explorers** - you'll see a file explorer for **localhost**

7. Now you can load file with npm into remix.


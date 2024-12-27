## デプロイ済みコントラクトの関数にアクセスする

1. コントラクトのデプロイに成功すると、Deploy and Run プラグインの下部にボタンが現れます。 キャレットをクリックするとキャレットが下向きになりコントラクトが開きます。
   ![deploy contract](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/instance.png "deployed contract")

2. このコントラクトには、2つの関数があります。  パラメータを個別に入力するには、changeOwnerの右にあるキャレット(赤枠で示された部分)をクリックしてください。 展開されたビューの各パラメータに、それぞれ入力ボックスがあります。

![deploy contract](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/deployed_open2.png "deployed contract")

このコントラクトが他のコントラクトをインポートしている場合は、インポートされたコントラクトの関数もここに表示されます。  お時間があれば、ERC20コントラクトで多数の関数が表示されるので試してみて下さい。

3. 青いボタンの関数は、 **pure** または **view** 関数です。  This means that they are just reading a property or are returning a value.  In other words, they aren't saving anything - so they are FREE (they don’t cost gas).  Functions with other colors - usually orange (depending on the Remix theme) cost gas because they are saving information.  They are creating a **transaction**.

4. 2_Owner.sol does not have a **payable** function.  If it did, the button's color would be red.  Payable functions allow you to send Ether to the function.  To send ETH with a payable function, you put the amount you want to send in the **value** field towards the top of the Deploy & Run module.

5. In the Remix VM, you don't need to approve a transaction.  When using a more realistic test environment or when using the mainnet - you will need to approve the transactions for them to go through. Approving a transaction costs gas.

6. Choosing a public network is not done in Remix but in your Browser Wallet.  There is a plug icon to the right of the Environment title that links to chainlist.org where you can get the specs of the chain you want to interact with.
   ![chainlist](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/interacting/images/chainlist.png "chainlist")

このセクションでは、ブラウザでコントラクトをデプロイして、その機能のテストを行います。

### 1. コントラクトのデプロイ

**1.1** Remix IDEの「Solidity compiler」モジュールで、EduCoinコントラクトをコンパイルします。

**1.2** 「Deploy & run transactions」モジュールで、コントラクトの入力フィールドで「EduCoin」コントラクトを選択して、「Deploy」ボタンをクリックします。 コントラクト選択入力フィールドで、適切なコントラクトが選択されているか必ず確認してください。

**GIF** コンパイルとデプロイ: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_compileAndDeploy.gif?raw=true" alt="Compile and deploy contract" width="300"/>

### 2. 関数のテスト

IDEでトークンコントラクト関数を開きます。

#### 2.1 Decimals

「decimals」ボタンをクリックしてdecimals()関数を呼び出します。
「18」が返ってくる必要があります。

#### 2.2 Name

「name」ボタンをクリックしてname()関数を呼び出します。
「EduCoin」が返ってくる必要があります。

#### 2.3 Symbol

「symbol」ボタンをクリックしてsymbol()関数を呼び出します。
「EDC」が返ってくる必要があります。

#### 2.4 総供給量(Total supply)

「totalSupply」ボタンをクリックしてtotalSupply()関数を呼び出します。
1000000000000000000000 (1000\*10\*\*18)が返ってくる必要があります。

**GIF** decimals関数、name関数、symbol関数、totalSupply関数のテスト: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_test_functions.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.5 Balance of

**2.5.1** サイドバーにある「ACCOUNT」セクションへ行き、隣にあるコピーアイコンを使用して表示されているアドレスをコピーします。

**2.5.2** 「balanceOf」関数ボタンの隣にある入力フィールドにアドレスをペーストして、ボタンをクリックします。
1000000000000000000000 (1000\*10\*\*18)が返ってくる必要があります。

**GIF** balanceOf関数のテスト: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_balanceOf.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.6 Transfer

あるアカウントから別のアカウントへEduCoinを送ります。

**2.6.1** サイドバーにある「ACCOUNT」セクションへ行き、表示されているアドレスをクリックします。 ドロップダウンが開きます。 表示されている2つ目のアドレスを選択して、そのアドレス(account 2)をコピーします。

**2.6.2** ドロップダウンを開き、最初のアカウント(account 1)を再度選びます。このアカウントを送信を行うのに使うためです。

**2.6.3** 上記のアドレスを「tarnsfer」関数ボタンの隣ににある入力フィールドにペーストし、500000000000000000000を入力して、ボタンをクリックします。

**2.6.4** account 1とaccount2のバランスを確認すると、両方とも金額で500000000000000000000を返します。

**GIF** transfer関数のテスト: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_transfer.gif?raw=true" alt="Test transfer function" width="300"/>

#### 2.7 Approve

We will now allow account 1 to spend tokens on behalf of account 2.

**2.7.1** Go to the "Account" section, copy the address of account 1, then set it to account 2 again.

**2.7.2** In the approve function, enter the address of account 1 as the input for spender and set the amount to 250000000000000000000.

**GIF** Test approve function: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_approve.gif?raw=true" alt="Test approve function" width="300"/>

#### 2.8 Allowance

Next to the "allowance" button enter the address of account 2 as the owner and account 1 as the spender; click on the button.
It should return 1000000000000000000000.

**GIF** Test allowance function: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_allowance.gif?raw=true" alt="Test allowance function" width="300"/>

#### 2.9 TransferFrom

Now account 1 will transfer 250000000000000000000 tokens from account 2 to its own account.

**2.9.1** Select account 1 in the "ACCOUNT" section.

**2.9.2** Next to the "transferFrom" button enter the address of account 2 as the sender and account 1 as the recipient, enter 250000000000000000000 as the amount and click on the button.

**2.9.3** Check the balances of accounts 2 and 1, they should return 250000000000000000000 and 750000000000000000000.

**GIF** Test transferFrom function: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_transferFrom.gif?raw=true" alt="Test transferFrom function" width="300"/>

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

これから、account 2の代わりにaccount 1がトークンを消費できるように許可します。

**2.7.1** 「Account」セクションへ行き、account 1のアドレスをコピーし、再びaccount 2に設定します。

**2.7.2** approve関数で、spenderの入力値としてaccount 1のアドレスを入力し、金額を250000000000000000000を設定します。

**GIF** approve関数のテスト: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_approve.gif?raw=true" alt="Test approve function" width="300"/>

#### 2.8 Allowance

「allowance」ボタンの隣で、account 2のアドレスをowner、account 1をspenderとして入力します。そしてボタンをクリックします。
「1000000000000000000000」が返ってくる必要があります。

**GIF** allowance関数のテスト: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_allowance.gif?raw=true" alt="Test allowance function" width="300"/>

#### 2.9 TransferFrom

次では、account 1が 250000000000000000000トークンをaccount 2から自身のアカウントに送信します。

**2.9.1** 「ACCOUNT」セクションでaccount 1を選択します。

**2.9.2** 「transferFrom」ボタンの隣で、account 2のアドレスをsender、account 1をrecipientとして入力し、金額(amount)として250000000000000000000を入力します。次にボタンをクリックします。

**2.9.3** account 2とaccount 1の残高を確認します。「250000000000000000000」と「750000000000000000000」が返ってくる必要があります。

**GIF** transferFrom関数のテスト: <img src="https://github.com/dacadeorg/remixMedia/blob/main/token-course/erc20/erc20_transferFrom.gif?raw=true" alt="Test transferFrom function" width="300"/>

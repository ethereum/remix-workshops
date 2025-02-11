このセクションでは、ERC-20トークンとやり取りする標準である`IERC20`インターフェース、ラップドイーサ(WETH)とやり取りする標準インターフェースである`IWETH`を探索します。 Uniswap V3スワップコントラクトでトークンの送信やトークンの承認を処理するため、これらのインターフェースを理解するとが非常に重要です。

初心者向けの「Solidity ERC20トークンコース」がLearnEthにあります。そこでERC20トークン標準に関する詳細を理解することができます。

## IERC20インターフェース

80行目で、 `IERC20`インターフェースを定義しています。 このインターフェースは、ERC-20トークンが実装しなければならない関数の標準セットを定義します。 インターフェース内にある主要な関数を見ていきましょう。

### 1. totalSupply

81行目では、`totalSupply`関数を定義しています。 この関数は、トークンの総供給量を返します。

### 2. balanceOf

83行目では、`balanceOf`関数を定義しています。 この関数は、特定のアドレスの残高を返します。

### 3. transfer

85行目では、`transfer`関数を定義しています。 この関数は、送信者から特定の受信者にトークンを送信します。

### 4. allowance

87行目では、`allowance`関数を定義しています。 この関数は、所有者の代わりに消費できる消費者(spender)のトークン量を返します。

### 5. approve

89行目では、`approve`関数を定義しています。 これを呼び出すことにより、送信者の代わりに特定のトークン量を消費できる消費者(spender)を承認します。

### 6. transferFrom

On line 91, we define the `transferFrom` function. This function transfers tokens from the specified sender to the recipient. The function can only be called by the spender if the spender is allowed to spend the specified amount of tokens on behalf of the sender.

### 7. Events

On lines 102-103, we define the `Transfer` and `Approval` events. These events are emitted when the `transfer` and `approve` functions are called, respectively.

## IWETHインターフェース

On line 106, we define the `IWETH` interface. This interface extends the `IERC20` interface and defines two additional functions:

### 1. deposit

On line 107, we define the `deposit` function. This function deposits ETH into the contract and returns the equivalent amount of WETH. This function is used to wrap ETH into WETH.
We need to wrap ETH into WETH because the Uniswap V3 Swap contract only supports ERC-20 tokens.

### 2. withdraw

On line 109, we define the `withdraw` function. This function withdraws the specified amount of WETH from the contract and returns the equivalent amount of ETH. This function is used to unwrap WETH into ETH.

## まとめ

このチュートリアルでは、Uniswap V3スワップコントラクトについて解説しました。  Uniswapの動作を完全に理解するために、<a href="https://app.uniswap.org/" target="_blank">Uniswap DApp</a>でスワップを試しながら、<a href="https://docs.uniswap.org/" target="_blank">Uniswapドキュメント</a>を読みましょう。

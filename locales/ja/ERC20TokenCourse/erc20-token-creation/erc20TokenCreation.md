トークン標準は、コントラクトが標準に準拠する必要がある機能を規定しています。 この機能の実装は、デベロッパーに委ねられています。 このコントラクトでは、OpenZeppelinのERC20トークンコントラクト実装(4行目)を使用します。 このケースでは、OpenZeppelinコントラクトのバージョン4.4.0をインポートしています。

実装の方法をより理解するには、<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol" target="_blank">ERC20コントラクト</a>にドキュメントが良く書かれているのでご覧ください。 ERC20標準で規定されている機能とは別に、このコントラクトでは追加の機能も提供します。

MyToken(6行目)という独自のコントラクトを作成し、インポートされたOpenZepplin ERC20トークンコントラクト実装(4行目)から機能を継承します。

このコントラクトは、ERC20コントラクト標準のオプション関数である`name()`と`symbol()`を実装し、コントラクトのデプロイ時に値を設定するコンストラクタがあります(7行目)。
このケースにおいては、デフォルト値を使用します。 We will call our token the same as the contract `"MyToken"` and make `"MTK"` its symbol.

Next, we make use of the inherited `_mint` function (line 8) that allows us to create tokens upon deployment of the contract. Inside the parameters, we specify the address of the account that receives the tokens and the amount of tokens that are created.
In this case, the account that deploys the contract will receive the tokens and we set the amount to 1000000 to the power of `decimals()`. The optional function `decimals()` of the ERC20 token standard is implemented and set to the default value of 18. This will create 1000000 tokens that will have 18 decimal places.

## ⭐️ 演習

1. コントラクトの名前を`EduCoin`に変更してください。
2. トークンの名前を`EduCoin`に変更してください。
3. トークンのシンボルを`EDC`に変更してください。
4. トークンがミントされる量を1000000から1000に変更してください。

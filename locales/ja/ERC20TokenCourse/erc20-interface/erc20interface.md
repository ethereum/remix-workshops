ERC20(イーサリアム・リクエスト・フォー・コメント20)は、トークンコントラクトの標準で、イーサリアムブロックチェーンで代替トークンを管理します。

代替トークンは、相互に同じ価値、動作、権利を持っています。 代替トークンは、通貨であるETHやBTCのように取引の媒介として使われます。 また一方で、投票権やレピュテーションでの使用など他のユースケースもあります。

ERC20トークン標準について詳しく知りたい場合は、<a href="https://eips.ethereum.org/EIPS/eip-20" target="_blank">イーサリアム改善提案</a>の仕様をご覧ください。

## インターフェース

ERC20トークンコントラクトの機能で必要とされる概要をつかむために、ERC20コントラクトとやり取りするインターフェースを見ていきます。
このインターフェース(9行目)は、<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.4.0/contracts/token/ERC20/IERC20.sol" target="_blank">OpenZeppelin</a>によって提供されているオープンソース・コントラクト・ライブラリです。

## ERC20関数

ERC20標準に準拠したコントラクトになるには、次の6つの関数を実装しなければなりません。

### totalSupply

`totalSupply`関数(13行目)は、使用可能なトークンの総量を返します。

### balanceOf

`balanceOf`関数(18行目)は、アドレスである`account`が所有しているトークンの量を返します。

### transfer

`transfer`関数(27行目)は、トークンの`amount`(量)をアドレスである`recipient`に送信します。
この関数は、`Transfer`イベントを発行(生成)する**必要**があります(下記参照)。また、送信者に送信するのに十分なトークンが無い場合は、例外を投げる**必要**があります。

### approve

`approve`関数(52行目)は、アドレス`spender`に対してallowance を作成します。これにより、トークンの`amount`(量)をアカウントが関数を呼び出す代わりに送信できるようにします。

### allowance

`allowance`関数(36行目)は、アドレス`spender`がアドレス`owner`アカウントに代わって使用することが許可されているトークンの量を返します。

### transferFrom

`transferFrom`関数(63行目)は、トークンの`amount`(量)をアドレス`sender`の代わりにアドレス`recipient`に送ります。
この関数は、`Transfer`イベントを発行する**必要**があります。

## ERC20イベント

ERC20コントラクトは、次の2つのイベントを発行する必要があります。

### Transfer

`Transfer`イベント(71行目)は、このアカウントでアドレス`indexed from`から`indexed to`へ`value`の量のトークンが送信された場合に発行される必要があります。 パラメータ`from`と`to`は、`indexed`になっており、フィルターとしてインデックス済みのパラメータを使って、これらのイベントを検索することができます。

### Approval

`Approval`イベント(77行目)は、アカウント`indexed owner`がアカウント`indexed spender`に代わりに`value`量のトークンを送信すること許可したときに発行しなければなりません。

## ERC20オプション関数

必須関数およびイベントに加え、ERC20に規定されている次のオプション関数があります。これらの関数は、このインターフェースには実装されていません。

### name

`function name() external view returns (string);`

トークンの名前を返します。

### symbol

`function symbol() external view returns (string);`

トークンのシンボルを返します。

### decimals

`function decimals() external view returns (uint8);`

トークンが使用する小数点の桁数を返します。

表示するときに1.5ETHのように任意の金額にトークンを割れるように、小数点を使いたいことがあると思います。 しかし、EVM(イーサリアム仮想マシン)は、整数のみをサポートしています。 そたのため、ERC20標準では、小数点機能を実装することを推奨しています。これにより、トークンが持つ小数点数を規定できます。 小数点18位が、業界の標準になっています。

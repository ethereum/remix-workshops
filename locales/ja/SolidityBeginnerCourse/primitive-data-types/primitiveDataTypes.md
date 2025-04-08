このセクションでは、Solidityのプリミティブデータ型、宣言方法、特徴を説明します。

### ブール(bool)

キーワード`bool`を使用してブール型のデータを宣言することができます。 ブール型では、`true`または`false`値を持つことができます。

### 符号なし整数(uint)

キーワード`uint`、`uint8`から`uint256`を使用することで\*符号なし整数型`を宣言することができます(例えば、-12と違い符号がありません)。 uintは正の数またはゼロで、範囲は8ビットから 256ビットです。 `uint`型は、`uint256\`型と同一です。

### 整数(int)

キーワード`int`と`uint8`から`int256を使用することで整数型を宣言することができます。 整数型は、正負の数またはゼロで、範囲は8ビットから256ビットです。 `int`型は、`int256\`と同一です。

### アドレス(address)

Variables of the type `address` hold a 20-byte value, which is the size of an Ethereum address. There is also a special kind of Ethereum address, `address payable`, which can receive ether from the contract.

All these data types have default values, as shown in the contract (line 29).

You can learn more about these data types as well as _Fixed Point Numbers_, _Byte Arrays_, _Strings_, and more in the <a href="https://docs.soliditylang.org/en/latest/types.html" target="_blank">Solidity documentation</a>.

Later in the course, we will look at data structures like **Mappings**, **Arrays**, **Enums**, and **Structs**.

<a href="https://www.youtube.com/watch?v=8Tj-Th_S7NU" target="_blank">Watch a video tutorial on Primitive Data Types</a>.

## ⭐️ 演習

1. Create a new variable `newAddr` that is a `public` `address` and give it a value that is not the same as the available variable `addr`.
2. Create a `public` variable called `neg` that is a negative number, decide upon the type.
3. Create a new variable, `newU` that has the smallest `uint` size type and the smallest `uint` value and is `public`.

Tip: Look at the other address in the contract or search the internet for an Ethereum address.

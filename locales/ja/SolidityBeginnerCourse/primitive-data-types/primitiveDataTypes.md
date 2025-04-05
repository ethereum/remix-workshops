このセクションでは、Solidityのプリミティブデータ型、宣言方法、特徴を説明します。

### ブール(bool)

キーワード`bool`を使用してブール型のデータを宣言することができます。 ブール型では、`true`または`false`値を持つことができます。

### 符号なし整数(uint)

We use  the keywords `uint` and `uint8` to `uint256` to declare an _unsigned integer type_ (they don’t have a sign, unlike -12, for example). Uints are integers that are positive or zero and range from 8 bits to 256 bits. The type `uint` is the same as `uint256`.

### 整数(int)

We use the keywords `int` and `int8` to `int256` to declare an integer type. Integers can be positive, negative, or zero and range from 8 bits to 256 bits. The type `int` is the same as `int256`.

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

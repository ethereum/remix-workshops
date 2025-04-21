# オフセットを見つける;)

次に、少し異なる例を上げます。

- Compile notSimpleStore.sol
- Deploy the contract `notSoSimpleStore`
- Make sure you have a successful deployment - if not check that you used **the correct input type** in the constructor.
- Go to the Debugger by clicking the **debug** button at the (successful) creation transaction.
- Find the value of the parameter of `CODECOPY` which represents the offset in calldata where to copy from.

_codecopy(t, f, s)_ では、**s**バイトをコードの位置である**f**からメモリの位置である**t**にコピーすることを思い出してみましょう。

**スタック**を見ると、2つ目の要素が次のようになっています:
0x0000000000000000000000000000000000000000000000000000000000000083

これは、codecopyの入力パラメータの **f** です。

### オペコードの仕組みについて、少しでも学べたなら幸いです！
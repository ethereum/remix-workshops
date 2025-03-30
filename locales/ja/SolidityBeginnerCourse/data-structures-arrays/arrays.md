次のセクションでは、Solidityでデータを整理したり保存するために使うデータ構造について学びます。

_配列_、_マッピング_、_構造体_は、_参照型_です。 _値型_(例: _ブール型_や_整数型_)と違い、参照型は値を直接保存しません。 代わりに、値が保存されている場所であるロケーションを保存します。 複数の参照型の変数は、同じロケーションを参照でき、1つの変数の変更は他の変数に影響します。そのため、注意して扱う必要があります。

Solidityにおいて配列は、数値的にインデックス付けされた同一の型の値が順序付きリストに保存されます。

_固定サイズ配列_と_動的サイズ配列_の2種類の配列があります。 固定サイズの配列では、コンパイルされる前に配列のサイズを宣言する必要があります。 動的サイズ配列は、コントラクトのコンパイル後も変更することができます。

### 配列の宣言

型、配列のサイズ(角括弧内の整数)、可視性、名前(９行目)を指定して、固定サイズの配列を宣言します。

We declare a dynamic array in the same manner. However, we don’t provide an array size and leave the brackets empty (line 6).

### Initializing arrays

We can initialize the elements of an array all at once (line 7), or initiate new elements one by one (arr[0] = 1;). If we declare an array, we automatically initialize its elements with the default value 0 (line 9).

### Accessing array elements

We access elements inside an array by providing the name of the array and the index in brackets (line 12).

### Adding array elements

Using the `push()` member function, we add an element to the end of a dynamic array (line 25).

### Removing array elements

Using the `pop()` member function, we delete the last element of a dynamic array (line 31).

We can use the `delete` operator to remove an element with a specific index from an array (line 42).
When we remove an element with the `delete` operator all other elements stay the same, which means that the length of the array will stay the same. This will create a gap in our array.
If the order of the array is not important, then we can move the last element of the array to the place of the deleted element (line 46), or use a mapping. A mapping might be a better choice if we plan to remove elements in our data structure.

### Array length

Using the length member, we can read the number of elements that are stored in an array (line 35).

<a href="https://www.youtube.com/watch?v=vTxxCbwMPwo" target="_blank">Watch a video tutorial on Arrays</a>.

## ⭐️ Assignment

1. Initialize a public fixed-sized array called `arr3` with the values 0, 1, 2. Make the size as small as possible.
2. Change the `getArr()` function to return the value of `arr3`.
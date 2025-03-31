Solidityで_列挙型_は、限られた定数のセットで構成されるカスタムデータ型です。 事前に定義した値のセットからのみ値を変数に割り当てる場合は、列挙型を使用します。

このコントラクトでは、状態変数`status`に対して、提供された列挙型の値のセットに限定された値を割り当てることができ、さまざまな配送ステータスの状態を表しています。

### 列挙型の定義

列挙型は、enumキーワードを用います。次に作成したいカスタム型の名前を定義します(6行目)。 波括弧の内部で利用可能な列挙型のメンバーを定義しています。

### 列挙型変数の初期化

列挙型の新しい変数の初期化では、列挙型の名前、可視性、変数名を提供します(16行目)。 Upon its initialization, the variable will be assigned the value of the first member of the enum, in this case, Pending (line 7).

Even though enum members are named when you define them, they are stored as unsigned integers, not strings. They are numbered in the order that they were defined, the first member starting at 0. The initial value of status, in this case, is 0.

### Accessing an enum value

To access the enum value of a variable, we simply need to provide the name of the variable that is storing the value (line 25).

### Updating an enum value

We can update the enum value of a variable by assigning it the `uint` representing the enum member (line 30). Shipped would be 1 in this example. Another way to update the value is using the dot operator by providing the name of the enum and its member (line 35).

### Removing an enum value

We can use the delete operator to delete the enum value of the variable, which means as for arrays and mappings, to set the default value to 0.

<a href="https://www.youtube.com/watch?v=yJbx07N15j0" target="_blank">Watch a video tutorial on Enums</a>.

## ⭐️ Assignment

1. Define an enum type called `Size` with the members `S`, `M`, and `L`.
2. Initialize the variable `sizes` of the enum type `Size`.
3. Create a getter function `getSize()` that returns the value of the variable `sizes`.
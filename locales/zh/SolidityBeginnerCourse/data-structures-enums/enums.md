In Solidity _enums_ are custom data types consisting of a limited set of constant values. We use enums when our variables should only get assigned a value from a predefined set of values.

在这个合约中，状态变量`status`可以从表示转换状态的enum`Status`提供的有限值集合中分配一个值。

### 定义枚举

我们使用enum关键字来定义一个枚举（第6行），后面跟着我们想要创建的自定义类型名称。在花括号内，我们定义了所有可用于该枚举类型的成员。 Inside the curly braces, we define all available members of the enum.

### 初始化一个枚举变量

通过提供enum名称、可见性和变量名称（第16行），我们可以初始化一个新的enum类型变量。在其初始化时，该变量将被赋予该枚举第一个成员Pending（第7行） 的值。 Upon its initialization, the variable will be assigned the value of the first member of the enum, in this case, Pending (line 7).

尽管当您定义它们时会为enum成员命名，但它们存储为无符号整数而不是字符串。它们按照它们被定义的顺序编号，并从0开始计数。 在本例中`status`的初始值为0. They are numbered in the order that they were defined, the first member starting at 0. The initial value of status, in this case, is 0.

### 访问 enum 值

要访问存储某个 enum 变量所代表之 enum 值, 我们只需要提供存储该值的变量名称即可 (第25行) 。

### 更新 enum 值

在Solidity中，枚举是由一组有限常量值组成的自定义数据类型。当我们的变量只能从预定义的一组值中分配时，我们使用枚举。 Shipped would be 1 in this example. 通过将`uint`分配给表示 enum 成员(例如，在此示例中Shipped 等于1)，可以更新变量的 enum 值（第30行）。更新值的另一种方法是使用点运算符，提供枚举名称及其成员 (第35行)。

### 删除 enum 值

我们可以使用delete操作符来删除变量的enum值，这意味着与数组和映射一样将默认值设置为0。

<a href="https://www.youtube.com/watch?v=yJbx07N15j0" target="_blank">观看有关 Enums 的视频教程。</a>

## ⭐️ 作业

1. 定义一个名为`Size`的枚举类型，并包含成员`S`, `M`和`L`
2. 初始化枚举类型`Size`的变量`sizes`。
3. 创建一个getter函数`getSize()`，返回变量`sizes`的值。

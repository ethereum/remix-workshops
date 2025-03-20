Solidityは、様々な制御フロー文をサポートしており、これによりコントラクトのどの部分が実行されるかを決定します。 条件付き_If/Else文_で、コントラクトが`ture`または`false`どちらかのブール条件によって判断することができます。

Solidityでは、3つの異なるIf/Else文である、`if`、`else`、 `else if`があります。

### if

`if`文は、最も基本的な文でブール式に基づいてコントラクトがアクションを実行できます。

このコントラクトの`foo`関数(5行目)にif文(6行目)で`x`が`10`未満であることを確認しています。 文がtrueの場合、この関数は`0`を返します。

### else

The `else` statement enables our contract to perform an action if conditions are not met.

In this contract, the `foo` function uses the `else` statement (line 10) to return `2` if none of the other conditions are met.

### else if

With the `else if` statement we can combine several conditions.

If the first condition (line 6) of the foo function is not met, but the condition of the `else if` statement (line 8) becomes true, the function returns `1`.

<a href="https://www.youtube.com/watch?v=Ld8bFWXLSfs" target="_blank">Watch a video tutorial on the If/Else statement</a>.

## ⭐️ 演習

Create a new function called `evenCheck` in the `IfElse` contract:

- That takes in a `uint` as an argument.
- The function returns `true` if the argument is even, and `false` if the argument is odd.
- Use a ternery operator to return the result of the `evenCheck` function.

Tip: The modulo (%) operator produces the remainder of an integer division.
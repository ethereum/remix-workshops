信頼されたセットアップが完了すると、特定の入力に基づいた回路のウィットネスの計算ができます。

## ウィットネスとは

- **ウィットネス**は、値のセットで回路の制約の全てを満たします。 ウィットネスは、中間の数値の全てを含み、結果は回路のルールを満たします。 ウィットネスは、ゼロ知識証明で使用され、問題に対して実際に解を示さなくても有効な解を知っていることを明らかにします。 これにより、あなたの特定の数値と計算を秘密にしながら、他者は、すべてにおいて正しく行っていることを確認できます。
- 証明を生成するのに必要不可欠なのがウィットネスです。

## 入力値

1. **Compute Witness** セクションでは、回路の入力に基づいて動的に生成された入力フィールドが表示されます。
2. `a`と`b`の値を入力します。 入力例:
   - `a = 3`
   - `b = 4`

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-6/images/compute_witness.png" alt="compute-witness" width=280 height=240>

## ウィットネスの計算

1. 入力をしたら、**Compute Witness** ボタンをクリックします。
2. プラグインは、入力に基づいてウィットネスを計算します。
3. 成功すると、`multiplier.wtn`がファイルエクスプローラの`.bin`ディレクトリに作成されます。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-6/images/witness_computed.png" alt="witness-computed" width=340 height=350>

**注意:** エラーがある場合は、入力が有効もしくは回路の制約を満たしているかを確認してください。

次のステップでは、計算されたウィットネスを使用して証明を生成します。

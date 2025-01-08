シンプルなCircom回路を作成してみましょう。

## 新規Circomファイルの作成

1. サイドバーの左の**ファイルエクスプローラ**で、 **Create New File** アイコンをクリックします。
2. `multiplier.circom`というファイル名にして、**Enter** キーを押します。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-3/images/create_new_file.png" alt="create-new-file" width=300 height=200>

## 回路の記述

`multiplier.circom` を開いて、次のコードを加えてください。

```circom
pragma circom 2.0.0;

template Multiplier() {
    signal input a;
    signal input b;
    signal output c;

    c <== a * b;
}

component main = Multiplier();
```

## 説明:

- template `Multiplier()`: Multiplierという新規の回路のテンプレートを定義しています。
- `signal input a;` および `signal input b;`: 入力シグナルである a と b を宣言しています。
- `signal output c;`: 出力シグナルである c を宣言しています。
- `c <== a * b;`: c が a と b の積であることを制限しています。
- `component main = Multiplier();`: mainとしてMultiplier回路をインスタンス化しています。これには、コンパイラが必要になります。

### 注意:

Signals are values in a cryptographic circuit that are strictly determined by the circuit's equations and constraints. Think of a signal as a value that must follow specific mathematical rules defined by the circuit—once set, it can't be changed arbitrarily. In regular programming, variables are flexible and can be updated or reassigned as needed, whereas, signals can't be altered freely.

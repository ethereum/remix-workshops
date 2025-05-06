_Ether_ (ETH) は暗号通貨で、 イーサリアムネットワークの手数料の支払いでも使用されます。例えば、アドレスへ_Ether_を送信したり、イーサリアムアプリケーションとのやり取りなどの形で発生するトランザクションです。

### Etherの単位

_Ether_の単位を指定するには、サフィックスとして `wei`、`gwei`、`ether`をリテラル数に付けます。

#### `wei`

_Wei_は、_Ether_の最小のサブユニットであり、暗号学者である[Wei Dai](https://en.wikipedia.org/wiki/Wei_Dai)にちなんで名付けられました。 _Ether_の数字にサフィックスが無い場合は、`wei`として扱われます(7行目)。

#### `gwei`

1 `gwei`は、1,000,000,000 (10^9) `wei`に相当します。

#### `ether`

1 `ether`は、1,000,000,000,000,000,000 (10^18) `wei`に相当します(11行目)。

<a href="https://www.youtube.com/watch?v=ybPQsjssyNw" target="_blank">EtherとWeiについてのビデオチュートリアルをご覧ください</a>。

## ⭐️ 演習

1. `public` `uint`で`oneGWei`を作成して、1 `gwei`を設定してください。
2. `public` `bool` で `isOneGWei` を作成して、1 gweiと10^9の比較演算の結果に設定してください。

ヒント: コントラクトで`gwei`と`ether`がどのように書かれているかを確認してみましょう。
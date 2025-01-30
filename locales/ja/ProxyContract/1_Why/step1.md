# プロキシコントラクト（別名: ディスパッチャー)

## 目的

**ライブラリ開発**で主に使用されている有用なパターンです。

このパターンは、次の場面で役立ちます。

- **デプロイ時にガス代を節約**
  ガス代が高いことの理由は、実行において多大なガス代がかかることを抑制し、最適化されたコードを奨励するためです。

- プロキシコントラクトは、デプロイにおける冗長性を減らすことができるので、同じコントラクトで多数のインスタンスをデプロイすることが必要な時に便利です。

- **ブロックチェーンでコードの繰り返しを避ける**
  負荷の高い計算は、すべてのノードで実行する必要があるため、高価になります。また、ネットワークでも遅延を発生させます。

- **Develop upgradable(versioned) contracts**
  When the contract is deployed, it’s immutable. By re-designing the code into different contracts, it is possible to allow logic upgrades while keeping the storage the same.

## Example of gas cost

Storing contract code at creation time can cost up to:

- 200 \* max_byte_code_length gas
- 200 \* 24576 = 49152004915200 \* 10 gwei = 49152000 gwei = 0.049152 ether = 9 EUR

see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-170.md for more info on max_byte_code_length.

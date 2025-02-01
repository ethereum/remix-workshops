# 状態変数がある場合は？

状態変数を扱う必要がる場合は、事態がより困難になります。  状態変数は、**ストレージ**に保存されます。

`storage`は、マッピングであり、各値はオンチェーンに永続化されて保存されます。

_注意: 静的サイズの状態変数(マッピングと動的サイズの配列型を除外)は、ポジション0から始まるストレージ内で連続的に配置されます。 なるべく複数の隣接する32バイト未満のアイテムが単一のストレージスロットにパックされている必要があります。 For contracts that use inheritance, the ordering of state variables is determined by the C3-linearized order of contracts starting with the most base-ward contract_

Once we execute **delegate call**, the storage of both contracts get **"merged"** into a single messy state.

We have to "tell" ProxyContract what the **state** of the **Logic contract** looks like.

The easiest way to do this is to create a separate contract - in this example - named **StorageContract** which will represent the **state** and which proxyContract will inherit from.

CODECOPY是EVM运行的众多操作码之一。请访问<a href="https://ethervm.io/" target="_blank">https://ethervm.io/</a>查看完整的操作码列表。 请访问<a href="https://ethervm.io/" target="_blank">https://ethervm.io/</a>查看完整的操作码列表。

CODECOPY将正在运行的代码（或其中一部分）从`calldata`复制到`memory`中。

Solidity实现为：**codecopy(t，f，s)** - 从位置**f**处的代码复制**s**个字节到位置**t**处的内存中。

每次合约部署都会使用CODECOPY。

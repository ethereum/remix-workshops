在`sampleContract.json`文件中，`Deploy`属性包含了告知 Remix IDE 特定网络库地址的所有必要信息。

- `<address>` 包含已部署的库的地址。 您需要为每个网络指定这个地址。
- `autoDeployLib`是一个布尔值，用于告诉 Remix IDE 是否应该在部署合约之前自动部署库。

如果 `autoDeployLib` 为 true，则不会使用 <address>，Remix 将自动在部署合约之前部署库。

对于此demo的目的 - 我们模拟已经部署了库的情况，因为这是更常见的情况。

所以将 VM: - entry 的`autoDeploy`设置为 false。

继续下一步。

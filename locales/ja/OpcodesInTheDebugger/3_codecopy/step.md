CODECOPYは、EVMで実行される様々なオペコードのうちの1つです。 オペコードの完全なリストは、<a href="https://ethervm.io/" target="_blank">https://ethervm.io/</a>をご覧ください。

CODECOPYは、**動作するコード**(またはその一部)を取り、`calldata`から`memory`にコピーします。

Solidityの実装である**codecopy(t, f, s)**では、**s**バイトをコードの位置である**f**からメモリの位置である**t**にコピーします。

あらゆるコントラクトのデプロイでは、**CODECOPY**を使います。

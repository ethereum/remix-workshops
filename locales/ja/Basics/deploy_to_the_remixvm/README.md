前の章では、コントラクトをコンパイルしました。これは、Solidityコードがイーサリアム仮想マシン(EVM)におけるバイトコードの小さなチャンクに変換されたと言うことが出来ます。

次は、テストブロックチェーンにコードを配置しましょう。

1. Deploy and Run アイコン ![deploy & run icon](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_to_the_remixvm/images/run.png "deploy & run icon") をクリックしてください。

2. **Environment** プルダウンで **Remix VM** のどれか１つを選択してください。

3. Deployボタン(または展開したビューにあるTransactボタン)をクリックしてください。

4. コンパイル済みのコントラクトがRemix VMにデプロイされます。これにより、ブロックチェーンのシミュレーションがブラウザ内部のウィンドウで実行されます。  Remix VMは、シンプルで高速なテストチェーンです。  しかし、各トランザクションで承認が不要なため、現実のブロックチェーンとは異なります。

5. ターミナルでトランザクションのデプロイメントの詳細をご覧ください

Remixを使用して、他の公開EVMチェーンへデプロイすることができます。 それには、 Injected Providerで違う **環境** に接続する必要があります。  Injected Providerは、Remixをブラウザウォレット(MetaMaskなど)に接続します。  チュートリアルの最後に公開ネットワークにデプロイします。 その前に、デプロイ済みのコントラクトとやり取りする方法について説明します。

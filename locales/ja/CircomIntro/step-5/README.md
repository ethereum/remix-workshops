回路のコンパイル後、信頼されたセットアップを実行して証明と検証鍵を生成する必要があります。

## 信頼されたセットアップの理解

- **信頼されたセットアップ:** zk-SNARKsの処理に必要となる必須パラメータを生成して証明の生成と検証をします。
- **Groth16** や **Plonk** など、さまざまなプロトコルから選ぶことができます。

## 信頼されたセットアップの実行

1. **Setup and Exports** セクションで **Proving Scheme** を選択:
   - **Groth16** または **Plonk** を選びます。 このチェートリアルでは、 **Groth16** を使用します。

2. ドロップダウンから適切な **Power of Tau** ファイルを選びます。 このファイルは、信頼されたセットアップで必要になります。
   - わからない場合は、デフォルトのオプションを選択してください。

3. **Setup** ボタンをクリックして信頼されたセットアップのプロセスを開始します。

4. **Export Verification Key** を有効にすると、検証パラメータを取得できます。

5. オンチェーンで証明を検証するならば、 **Export Verification Contract** を有効にします。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-5/images/trusted_setup.png" alt="trusted-setup" width=330 height=350>

**注意:** 信頼されたセットアップでは、回路が複雑になるほど、ある程度時間がかかります。

次のステップでは、回路で使うウィットネスの計算をします。

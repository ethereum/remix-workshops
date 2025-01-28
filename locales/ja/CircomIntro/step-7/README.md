計算されたウィットネスで、最後のステップである証明の生成します。これにより、第三者が検証できるようになります。

## 証明の生成

1. **Generate Proof** セクションに、**Export Verifier Calldata** というオプションがあります。
   - オンチェーンでの検証を想定しているならば、**Export Verifier Calldata** チェックボックスにチェックしてください。
2. **Generate Proof** ボタンをクリックします。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-7/images/generate_proof.png" alt="generate-proof" width=280 height=120>

## 出力の理解

- 証明の生成後、プラグインは、証明データを表示します。
- **Export Verifier Calldata**にチェックをしていると、オンチェーン検証で必要になるcalldataも提供されます。

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-7/images/proof_generated.png" alt="proof-generated" width=310 height=350>

## 次のステップ

- **検証:** 検証鍵または事前にエクスポートしたコントラクトを使い検証することができます。
- **オンチェーン検証:** スマートコントラクトに詳しければ、検証コントラクトをデプロイし、calldataを使用することでオンチェーン検証が実行可能です。

**おめでとうございます！** Remix-IDEを使用したCircom回路のコンパイル、信頼されたセットアップ、ウィットネスの計算、証明の生成に成功しました。

## 関連資料

- [Circomドキュメント](https://docs.circom.io/)
- [Remix-IDE ドキュメント](https://remix-ide.readthedocs.io/)
- [ゼロ知識証明の解説](https://zkproof.org/)

より複雑な回路で実験することで、CircomとRemix-IDEの可能性を探求してみてください。

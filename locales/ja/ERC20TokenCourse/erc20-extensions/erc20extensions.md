ERC20標準は、コントラクトの必要性に応じて必要な機能やオプション機能のみを記述しますが、追加の機能を加えることもできます。

このセクションでは、OpenZeppelinエクステンションを使用してトークンの焼却やトークンのミントする機能、およびコントラクトの停止機能を追加します。

自身でERC20トークンコントラクトの実装やエクステンションを作成して、コントラクトにインポートすることもできまが、 OpenZeppelinコントラクトは、セキュリティの専門家に監査されており、欲しい機能を追加するのにも適しています。

### ミント可能

mint関数により、コントラクトの作成者は、コントラクトのデプロイ後に追加のトークンをミントすることが出来ます(22行目)。 この関数では、入力パラメータとしてトークンがミントされるアドレスとミントされるトークンの量が必要です。

mint関数は、既にOpenZeppelinの<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol" target="_blank">ERC20コントラクト</a>の実装に含まれていることから、別のコントラクトから`mint()`をインポートする必要はありません。 基本的なアクセスコントロール機構を提供するモジュールである `Ownable`(7行目)をインポートしています。これによって、所有者が特定の関数に排他的にアクセスすることができます。 このコントラクトでは、継承された`onlyOwner` modifierを `mint`関数に追加しています(22行目)。また、アクセスを「所有者」に制限しています。

このコントラクトでは、<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol" target="_blank">Ownableコントラクト</a>から追加の関数であるowner()、transferOwnership() 、 renounceOwnership()を継承して、アクセスを管理しています。

### 焼却可能

「ERC20Burnable」をインポート(5行目)および関数が継承することで(9行目)、コントラクトでは、トークン保有者が自身のトークンと許可(allowance)されたトークンを破棄できるようにしています。
詳細については、<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol" target="_blank">ERC20Burnableコントラクト</a>をご覧ください。

### 停止可能

「停止可能(Pausable)」コントラクトモジュール(6行目と9行目)により、所有者は、停止(14行目)および再開(18行目)することができます。 停止状態では、トークンを送信できなくなります。これは、緊急時のシナリオにおいて有効です。
詳細については、<a href="https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/security/Pausable.sol" target="_blank">停止可能コントラクト</a>をご覧ください。

OpenZeppelinsの<a href="https://docs.openzeppelin.com/contracts/4.x/wizard" target="_blank">Contract Wizard</a>によって、新しい機能を簡単に追加することができます。

このコースが完了したら、学習過程としてLearneth NFTコースを次のステップとして挑戦してみてください。

## ⭐️ 演習

1. デプロイの後に、アカウントへトークンのミントをしてみましょう。 `totalSupply()`と`balanceOf()`を呼び出して、正しく実行されたことを確認してください。
2. トークンを焼却して、`totalSupply()`と`balanceOf()`を呼び出し、正しく実行されたことを確認してください。
3. 所有者アカウントを使用してコントラクトを停止することでpause関数をテストしてください。また、2つ目のアカウントに送金をしてみましょう。 トランザクションは、実行できないはずです。また、「Pausable: paused」という例外が投げられます。

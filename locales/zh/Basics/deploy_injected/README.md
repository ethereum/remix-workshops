1. Download the browser plugin **MetaMask** or the browser wallet of your choice.

2. 在浏览器中点击MetaMask图标。 Sign in and choose the Sepolia test network. You might need to update the wallet's settins so that you can see test networks.

3. Get some test ETH for Sepolia by searching for `Sepolia faucet`. You'll find a website where (after jumping through some hoops)(hopefully not too many), you'll get some test ETH sent to your address. In your browser wallet make sure that you have NOT selected mainnet or any network that will cost real ETH. In the Deploy & Run module, below the Environment select box, you'll see a badge with the network's ID and for popular chains, its name.

![](https://raw.githubusercontent.com/ethereum/remix-workshops/master/Basics/deploy_injected/images/sepolia.png)

4. 返回Remix。 In  **Deploy & Run**, in the **Environment** pulldown, choose **Injected Provider - MetaMask**.

5. 确保你看到 2_Owner.sol 作为 **CONTRACT** 选择框的选项，然后点击 **Deploy** 按钮。  If the **CONTRACT** select box was empty, you'll need to compile 2_Owner again by making 2_Owner.sol the active file in the **editor** and then go to the **Solidity Compiler** to compile it.  Then come back to Deploy & Run to deploy the contract using **Injected Provider - MetaMask** "provider" to the network that you chose in the browser wallet.

6. 您会看到 MetaMask 弹出窗口要求您支付交易费用。  If you have some Sepolia Eth, approve this transaction.  Check the printout in the terminal.  Once the block is validated, the **deployed instance** will appear at the bottom of Deploy & Run

通过这个教程，  你已经学会了如何打开、编译、部署和与Remix IDE中的智能合约进行交互。

(async () => {
    const account1 = '0xaaFBc70D3a20Ca41423ef8Df3C87c5A3Dd8327A5'
    
    const contractAddress = '0xa216f062BdE950a81eE34d779B0Af18698509e04'
    console.log('start')
    
    const metadata = JSON.parse(await remix.call('fileManager', 'getFile', 'browser/artifacts/CustomERC20.json'))
    const accounts = await web3.eth.getAccounts()
    
    let contract = new web3.eth.Contract(metadata.abi, contractAddress)
    
    contract.methods.transfer(account1, 10000).send({ from: accounts[0] }).on('receipt', async (receipt) => {
        console.log(receipt)
        const result = await contract.methods.balanceOf(account1).call({from: account1})
        console.log('balance_', result)
    })
})()

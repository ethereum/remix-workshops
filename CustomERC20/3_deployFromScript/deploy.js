(async () => {
    try {
        console.log('deploy...')
    
        const metadata = JSON.parse(await remix.call('fileManager', 'getFile', 'browser/artifacts/CustomERC20.json'))
        const accounts = await web3.eth.getAccounts()
    
        let contract = new web3.eth.Contract(metadata.abi)
        
        contract = contract.deploy({
            data: metadata.data.bytecode.object,
            arguments: []
        })
        
        newContractInstance = await contract.send({
            from: accounts[0],
            gas: 150000,
            gasPrice: '30000000000000'
        })
        console.log(newContractInstance.options.address)
    } catch (e) {
        console.log(e.message)
    }
})()
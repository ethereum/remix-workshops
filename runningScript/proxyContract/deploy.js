var global = {
    sender: '0xa898f7f282f8ac9c579330173e7e15c08f8b78f0',
    masterContract: '0x296543b2ae106a22ea55816e03421d7601fea197',
    flavor: 'peach',
    fillAmount: '150',
    capacity: '150'
}

global.deploy = function () {
 try {
    var deployObject = new web3.eth.Contract(global.KombuchaProxyABI)
    console.log('deploying')
    deployObject.deploy({
        data: '0x' + global.KombuchaProxyData.bytecode.object,
        arguments: [global.address, global.flavor, global.fillAmount, global.capacity]
    }).send({
        from: global.sender,
        gas: 1500000,
        gasPrice: '30000000000000'
    }, function(error, transactionHash){ 
    })
    .on('error', function(error){ 
        console.error(error)
    })
    .on('transactionHash', function(transactionHash){ 
        console.log('transactionHash ', transactionHash)
    })
    .on('receipt', function(receipt){
       console.log(receipt.contractAddress) // contains the new contract address
    })
    .on('confirmation', function(confirmationNumber, receipt){ 
        console.log(confirmationNumber)
    })
    .then(function(newContractInstance){
        console.log('contract address', newContractInstance.options.address) // instance with the new contract address
    
        remix.addInterface
    });
     } catch (e) {
         console.log(e)
     }
 
} 
     
remix.getFile("localhost/KombuchaProxy.data.json", function (error, content) {
    global.KombuchaProxyData = JSON.parse(content)
    remix.getFile("localhost/KombuchaProxy.abi", function (error, content) {
        global.KombuchaProxyABI = JSON.parse(content)
        global.deploy()
    })
})







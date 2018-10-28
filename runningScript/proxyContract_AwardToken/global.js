var global = {}

global.log = function (type, msg) {
    if (global.logFile) {
        remix.getFile(global.logFile, function (error, content) {
            remix.setFile(global.logFile, new Date() + " " + type + ' ' + msg + '\n' + content)
        })    
    }
    console.log(msg)    
}

global.info = function (msg) {
    global.log('INFO', msg)  
}

global.error = function (msg) {
    global.log('ERR', msg)  
}

global.deploy = function (sender, abi, bytecode, params) {
 try {
    var deployObject = new web3.eth.Contract(abi)
    global.info('deploying...')
    deployObject.deploy({
        data: '0x' + bytecode,
        arguments: params
    }).send({
        from: sender,
        gas: 1500000
    }, function(error, transactionHash){ 
    })
    .on('error', function(error){ 
        global.error(error)
    })
    .on('transactionHash', function(transactionHash){ 
        global.info('transactionHash ' + transactionHash)
    })
    .on('receipt', function(receipt){
        global.info('receipt:') // contains the new contract address
        global.info(receipt)
    })
    .on('confirmation', function(confirmationNumber, receipt){ 
        global.info(confirmationNumber)
    })
    .then(function(newContractInstance){
        global.info('contract address ' + newContractInstance.options.address) // instance with the new contract address
    });
     } catch (e) {
         console.error(e)
         global.error(e)
     }
} 

exports.register('global', global)

var local = {
    sender: '<address>',
    masterContract: '<address>'
}
   
remix.getFile("github/ethereum/remix-workshops/runningScript/proxyContract_AwardToken/AwardTokenProxy.json", function (error, metadata) {
    metadata = JSON.parse(metadata)
    global.logFile = 'browser/deploy.log'
    global.deploy(
        local.sender, 
        metadata.abi, 
        metadata.data.bytecode.object, 
        [local.masterContract])
})

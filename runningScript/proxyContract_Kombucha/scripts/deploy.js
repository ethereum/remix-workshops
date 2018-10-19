
var local = {
    sender: '0xa898f7f282f8ac9c579330173e7e15c08f8b78f0',
    masterContract: '0x296543b2ae106a22ea55816e03421d7601fea197',
    flavor: 'peach',
    fillAmount: '150',
    capacity: '150'
}
   
remix.getFile("localhost/KombuchaProxy.json", function (error, metadata) {
    metadata = JSON.parse(metadata)
    global.logFile = 'localhost/scripts/deploy.log'
    global.deploy(
        local.sender, 
        metadata.abi, 
        metadata.data.bytecode.object, 
        [local.masterContract, local.flavor, local.fillAmount, local.capacity])
})

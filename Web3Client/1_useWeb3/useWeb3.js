var run = async () => {
    let blockNumber = await web3.eth.getBlockNumber()
    console.log('current block number : ', blockNumber)
}
run()

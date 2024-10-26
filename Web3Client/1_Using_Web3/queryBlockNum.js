(async () => {
  try {
    let blockNumber = await web3.eth.getBlockNumber()
    console.log('current block number : ', blockNumber)
  } catch (e) {
    console.log(e.message)
  }
})()

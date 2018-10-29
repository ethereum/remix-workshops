var remixSolidity = require('remix-solidity')
var CodeAnalysis = require('remix-analyzer').CodeAnalysis
var remixTests = require('remix-tests')
var Provider = require('remix-simulator').Provider
var Web3 = require ('web3')
var fs = require('fs');
 
var resolver = (importUrl) => {
    // called by the compiler for resolving sources.
}

var compiler = new remixSolidity.Compiler(resolver)
compiler.onInternalCompilerLoaded()

compiler.event.register('compilationFinished', this, function (success, data, source) {
    if (!success) {
        console.error('\x1b[31m%s\x1b[0m', data)
    } else {
        console.log(data, source)
        runStaticAnalysis(data)  
        runTests()
    }
})

var runStaticAnalysis = (data) => {
    var analysis = new CodeAnalysis
    var modulesToRun = []
    console.log('running static analysis modules:')
    analysis.modules().forEach((element, index) => {
        // select which module to run:
        if (element.algorithm && element.algorithm.id === 'EXACT') {
            modulesToRun.push(index)
            console.log('\x1b[33m%s\x1b[0m', element.name + ' ' + element.description)
        }
    });
    analysis.run(data, modulesToRun, function (results) {
        console.log('static analysis result: ')
        var result = false
        results.forEach((element, index) => {
            element.report.forEach(element => {
                console.log('\x1b[31m%s\x1b[0m', JSON.stringify(element))
                result = true
            })
        })
        if (!result) { console.log('No warning')}
    })
}

var runTests = () => {
    let web3 = new Web3() // that allows running test under any other Web3 compatible network
    web3.setProvider(new Provider())
    remixTests.runTestFiles('./sample_test.sol', false, web3)
}

fs.readFile('sample.sol', 'utf8', function(err, content) {
    var contract = {
        'sample.sol': {
            content: content
        }
    }
    compiler.compile(contract, '') 
});


# Editing a scenario

Here's the first few lines of the scenario that I recorded.  The addresses on my machine will be different from your's.

```
{
    "accounts": {
    "account{0}": "0xca35b7d915458ef540ade6068dfe2f44e8fa733c",
    "account{4}": "0xdd870fa1b7c4700f2bd7f44238821c26f7392148",
    "account{3}": "0x583031d1113ad414f02576bd6afabfb302140225"
    }
```

So if you wanted to play this scenario in another testnet, you'd need to change these addresses to address that you have test ETH on so that you could pay for the transactions.  But other than swapping out the addresses, you can quickly run this on other nets.

And you might change the parameters for the functions.

For example here is a bit of the scenario.json a bit further down where proposal 2 was voted for by one of the addresses:

```
{
      "timestamp": 1566428184043,
      "record": {
        "value": "0",
        "parameters": [
          "2"
        ],
        "to": "created{1566428035436}",
        "abi": "0xc41589e7559804ea4a2080dad19d876a024ccb05117835447d72ce08c1d020ec",
        "name": "vote",
        "inputs": "(uint8)",
        "type": "function",
        "from": "account{4}"
      }
    },
```

Let's edit this so that another proposal wins in the playback. 

Change the **parameters** array which now is:
```
"parameters": [
          "2"
        ]
```
to:

```
"parameters": [
          "1"
        ]
```

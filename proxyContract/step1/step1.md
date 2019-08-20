# Proxy Contract

## Why?

We basically use the proxy contract for deploying large contracts.
As you may now, the cost of deploying a contract is tied with the size of it.
The more your contract do complex and heavy stuff, the more it costs for deploying it.
Also if you want to deploy x thousand time the same code, it will be for sure cheaper to use the `proxy contract` pattern, so you don't reploy the same code x thousand of time.

## Example

Storing contract code at creation time can cost up to:
 - 200 * max_byte_code_length gas
 - 200 * 24576 = 49152004915200 * 10 gwei = 49152000 gwei = 0.049152 ether = 9 EUR
 
 see https://github.com/ethereum/EIPs/blob/master/EIPS/eip-170.mdfor more infos on max_byte_code_length.


**Using Proxy Contract pattern allows to save gas at deployment time**


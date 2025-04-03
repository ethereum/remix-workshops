*Ether* (ETH) is a cryptocurrency. *Ether* is also used to pay fees for using the Ethereum network, like making transactions in the form of sending *Ether* to an address or interacting with an Ethereum application.

### Ether Units
To specify a unit of *Ether*, we can add the suffixes `wei`, `gwei`, or `ether` to a literal number.

#### `wei`
*Wei* is the smallest subunit of *Ether*, named after the cryptographer [Wei Dai](https://en.wikipedia.org/wiki/Wei_Dai). *Ether* numbers without a suffix are treated as `wei` (line 7).

#### `gwei`
One `gwei` (giga-wei) is equal to 1,000,000,000 (10^9) `wei`.

#### `ether`
One `ether` is equal to 1,000,000,000,000,000,000 (10^18) `wei` (line 11).

<a href="https://www.youtube.com/watch?v=ybPQsjssyNw" target="_blank">Watch a video tutorial on Ether and Wei</a>.

## ⭐️ Assignment
1. Create a `public` `uint` called `oneGwei` and set it to 1 `gwei`.
2. Create a `public` `bool` called `isOneGwei` and set it to the result of a comparison operation between 1 gwei and 10^9.

Tip: Look at how this is written for `gwei` and `ether` in the contract.
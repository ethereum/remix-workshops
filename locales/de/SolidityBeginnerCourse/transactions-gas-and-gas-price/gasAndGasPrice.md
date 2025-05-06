As we have seen in the previous section, executing code via transactions on the Ethereum Network costs transaction fees in the form of Ether. The amount of fees that have to be paid to execute a transaction depends on the amount of _gas_ that the execution of the transaction costs.

### Gas

_Gas_ is the unit that measures the amount of computational effort that is required to execute a specific operation on the Ethereum network.

### Gas price

The _gas_ that fuels Ethereum is sometimes compared to the gas that fuels a car. The amount of gas your car consumes is mostly the same, but the price you pay for gas depends on the market.

Similarly, the amount of _gas_ that a transaction requires is always the same for the same computational work that is associated with it. However the price that the sender of the transaction is willing to pay for the _gas_ is up to them. Transactions with higher _gas prices_ are going through faster; transactions with very low _gas prices_ might not go through at all.

When sending a transaction, the sender has to pay the _gas_ fee (gas_price \* gas) upon execution of the transaction. If _gas_ is left over after the execution is completed, the sender gets refunded.

_Gas_ prices are denoted in gwei.

### Gas limit

When sending a transaction, the sender specifies the maximum amount of gas that they are willing to pay for. If they set the limit too low, their transaction can run out of _gas_ before being completed, reverting any changes being made. In this case, the _gas_ was consumed and can’t be refunded.

Learn more about _gas_ on <a href="https://ethereum.org/en/developers/docs/gas/" target="_blank">ethereum.org</a>.

<a href="https://www.youtube.com/watch?v=oTS9uxU6cAM" target="_blank">Watch a video tutorial on Gas and Gas Price</a>.

## ⭐️ Assignment

Create a new `public` state variable in the `Gas` contract called `cost` of the type `uint`. Store the value of the gas cost for deploying the contract in the new variable, including the cost for the value you are storing.

Tip: You can check in the Remix terminal the details of a transaction, including the gas cost. You can also use the Remix plugin _Gas Profiler_ to check for the gas cost of transactions.

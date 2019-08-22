# Events

Contracts can emit events on the Blockchain that Ethereum clients such as web applications can listen for without much cost. As soon as the event is emitted, the listener receives any arguments sent with it and can react accordingly. This is the syntax `event <eventName>(<List of parameters and types to send with event>)`, first we declare the event here, and later emit the event with the syntax `emit <eventName>(<List of variables to send>)`.

## To Try

Define an event called `Sent` that has 3 parameters: two address types called `from` and `to`, and an unsigned integer called `amount`.

If you get stuck read the [event documentation](https://solidity.readthedocs.io/en/latest/contracts.html#events)  for more details.

## Exploring `calculate_hash.circom`

Navigate to the `circuits` directory and open `calculate_hash.circom`. This file contains the Circom code for the Hash Checker circuit.

### Code Breakdown

#### Pragma and Includes:
- `pragma circom 2.0.0;` specifies the Circom version.
- `include "circomlib/circuits/poseidon.circom";` fetch and includes the Poseidon hash function from [CircomLib](https://github.com/iden3/circomlib).

#### `CalculateHash` Template:
- Defines inputs `value1`, `value2`, `value3`, `value4`.
- Uses the `Poseidon` hash function to compute a hash of these values.
- Uses `assert(hash == calculatedHash);` to ensure the provided hash matches the calculated hash.
- Outputs `out`, which is the hash.

#### Main Component:
- `component main {public [hash]} = HashChecker();`
- Specifies that `hash` is a `public` input, while the values are `private`.

### Purpose
The circuit allows someone to prove they know `value1`, `value2`, `value3`, and `value4` that hash to a specific `hash` without revealing the values themselves.
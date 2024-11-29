## Understanding `groth16_zkproof.ts`

Navigate to `scripts/groth16/groth16_zkproof.ts`. This script generates the zero-knowledge proof and prepares it for verification.

### Code Overview

#### Loading Files:
- Reads the R1CS and WASM files generated from the circuit.
- Loads the final proving key (`zkey_final`) and verification key (`vKey`).

#### Defining Inputs:
- Sets the private values (`value1`, `value2`, `value3`, `value4`).
- Computes the `hash` using Poseidon from [CircomLib](https://github.com/iden3/circomlib).

#### Witness Calculation and Proof Generation:
- Calculates the witness (`wtns`).
- Checks the witness against the `R1CS`.
- Generates the proof using `Groth16`.
- Verifies the proof.

#### Exporting Verifier Contract and Inputs:
- Generates a Solidity verifier contract.
- Exports the proof inputs to `input.json`.

### Purpose
- Generates a zero-knowledge proof that the prover knows values hashing to a specific hash.
- Prepares the verifier contract and inputs for on-chain verification.

### Execute the Script
- Click the play button in the editor, or right-click the file and select "Run".
- Wait for the script to complete and `"zk proof validity"` logged in the terminal.
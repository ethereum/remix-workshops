With the trusted setup complete, you can now compute the witness for your circuit based on specific inputs.

## What is a Witness?

- A **Witness** is a set of values that satisfy all the constraints of your circuit. It includes all the intermediate numbers and results that satisfy the circuit's rules. The witness is used in zero-knowledge proofs to demonstrate that you know a valid solution to the problem without actually showing the solution itself. This allows others to verify that you did everything correctly while keeping your specific numbers and calculations private.
- It is essential for generating a proof.

## Inputting Values

1. In the **Compute Witness** section, you'll see input fields dynamically generated based on your circuit's inputs.
2. Enter values for `a` and `b`. For example:
   - `a = 3`
   - `b = 4`

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-6/images/compute_witness.png" alt="compute-witness" width=280 height=240>

## Computing the Witness

1. After entering the inputs, click on the **Compute Witness** button.
2. The plugin will compute the witness based on your inputs.
3. If successful, you'll see `multiplier.wtn` created in the `.bin` directory in the file explorer.

<img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomIntro/step-6/images/witness_computed.png" alt="witness-computed" width=340 height=350>

**Note:** If there are any errors, ensure that your inputs are valid and satisfy the circuit's constraints.

In the next step, we'll generate a proof using the computed witness.

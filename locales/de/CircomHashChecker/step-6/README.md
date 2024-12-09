## Compute Witness

1. **Access the Compute Witness Section**:
   - After the trusted setup, the **Compute Witness** section becomes available.

2. **Input Values**:
   - You'll see input fields for `value1`, `value2`, `value3`, `value4`, and `hash`.
   - Enter values for each input. For example:
     - `value1`: `1234`
     - `value2`: `2`
     - `value3`: `3`
     - `value4`: `4`

3. **Calculate the Hash**:

   - Compute the Poseidon hash of the four values using an external tool or library compatible with the Poseidon hash function.
   - For the values above, here is the computed Poseidon hash `16382790289988537028417564277589554649233048801038362947503054340165041751802`.
   - Enter the calculated `hash` value in the `hash` input field.

   <img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomHashChecker/step-6/images/compute_witness.png" alt="compute-witness" width=250 height=400>

4. **Compute the Witness**:

   - Click on the **Compute Witness** button.
   - Wait for the process to complete. A success badge will appear if the witness is computed successfully.
   - If successful, you'll see `calculate_hash.wtn` created in the `.bin` directory in the file explorer.

   <img src="https://raw.githubusercontent.com/ethereum/remix-workshops/master/CircomHashChecker/step-6/images/witness_computed.png" alt="witness-computed" width=300 height=100>

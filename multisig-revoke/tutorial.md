# Section 6: Revoking Confirmations

## Overview

In this section, we will explore the advanced feature of revoking confirmations in a Multisig wallet. We'll discuss the relevant contract code, understand how the `revokeConfirmation` function works, and provide testing methodologies to ensure the correctness of this feature.

## Contract Code Explanation

### The `revokeConfirmation` Function

The `revokeConfirmation` function allows an owner to undo a confirmation for a previously confirmed transaction. Let's break down its key components:

- **onlyOwner:** This modifier ensures that only owners can revoke confirmations.
- **txExists:** This modifier ensures that the transaction exists.
- **notExecuted:** This modifier ensures that the transaction has not been executed.
- **transaction.confirmations[msg.sender] = false:** This line marks the owner's confirmation as false to prevent re-entrancy attacks and multiple confirmations.
- **transaction.numConfirmations -= 1:** This line reduces the number of confirmations by one.
- **emit RevokeConfirmation(msg.sender, _txIndex):** This line emits the `RevokeConfirmation` event, which includes the address of the revoking owner and the transaction index.


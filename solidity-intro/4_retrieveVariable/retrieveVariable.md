# Retrieve a variable

To retrieve the value of a variable from a contract you can use similar principles for functions as covered in the previous step. It's good practise to add the `view` function modifier that promises the function does not modify state.

## To Try

Create a new function called `get` that other contracts can access that returns one variable of type `uint` and promises not to modify state.

Inside the function, return the state variable you created in step 2.

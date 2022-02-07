In Solidity, we can define custom data types in the form of *structs*. Structs are a collection of variables that can consist of different data types.

### Defining structs
We define a struct using the `struct` keyword and a name (line 5). Inside curly braces, we can define our struct’s members, which consist of the variable names and their data types.

### Initializing structs
There are different ways to initialize a struct.

Positional parameters: We can provide the name of the struct and the values of its members as parameters in parentheses (line 16).

Key-value mapping: We provide the name of the struct and the keys and values as a mapping inside curly braces (line 19).

Initialize and update a struct: We initialize an empty struct first and then update its member by assigning it a new value (line 23).

### Accessing structs
To access a member of a struct we can use the dot operator (line 33). 

### Updating structs
To update a structs’ member we also use the dot operator and assign it a new value (lines 39 and 45).

<a href="https://www.youtube.com/watch?v=kYBHq7EmFBc" target="_blank">Watch a video tutorial on Structs</a>.

## ⭐️ Assignment
Create a function `remove` that takes a `uint` as a parameter and deletes a struct member with the given index in the `todos` mapping.
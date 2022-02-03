In the next sections, we will look into the data structures that we can use to organize and store our data in Solidity.

*Arrays*, *mappings* and *structs* are all *reference types*. Unlike *value types* (e.g. *booleans* or *integers*) reference types don't store their value directly. Instead, they store the location where the value is being stored. Multiple reference type variables could reference the same location, and a change in one variable would affect the others, therefore they need to be handled carefully.

In Solidity, an array stores an ordered list of values of the same type that are indexed numerically.

There are two types of arrays, compile-time *fixed-size* and *dynamic arrays*. For fixed-size arrays, we need to declare the size of the array before it is compiled. The size of dynamic arrays can be changed after the contract has been compiled.

### Declaring arrays
We declare a fixed-size array by providing its type, array size (as an integer in square brackets), visibility, and name (line 9).

We declare a dynamic array in the same manner. However, we don’t provide an array size and leave the brackets empty (line 6).

### Initializing arrays
We can initialize the elements of an array all at once (line 7), or initiate new elements one by one (arr[0] = 1;). If we declare an array, we automatically initialize its elements with the default value 0 (line 9).

### Accessing array elements
We access elements inside an array by providing the name of the array and the index in brackets (line 12).

### Adding array elements
Using the `push()` member function, we add an element to the end of a dynamic array (line 25). 

### Removing array elements
Using the `pop()` member function, we delete the last element of a dynamic array (line 31). 

We can use the `delete` operator to remove an element with a specific index from an array (line 42). 
When we remove an element with the `delete` operator all other elements stay the same, which means that the length of the array will stay the same. This will create a gap in our array. 
If the order of the array is not important, then we can move the last element of the array to the place of the deleted element (line 46), or use a mapping. A mapping might be a better choice if we plan to remove elements in our data structure.

### Array length
Using the length member, we can read the number of elements that are stored in an array (line 35).

<a href="https://www.youtube.com/watch?v=vTxxCbwMPwo" target="_blank">Watch a video tutorial on Arrays</a>.

## ⭐️ Assignment
1. Initialize a public fixed-sized array called `arr3` with the values 0, 1, 2. Make the size as small as possible.
2. Change the `getArr()` function to return the value of `arr3`.
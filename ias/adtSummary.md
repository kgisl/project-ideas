
# Types Of Data Structures

*   Primitive data structures
*   Non-primitive data structures

* * *

## Primitive and Non-primitive data structures

### Primitive Data Structures

Primitive Data Structures are the basic data structures that directly operate upon the machine instructions.

They have different representations on different computers.
`Integers`, `Floating point numbers`, `Character constants`, `String constants` and `Pointers` come under this category.

### Non-primitive Data Structures

Non-primitive data structures are more complicated data structures and are derived from primitive data structures.

They emphasize on grouping same or different data items with relationship between each data item. 

`Arrays`, `Lists` and `Files` come under this category.

* * *

![Types Of Data Structure.png]( https://drive.google.com/uc?id=0Bwu4iGPfYEufaEFzVUZhWUNTT1E)


### ADT 


An Abstract Data Type (ADT) is implemented as either linear or non-linear data structures with specific functions that operate on data structure elements. 
![](http://www.sqa.org.uk/e-learning/LinkedDS01CD/images/pic002.jpg)

An ADT's usage and implementation choice is based on the application in which the ADT is going to be used to achieve a specific purpose.


![ASI](https://drive.google.com/uc?id=0Bwu4iGPfYEufeG9tekFvQThLbHc)

|Specification| List ADT | Stack ADT | Queue ADT | Tree ADT (PDS-2) |
|------|-------|---------|-------|-------|
|_Implementation_ ||||
|_linear (array)_| `int mylist[50];`| `#define MAX 40; char stack[MAX];`| array-based queue | - |
|_non-linear (linked data)_|linked list | linked-list based stack | linked-list based queue | - |
|_non-linear (linked data)_|circular linked list | -  | circular queue | - | 
|_non-linear (linked data)_|doubly linked list | -  | double-ended queue | - | 
|typical operations (_aka_ functions) | `insert`, `delete`, `merge`, `traverse` | `push`, `pop`, `peek`, `isEmpty` | `enqueue`, `dequeue` | `bfs`, `dfs`
|typical applications | data processing, polynomial manipulation | arithmetic expression evaluation, function calls in operating system | printer spooling | data storage and retrieval (mobile phone book search)| 


### Commentary

- Known to Unknown (primitive to non-primitive) 
- "A picture is worth a 1000 words" 
- Here a **tabulation** seems to be the best way to provide context for the various topics that are part of Unit 3 and Unit 4 
- Main objective is to encourage students to at least know one ADT implementation thoroughly. For e.g. http://j.mp/linkedStackCC is a CC exercise to practice the implementation of a linked-list based Stack. 

### Misc 

1. Very extensive coverage of Linear ADT  http://www.introprogramming.info/tag/adt/
	- http://www.introprogramming.info/tag/adt/#_Toc362296533  
	- http://www.introprogramming.info/tag/adt/#_Toc362296535
2. Visit https://ece.uwaterloo.ca/~dwharder/aads/Abstract_data_types/  
> Look! Everything is a *graph*! 
> 
> ![Image](https://ece.uwaterloo.ca/~dwharder/aads/Abstract_data_types/images/ADT.png)

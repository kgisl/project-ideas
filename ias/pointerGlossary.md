
Need a ToC? Visit http://j.mp/pointerStart

# Pointer Glossary
- Take a look at http://j.mp/pointerGrok as well.  
- Take a look at the [Pointer Chapter](https://pebble.gitbooks.io/learning-c-with-pebble/content/chapter08.html) on Pebble 

![joke](https://imgs.xkcd.com/comics/pointers.png)


## Table of Contents

* [Pointers](#pointers)  
	* [Integers and Integer variables (Known)](#integers-and-integer-variables-known)  
	* [Pointers and pointer variables (Unknown)](#pointers-and-pointer-variables-unknown)  
	* [Code Quiz](#code-quiz)  
		* [Quiz 1  - Pointer basics](#quiz-1----pointer-basics)  
		* [Quiz 2  - Pointer basics](#quiz-2----pointer-basics)  
		* [Quiz 3  - Swap using Pointers](#quiz-3----swap-using-pointers)  
		* [Quiz 4  - Bug Finder](#quiz-4----bug-finder)  
		* [Quiz 5  - Printer Arithmetic](#quiz-5----printer-arithmetic)  
			* [Question 5.1](#question-51)  
			* [Question 5.2](#question-52)  
		* [Quiz 6  - Mystery](#quiz-6---mystery-function)  

	* Bug Fix
		* http://j.mp/bugFix1, http://j.mp/bugFix2, http://j.mp/bugfix3 and http://j.mp/bugFix4

	* [What next?](#what-next)  


## Pointers 

![Image](https://drive.google.com/uc?id=0Bwu4iGPfYEufWVlRTmg1SlB5OWMyV2xOZ0gwamxqN2tlM3pJ)

Very important counter-perspective to read:   
  - "I think the main barrier to understanding pointers is bad teachers." http://bit.ly/pointersAndBadTeachers  
  - The Pointer conspiracy - http://bit.ly/pointerConspiracy

### Integers and Integer variables (_Known_) 
|Item | Interchangeable with  | Description | Example |
|:----------|:----------:|:------------|:-------------------|
|Integer	| Whole number | Any whole number value from 1 to 100000| 9930
|Integer variable | - | a variable type that can be initialized with _only_ a decimal,(e.g. **2220**) or octal or hexadecimal value | int a_variable = 2220; | 


### Pointers and pointer variables (_Unknown_)

|Item | Interchangeable with | Description | Example |
|:----------|:----------:|:------------|:-------------------|
|Pointer	| A value; memory location address |A valid memory location value in hexadecimal | `0x400694`|
|Pointer variable | Pointer | a variable type that can be initialized _only_ with a memory address (_a.k.a._ **Pointer**, usually represented by a hexadecimal value) of other variables and not any integer (for e.g. decimal **2220**) | int* **pA**; pA = &a; | 
|Pointer type | Data type | refers to the type of the data retrieved or stored when *de-referencing* (using the `*` operator) a pointer variable | **int*** p; **char*** c; **float*** f;  | 
|Integer pointer | Integer Pointer Variable | When *de-referencing* (using the `*` operator) on the left hand side (LHS) is used with the variable, it stores integer in the memory location; when de-referencing on the RHS, the value stored in the memory location is retrieved  | **int*** pInteger; *pInteger = 300; | 
|Memory location value | Memory Address | Any physical memory location which can be accessed by the CPU | Any hexadecimal number between a range, say 0x1000 -> 0x10000 |
|Memory variable | Data variable | A human-defined name that might refer to one or more memory locations depending upon the type | **int a;** // 4 bytes starting at `0xbf943434` |
|Dereferencing | - | Using the `*` operator, retrieve value in the memory location pointed to by the pointer variable; when used on the LHS of an assignment statement, it stores the RHS value in the memory location | `*pB + 1` // retrieve value and add one | 
|Pointer in the LHS (left hand side) of assignment statement | - | Store data in the memory location pointed to | `*ppA = 23 + 39023;` 
|Pointer in the RHS (right hand side) of assignment statement | - | Retrieve data from the memory location pointed to | `int v = *ppA + 23;`  
|Invalid pointer assignments | - | Assigning an integer value as the address of a pointer | ppA = 23; // illegal because `23` is not a valid memory location | 
|Valid pointer assignments | - | Assigning a pointer variable to another pointer variable | If pA and pB are pointer variables, `pA = pB;`  |
|Pass by value | Call by value | Function arguments in [C][call by value in C] and [Java][call by value in Java] are strictly passed on as parameters to the called function _only by value_ | True or false? Read the [tutorial][call by value tutorial]
|Call by reference | Pass by reference | When functions are called with arguments that are either pointers (C) or references (C++) | True or false? **TBD**
|Reference | reference variable | An alias for another variable that cannot be re-assigned (C++). Primarily introduced to allow for [operator overloading][operator overloading why?]. | `int a; int& b = a;` 

[call by value in Java]: http://buff.ly/2g98GBN
[call by value tutorial]: http://javapapers.com/core-java/java-pass-by-value-and-pass-by-reference/
[call by value in C]: http://j.mp/callByValueC
[operator overloading why?]:  http://www.stroustrup.com/bs_faq2.html#pointers-and-references

## Code Quiz

#### Quiz 0 - Pointer basics 

```c
int a[10]; // defining an array
assert(a == &a[0]); 

int *b = &a[9]; 
assert(a != b-9); 	
```

The 1st `assert` in the above code snippet will 
1. Pass 
2. Fail 
3. Indeterminable 
4. Won't compile 

The 2nd `assert` in the above code snippet will 
1. Pass 
2. Fail 
3. Indeterminable 
4. Won't compile 



#### Quiz 1  - Pointer basics
```cpp
int b; 
int* pA;
int* pB = &b; 
pA = pB;
printf ("%d is the value pointed to by pA\n", *pA); 
```
The string displayed is 
```
1. "pB is the value pointed to by pA"
2. "0 is the value pointed to by pA"
3. "2323443 is the value pointed to by pA"
4. Non-determinable because integer `b` is not initialized 
```

#### Quiz 2  - Pointer basics
```cpp
char buf[] = "this is a long string"; 
char* pBuf = buf; 
char* pBuf2; 
pBuf2 = pBuf;   // valid pointer to pointer assignment 
char* anotherP = (char *)malloc (sizeof(buf) * sizeof(char) ); 
*anotherP = *pBuf; 
printf ("%s is the contents of anotherP\n", anotherP); 
printf ("%c is the contents of anotherP\n", *anotherP);

```
The 2-line output in the display is: 
```cpp
1. "this is a long string"  and "t"
2. "t" and "t"
3. Non-determinable and "t" 
```

#### Quiz 3  - Swap using Pointers
```cLang
#include <stdio.h> 
#include <stdlib.h> 

void swap (int*, int*); // declaring swap 
int* get_a_number();    // uses malloc() to dynamically allocate integers

void swap(int *q,int *p)  // definition of swap 
{
    // Step 0 your code goes below
}

int main ()
{
    int *a = get_a_number();   
    int *b = get_a_number();   
    int  c = *get_a_number();  
    int  d = *get_a_number();  

    // Step 0 implement swap function 
    
    // Step 1 call the swap functions appropriately with a & b

    // Step 2 call the swap function appropriately with c & d

    // Step 3 print the swapped values --------
    printf ("%d %d %d %d", *a,*b, c, d);
    return 0;
}

int* get_a_number()
{
    int* number = (int*) malloc ( sizeof (int) ); 
    scanf("%d", number);
    return number;
}

```

Assume you've entered the appropriate code for the `swap` function above. The correct code for `Step 1 and Step 2` is: 

1. `swap (&a, &b)` and `swap (&c, &d)`  
2. `swap (*a, *b)` and `swap (&c, &d)`   
3. `swap (a, b)` and `swap (c, d)`  
4. `swap (a, b)` and `swap (&c, &d)`  
5. None of the above   


#### Quiz 4  - Bug Finder 

![substring](https://rawgit.com/kgisl/project-ideas/master/ias/subString.png)

The above program is almost **perfect** in that it defines a `substring` function which returns a substring of the input ("CatDogMonkey") starting from index 3 and of length 4.  Except there is one small yet major flaw. What is the error? 

#### Quiz 5  - Printer Arithmetic

![arithmetic](https://rawgit.com/kgisl/project-ideas/master/ias/printerArithmetic.png)

##### Question 5.1
If the output at Line 19 (the first `printf` statement) is: 
`0x400694 0xfff000ba0 0xfff000b60`

then the output at Line 20 (the next `printf` statement) is: 

1. `0x400694 0xfff000ba0 0xfff000b60`
2. `0x400698 0xfff000ba4 0xfff000b64`
2. `0x400695 0xfff000ba4 0xfff000b74`
3. None of the above 

##### Question 5.2
With reference to `Line 24`, the output will be: 

1. `0xfff000ba1`
2. Compiler will not compile
3. Undefined behavior
4. Any one of the above
	 
Spoiler Alert: http://stackoverflow.com/a/3524270/307454

##### Quiz 5.3 
The only kind of arithmetic that is allowed between two pointers: 
1. Addition and Subtraction of two pointers
2. Multiplication and Division of two pointers
3. Both the above
4. Only subtraction between two pointers


#### Quiz 6 - Mystery Function

![mystery](https://files.gitter.im/kgashok/advik/NkvR/Screenshot-2018-03-10-at-08.13.29.png)
What does the above function do? 
1. Will not compile 
2. Will execute forever
3. Calculates the length of `arr` 
4. None of the above

#### Quiz 7 - Mystery Function 3

![quiz7](http://j.mp/mystery_func3) 

What does the above function do? 
1. Will not compile 
2. Will execute forever
3. Simply swaps all characters in-place
4. None of the above

#### Quiz 8 - Mystery Function 4

![quiz7](http://j.mp/mystery_func4) 

What does the above function do? 
1. Will not compile 
2. Will execute forever
3. Traverses to the end of the linked list and returns the **tail** node 
4. None of the above

#### Quiz 9 - Mystery Function 5

![quiz7](http://j.mp/mystery_func5) 

What does the above function do? 
1. Will not compile 
2. Will execute forever
3. Sums up all the integers in the array into `val` and returns it
4. None of the above

#### Quiz 10 - Mystery Function 6

![quiz7](http://j.mp/mystery_func6) 

What does the above function do? 
1. Will compile but won't do anything useful 
2. Returns the location of any character that is part of `s2` that occurs in `s1`
3. Will execute forever 
4. None of the above 


#### Quiz 10 b - Mystery Function 7

![quiz8](http://bit.ly/mystery_func9)  

What does the above function do? 
1. Will compile but won't do anything useful 
2. copies contents of `s` at the end of `d` (with one small code change)
3. Will execute forever 
4. None of the above 

#### Quiz 11 - size function for int array

**"It is possible to write a function `arraylen(int arr[])` 
(similar to `strlen`) which will return the length of 
the integer array."** 

The above statement is 
1. True
2. False 
3. Indeterminable 
4. Not necessary - `strlen` will itself do the job 


#### Quiz 12  - what does this function do? 

![mystery12](http://j.mp/stringLenInOneLine)


## What next?

- Use [Pointer Koans](https://github.com/kgashok/CppKoans/blob/master/koans/koan05_pointers.cpp) to reflect on pointer concepts by reading/writing simple pointer code
	- > ![koans](http://j.mp/pointerKoans)
- Go through the tutorial at https://overiq.com/c-programming/101/pointer-basics-in-c/
- Conceptual understanding of Pointers (_aka_ **indirection**, is one of the 7 fundamental constructs http://j.mp/constructAnalogy) is best achieved by doing a lot of pointer problems. 

## Pointer Camp  http://bit.ly/pointerKITE

# Lecture Notes


1. **What is a pointer?** It is a number.

2. **What is a valid pointer versus invalid pointer?** A valid pointer is a hexadecimal number, very often, a 8 digit hexadecimal number e.g. `0x1239ffb9`. It also refers to a valid memory addresses that is accessible to the CPU of a computer. An invalid pointer is a hexadecimal value (for e.g. `0x10`) which is either not accessible by a user written software program (because that memory location stores code that is part of the BIOS code of the computer) or a hexadecimal value which is not relevant to the memory addresses of a computer. 

3. **What is a pointer variable?** A variable that is used to store a valid pointer value. 
4. **How is a pointer variable defined?** The same naming conventions (மரபு, பழக்கம்) that apply to a variable, apply to a pointer variable. However there is one special requirement - and that is it needs to be preceded by a `*`. Valid pointer variable names are `*name`, `*value1` and `*node1` 

5. **How is a pointer variable initialized**? The right hand side (RHS) of the assignment statement must be a valid memory address (usually a hexadecimal value). A `null pointer variable` is a pointer variable which stores `0` as the pointer value, usually as part of its initialization. 

6. **How and when to deference a pointer**? A pointer when de-referenced (using the `*` operator) on the right hand side (RHS) of an assignment **retrieves** data from the memory location it is pointed to. A pointer when de-referenced on the left hand side (LHS) results in the **storing** of data happens in the memory location it points to. 


## Lecture Notes 2 

 - **Double Pointers** - pointer variables that store the memory location of another pointer is called a double pointer. And naming convention requires that `**` be used when defining such double pointer variables 
    - http://j.mp/doubleSwap - for double pointer coding practice 
    - http://j.mp/dPalindromeKG - Practice 2 on Palindrome checking
    - http://j.mp/doublePointerSort - for a real-world use case
 - Use **Pointers to operate** on Linear data structures (like Linked lists, and Queues) 
    - Solve problems in CloudCoder (such as `create`, `traverse`, etc ) from http://j.mp/pointerKITE 

# Context

- Dynamic memory management (malloc, memset) - **pointers** are used as a handle for storing such memory locations.
- Data structures like linked list, queues
	- **Pointers** that are require to traverse and manipulate linear data structures 
- Data structures like trees, graphs
	- **Pointers** and recursive functions/algorithms which are required to manipulate recursive data structures
	- finding the shortest path from Destination A to Destination B 
	- searching and inserting data into data structures for efficient retrieval and modifications 

![doBetter](https://camo.githubusercontent.com/f9af65aa3a3b03c6e8a5d0656b363d7a9398f14b/68747470733a2f2f64726976652e676f6f676c652e636f6d2f75633f69643d30427775346947506659457566656a52686232704d516c3835654738)  
  

<!--stackedit_data:
eyJoaXN0b3J5IjpbMTg5MDU5NTU1M119
-->
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTk1Mjc5ODQ2OSwtNjE1NTQ4ODgzLC0xMD
cxNDAxMDI0LDIxMjE4NTQwNTQsLTE2MDAwNzYyODIsLTU3MDEz
ODE2NSwtMTk4NDQxMTc2LC00Nzg5NDE5NzQsLTEzNTgzODUzOT
gsMTQ2NjEwNDE2OCw5MTQxNjAxMTAsNzkxMjUzNDQwLDExODQz
ODg4NDMsLTg3NjE1NzE1NywtMTA0NzU3MTc2OCwxNDk0Njc0NT
UyLC00MTM4NDk5ODUsMjE5Mjc4MTg0LDE4MjI5OTgzNzldfQ==

-->

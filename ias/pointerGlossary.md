
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

## Quiz 0 - Pointer basics 

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



## Quiz 1  - Pointer basics
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

## Quiz 2  - Pointer basics
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

## Quiz 3  - Swap using Pointers
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


## Quiz 4  - Bug Finder 

![substring](https://rawgit.com/kgisl/project-ideas/master/ias/subString.png)

The above program is almost **perfect** in that it defines a `substring` function which returns a substring of the input ("CatDogMonkey") starting from index 3 and of length 4.  Except there is one small yet major flaw. What is the error? 

## Quiz 5  - Printer Arithmetic

![arithmetic](https://rawgit.com/kgisl/project-ideas/master/ias/printerArithmetic.png)

### Question 5.1
If the output at Line 19 (the first `printf` statement) is: 
`0x400694 0xfff000ba0 0xfff000b60`

then the output at Line 20 (the next `printf` statement) is: 

1. `0x400694 0xfff000ba0 0xfff000b60`
2. `0x400698 0xfff000ba4 0xfff000b64`
2. `0x400695 0xfff000ba4 0xfff000b74`
3. None of the above 

### Question 5.2
With reference to `Line 24`, the output will be: 

1. `0xfff000ba1`
2. Compiler will not compile
3. Undefined behavior
4. Any one of the above
	 
Spoiler Alert: http://stackoverflow.com/a/3524270/307454

### Quiz 5.3 
The only kind of arithmetic that is allowed between two pointers: 
1. Addition and Subtraction of two pointers
2. Multiplication and Division of two pointers
3. Both the above
4. Only subtraction between two pointers


## Quiz 6 - Mystery Function

![mystery](https://files.gitter.im/kgashok/advik/NkvR/Screenshot-2018-03-10-at-08.13.29.png)
What does the above function do? 
1. Will not compile 
2. Will execute forever
3. Calculates the length of `arr` 
4. None of the above

## Quiz 7 - Mystery Function 3

![quiz7](http://j.mp/mystery_func3) 

What does the above function do? 
1. Will not compile 
2. Will execute forever
3. Simply swaps all characters in-place
4. None of the above

## Quiz 8 - Mystery Function 4

![quiz7](http://j.mp/mystery_func4) 

What does the above function do? 
1. Will not compile 
2. Will execute forever
3. Traverses to the end of the linked list and returns the **tail** node 
4. None of the above

## Quiz 9 - Mystery Function 5

![quiz7](http://j.mp/mystery_func5) 

What does the above function do? 
1. Will not compile 
2. Will execute forever
3. Sums up all the integers in the array into `val` and returns it
4. None of the above

## Quiz 10 - Mystery Function 6

![quiz7](http://j.mp/mystery_func6) 

What does the above function do? 
1. Will compile but won't do anything useful 
2. Returns the location of any character that is part of `s2` that occurs in `s1`
3. Will execute forever 
4. None of the above 


## Quiz 10 b - Mystery Function 7

![quiz8](http://bit.ly/mystery_func9)  

What does the above function do? 
1. Will compile but won't do anything useful 
2. copies contents of `s` at the end of `d` (with one small code change)
3. Will execute forever 
4. None of the above 

## Quiz 11 - size function for int array

**"It is possible to write a function `arraylen(int arr[])` 
(similar to `strlen`) which will return the length of 
the integer array."** 

The above statement is 
1. True
2. False 
3. Indeterminable 
4. Not necessary - `strlen` will itself do the job 


## Quiz 12  - what does this function do? 

![mystery12](http://j.mp/stringLenInOneLine)

#### Quiz 13  - what does this function do? 
![mystery13](http://j.mp/mysteryFunc13)


# What next?

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
-->**Table of Contents**

* [Computer Science Glossary](#computer-science-glossary)  
	* [Conceptual](#conceptual)  
	*  [Trends](#trends)  
	* [Programming Related](#programming-related)  
	* [Interesting!](#interesting)  
	* [Examples of other useful glossaries](#examples-of-other-useful-glossaries)  
	* [MISC NOTES](#misc-notes)  
		* [The persuasion for Functional Programming](#the-persuasion-for-functional-programming)  
		* [MVC-UML](#mvc-uml)  

# Computer Science Glossary

**tl;dr 0** -  Computer Science is the study of money making Algorithms  
**tl;dr 1** -  [Algorithm is a Mapping] = Functional Mapping of Input Data (graph ADT) to Output Data (graph ADT)  
**tl;dr 2** -  "[Practically everything (_including an algorithm_) is a Graph.][Everything is a graph]"  
- Learn Graph Theory interactively! https://mrpandey.github.io/d3graphTheory/

But **why**? Inspired by 
- An example of one of [the simplest types of graphs is a singly linked list!]...and to reinforce this I found this:
	 - ![Image](https://ece.uwaterloo.ca/~dwharder/aads/Abstract_data_types/images/ADT.png)

 - From [ZeroToHero] in 60 minutes in Computer Science 
 - [What is Computer Science?] - as part of student orientation on **day 1** of college

## Conceptual
| Term          | Description |
|---------------|:------------|
| Computer Science | is the study of special type of functions (a.k.a. Algorithms) |
| Problem Solving| The ultimate goal of computer scientists |
| Algorithm   |  a _solution_ to a problem; a step-by-step list of instructions for solving any instance of the problem that might arise; is a special form of function (a mapping); is the [data model]? |
| Data | The generic name for input and output that is provided to a function, represented usually by a combination of special cases of a Graph, from single variable to linear and non-linear data structures |
| Graph       | the most general purpose description of representing data for an algorithm; an abstract data type; An example of one of [the simplest types of graphs is a singly linked list]!|
| Function    | a combination of [constructs][Constructs] referred to as "steps" that implement a specific algorithm |
| Input       | data (a set of variables) that is provided to a function to generate the output, can be represented as a Graph |
| Output      | The return value _(s)_ of a function, can be represented as a Graph |
| Complexity| Computer science also is about optimization; efficient use of time and space; Space and time complexity analysis; [Big O Notation]


**VVIP is Algorithm:** An algorithm is a well defined procedure for performing a task. A household example of an algorithm is a recipe -- for example, the list of ingredients together with the sequence of instructions needed to bake a pie. In order for a computer to perform a task, it needs ingredients -- the **data** -- and instructions -- the **algorithm**.

## Trends
| Term          | Description |
|---------------|:------------|
| Machine Learning (ML) | A branch of statistics and computer science; Data mining, one of the categories of ML is enabled by Knowledge Discovery in Data (KDD) which refers to the broad process (_a.k.a._ algorithmic patterns) of finding knowledge (_a.k.a._ patterns) in the Input dataset. **In other words, ML is all about patterns (in the form of functions) finding other patterns (in data)**. *“The more data, the better the algorithms. And the better the algorithms, the better the quality of service offered by Amazon, Facebook or Google. This is the positive feedback law of machine learning. Previous sources of market power have been patents (Xerox), network externalities (IBM) and government regulations and franchises (AT&T). All of these still matter, of course, in the age of the internet. But machine learning as a source of competitive advantage adds another, technological driver whereby those whose offerings — for whatever initial reason — achieve market leadership are endowed with an amplifying ability continuously to improve their relative market position.”* - read more at https://medium.economist.com/will-big-data-create-a-new-untouchable-business-elite-8dc23bcaa7cb |
| Artifical Intelligence (AI) | Computational algorithms that intend to replicate human intelligence and, ideally, improve upon it. For example, http://j.mp/marketingAI |

## Programming Related 
_Theory influences design; design influences programming._

| Term          | Description |
|---------------|:------------|
| Design Pattern| In software engineering, a design pattern is a general repeatable solution (_a.k.a._ algorithm) to a commonly occurring problem in software design. A design pattern isn't a finished design that can be transformed directly into code. It is a description or template for how to solve a problem that can be used in many different situations. |
| **MVC** Pattern | MVC Pattern stands for Model-View-Controller Pattern. This pattern is used to separate application's concerns. Model - Model represents an object or JAVA POJO carrying data. It can also have logic to update controller if its data changes.|
|Unified Modeling Language| **UML** is a common language for business analysts, software architects and developers used to describe, specify, design, and document existing or new business processes, structure and behavior of artifacts of software systems. An example of a [MVC diagram](#mvc-uml) is provided below.|
| Object| Objects are the coupling of Function and Data; A region of storage with associated semantics. After the declaration `int i;` we say that "i is an object of type int." In OO/C++, "object" usually means "an instance of a class." Thus a class defines the behavior of possibly many objects (instances). In other words, a class is a blueprint based on which objects are created. 
| Abstraction | Layers "hidden under the hood" to simplify the solution development; An email send request from application layer is handled by the series of network layers under the hood. The programmer only uses an interface(function call) from the layer below without knowing its implementation details. You can build/expand the features of one layer without affecting other. Abstraction is the cleaner way to arrange/build the complex system in layers. |
| OOP _(PDS-2)_| Object oriented programming concepts including encapsulation, inheritance and [polymorphism](http://bit.ly/PolyVideoKG) ; by way of an example, here's a C++ STL graph implementation for a [family tree](http://www.boost.org/doc/libs/1_62_0/libs/graph/example/family-tree-eg.cpp)
| Data Structure _(PDS_1)_| Specific programming structures used for implementing abstract data type like a [graph] ADT; an array, a linked list, a hashmap; here are some new [functional data structures](http://bit.ly/functionalDS); Why ADT? Review [this](https://github.com/kgisl/project-ideas/blob/master/ias%2FadtSummary.md#adt) |
| [Constructs] _(FOCP)_ | Building blocks of a program - there are 7 fundamental ones (variables, sequences, selection, repetition, function (aka sub-routines), indirection and recursion); and then there are [31 variants]
| Problem sets | A carefully curated set of problems to achieve specific learning outcomes; increase your familiarity C language constructs by tackling the problem set at http://bit.ly/kitepc1  | 
| Programming | The _art_ of writing programs/code to accomplish problem solving using efficient algorithms |
| Program |An organized list of instructions that, when executed, causes the computer to behave in a predetermined manner|
| Pseudocode| Pseudocode is an informal high-level description of a computer program (_a.k.a_ algorithm). It uses the structural conventions of a normal programming language, but is intended for human reading rather than machine reading. Variable declarations, system specific code and some subroutines are omitted. |
| Code Optimization|A method of code modification to improve code quality and efficiency|
| TDD | Test driven development, an important coding skill that is recommended for fresh talent that is entering the industry |
| API | Application Programming Interface, the implementation of an algorithm in a specific language/technology; The API in the [APIs Are Eating The World]
| Memory| Physical entities (bits, nibbles, CPU registers, cache, RAM, disk, tape) that help store and retrieve data |
| Internet | The internetwork (internet) of machines enables the interaction between anything (human-machine/machine-machine/human-human) from anywhere at anytime. The internet extends your memory unlimited. With the internet, you can access ‘everything’. |

## Interesting! 
| Term          | Description |
|:---------------|:------------|
| Algorithm Etymology| Etymologically, the word 'algorithm' is a combination of the Latin word `algorismus`, named after `Al-Khwarizmi`, a 9th-century Persian mathematician, and the Greek word `arithmo`, meaning "number"|
| Graph Algorithms | [Graph algorithms = Iterations + Data Structure?]| 
| Deterministic vs Non-deterministic| A computer program indeed implements a function, i.e. it maps to the input values to some uniquely defined output values. There are two **exceptions** to be considered: a program can be non-deterministic, meaning that different runs won't generate the same output; a program may fail to terminate, meaning that you are outside the domain of definition. Is implementing a [Syracuse Algorithm] non-deterministic? |
| Everything is a Graph| “So in a sense, graphs can give us an equivalent yet complementary view to the object-oriented paradigm. In OO we have objects; in graphs we have nodes. In OO, we have "relations between objects"; in graphical models we have edges. So we can conclude that Everything is a Graph.” http://buff.ly/2fx7JBU 
| Practically, everything is a graph | Read about the propaganda  [here](http://www.tcl-sfs.uni-tuebingen.de/~cornell/prolog/Propaganda.html) and [here](http://www.tcl-sfs.uni-tuebingen.de/~cornell/prolog/Graphs001.html) as well |
| Structural Programming|is an archetype to achieve clarity, quality and reduced development time by making extensive use of modularity with only three constructs: sequence, selection and iteration |
| Why Structural Programming?| It is a precursor to OOP. **Edsger W.Dijkstra** pervasively used [Structurpoal Programming] as a way to avoid [spaghetti code]. It is a logical thinking approach to solve a problem in all areas by applying decomposition to generate a hierarchical structure.|
| Why Functional Programming?| The latest (and final?) paradigm shift to  take advantage of the Utility computing era (aka Cloud Computing) which provides tremendous computing power on tap at exceptionally low cost compared to ownership.
| Functional programming|  is a programming paradigm that conceives computation as the evaluation of mathematical functions and avoids state and mutable data. Functional programming emphasizes the application of functions, in contrast to imperative programming, which emphasizes changes in state and the execution of sequential commands. Functional programming is defined more by a set of common concerns and themes than any list of distinctions from other paradigms. Often considered important are higher-order and first-class functions, closures, and recursion. Other common features of functional programming languages are continuations, Hindley-Milner type inference systems, non-strict evaluation (including, but not limited to, "laziness"), and monads. |
| Three laws | The computing capacity doubles every 18 months (Moore). The storage capacity doubles every 12 months (Kryder). The internet bandwidth doubles every 24 months (Nielsen).|

## Examples of other useful glossaries
- [Pointer specific](https://github.com/kgisl/project-ideas/blob/master/ias/pointerGlossary.md)
- [OOP specific](https://drive.google.com/file/d/0Bwu4iGPfYEufd2htbEtqUThqRWM/view?usp=sharing)
- [Programming specific](http://www.labautopedia.org/mw/List_of_programming_and_computer_science_terms)
- [Simplified Computer Science Glossary](https://pdfs.semanticscholar.org/a6a4/0519cc0d2919a3d4818e103466cbe3a1ff3f.pdf) 

## MISC NOTES 

### The persuasion for Functional Programming  
- Binary search shows you will find the right person within 17 selections across a 1,000,000 million address book 
- The analysis of the Rubik's cube using graphs recently revealed that there is always a solution with 21 moves (or less) regardless of the cube's initial state....amazing isn't it?
- Whatsapp - Erlang is at the core of it  
- Elm Programming - functional reactive for the front end; much faster and reliable than writing JavaScript code directly  
- PAGE RANK ALGORITHM - contributed to a wealth creation of USD 200 billion.   
- UBER - is all about travelling salesman algorithm on steroids!  - USD 50 billion valuation   
- Why Logic Programming is So Wonderful; From Descriptions of Problems to Solutions of Problems  
- Everything looks like a graph but must not be drawn as one?
	- https://gephi.wordpress.com/2011/10/12/everything-looks-like-a-graph-but-almost-nothing-should-ever-be-drawn-as-one/
    - https://dhs.stanford.edu/algorithmic-literacy/everything-is-a-graph-and-drawing-it-as-such-is-always-the-best-thing-to-do/

![Doodle](https://rawgit.com/kgisl/project-ideas/master/ias/glossaryDoodle.jpg)

![MVC](https://rawgit.com/kgisl/project-ideas/master/ias/MVC-diagram.jpg)

### MVC-UML  
[Credit: MVC UML Diagram](https://www.tutorialspoint.com/design_pattern/images/mvc_pattern_uml_diagram.jpg)  

![MVC-UML](https://rawgit.com/kgisl/project-ideas/master/ias/mvc_pattern_uml_diagram.jpg)


[//]: # (Links to various sites which are referred to in this glossary)
[Big O Notation]: http://j.mp/bigONotation
[Everything is a Graph]: http://www.tcl-sfs.uni-tuebingen.de/~cornell/prolog/Graphs001.html
[What is Computer Science?]: https://interactivepython.org/runestone/static/pythonds/Introduction/WhatIsComputerScience.html
[Algorithm is a Mapping]: http://j.mp/algorithmIsAMapping
[Constructs]: http://j.mp/constructAnalogy
[31 variants]: https://en.wikipedia.org/wiki/Category:Programming_constructs
[APIs Are Eating The World]: http://www.informationweek.com/mobile/mobile-applications/apis-are-eating-the-world/a/d-id/1320551
[data model]: https://en.wikipedia.org/wiki/Data_model
[graph]: https://www.cs.bu.edu/teaching/c/graph/linked/
[the simplest types of graphs is a singly linked list!]: https://www.topcoder.com/community/data-science/data-science-tutorials/introduction-to-graphs-and-their-data-structures-section-1/
[ZeroToHero]: https://medium.freecodecamp.com/from-zero-to-front-end-hero-part-1-7d4f7f0bff02#.5aard5in7
[Graph algorithms = Iterations + Data Structure?]: https://web.engr.oregonstate.edu/~erwig/papers/GraphAlg=Iter+DS_WG92.pdf
[Syracuse Algorithm]: http://mathworld.wolfram.com/CollatzProblem.html
[Structural Programming]: https://www.computer.org/csdl/mags/co/1981/03/01667281.pdf
[spaghetti code]: https://en.wikipedia.org/wiki/Spaghetti_code 
<!--stackedit_data:
eyJoaXN0b3J5IjpbOTEzNTU2NTM4LC05NTI3OTg0NjksLTYxNT
U0ODg4MywtMTA3MTQwMTAyNCwyMTIxODU0MDU0LC0xNjAwMDc2
MjgyLC01NzAxMzgxNjUsLTE5ODQ0MTE3NiwtNDc4OTQxOTc0LC
0xMzU4Mzg1Mzk4LDE0NjYxMDQxNjgsOTE0MTYwMTEwLDc5MTI1
MzQ0MCwxMTg0Mzg4ODQzLC04NzYxNTcxNTcsLTEwNDc1NzE3Nj
gsMTQ5NDY3NDU1MiwtNDEzODQ5OTg1LDIxOTI3ODE4NCwxODIy
OTk4Mzc5XX0=
-->
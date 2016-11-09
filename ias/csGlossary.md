# Computer Science Glossary

**tl;dr 0** -  Computer Science is the study of money making Algorithms  
**tl;dr 1** -  [Algorithm is a Mapping] = Functional Mapping of Input Data (graph ADT) to Output Data (graph ADT)  
**tl;dr 2** -  "[Practically everything (_including an algorithm_) is a Graph.][Everything is a graph]"

### Conceptual
| Term          | Description |
|---------------|:------------|
|Computer Science | is the study of special type of functions (a.k.a. Algorithms) |
|Problem Solving| The ultimate goal of computer scientists |
|Algorithm   |  a step-by-step list of instructions for solving any instance of the problem that might arise; is a special form of function (a mapping); is the [data model]? |
|Data | The generic name for input and output that is provided to a function, represented usually by a combination of special cases of a Graph, from single variable to linear and non-linear data structures |
|Graph       | the most general purpose description of representing data for an algorithm; an abstract data type; An example of one of [the simplest types of graphs is a singly linked list]!|
|Function    | a combination of [constructs][Constructs] referred to as "steps" that implement a specific algorithm |
|Input       | data (a set of variables) that is provided to a function to generate the output, can be represented as a Graph |
|Output      | The return value _(s)_ of a function, can be represented as a Graph |
|Complexity| Computer science also is about optimization; efficient use of time and space; Space and time complexity analysis; **O(N)**

Inspired by 
 - An example of one of [the simplest types of graphs is a singly linked list!]
 - From [ZeroToHero] in 60 minutes in Computer Science 
 - [What is Computer Science?] - as part of student orientation on **day 1** of college

### Programming Related 

| Term          | Description |
|---------------|:------------|
|Object| Objects are the coupling of Function and Data 
|OOP _(PDS-2)_| Object oriented programming concepts including encapsulation, inheritance and [polymorphism](http://bit.ly/PolyVideoKG) ; a C++ STL graph implementation for a [family tree](http://www.boost.org/doc/libs/1_62_0/libs/graph/example/family-tree-eg.cpp)
|Data Structure _(PDS_1)_| Specific programming structures used for implementing abstract data type like a [graph] ADT; an array, a linked list, a hashmap; here are some new [functional data structures](http://bit.ly/functionalDS)|
|[Constructs] _(FOCP)_ | Building blocks of a program - there are 7 fundamental ones (variables, sequences, selection, repetition, function (aka sub-routines), indirection and recursion); and then there are [31 variants]
|Problem sets | A carefully curated set of problems to achieve specific learning outcomes; increase your familiarity C language constructs by tackling the problem set at http://bit.ly/kitepc1  | 
|Programming| The _art_ of writing code to accomplish problem solving using efficient algorithms |
|TDD | Test driven development, an important coding skill that is recommended for fresh talent that is entering the industry |
|API | Application Programming Interface, the implementation of an algorithm in a specific language/technology; The API in the [APIs Are Eating The World]
|Memory| Physical entities (bits, nibbles, CPU registers, cache, RAM, disk, tape) that help store and retrieve data 

### Interesting! 
| Term          | Description |
|:---------------|:------------|
|Graph Algorithms | [Graph algorithms = Iterations + Data Structure?]| 
|Deterministic vs Non-deterministic| A computer program indeed implements a function, i.e. it maps to the input values to some uniquely defined output values. There are two **exceptions** to be considered: a program can be non-deterministic, meaning that different runs won't generate the same output; a program may fail to terminate, meaning that you are outside the domain of definition. Is implementing a [Syracuse Algorithm] non-deterministic? |
|Everything is a Graph| “So in a sense, graphs can give us an equivalent yet complementary view to the object-oriented paradigm. In OO we have objects; in graphs we have nodes. In OO, we have "relations between objects"; in graphical models we have edges. So we can conclude that Everything is a Graph.” http://buff.ly/2fx7JBU 
|Practically, everything is a graph | Read about the propaganda  [here](http://www.tcl-sfs.uni-tuebingen.de/~cornell/prolog/Propaganda.html) and [here](http://www.tcl-sfs.uni-tuebingen.de/~cornell/prolog/Graphs001.html) as well  |
|Why Functional Programming?| The latest (and final?) paradigm shift to  take advantage of the Utility computing era (aka Cloud Computing) which provides tremendous computing power on tap at exceptionally low cost compared to ownership.
|Functional programming|  is a programming paradigm that conceives computation as the evaluation of mathematical functions and avoids state and mutable data. Functional programming emphasizes the application of functions, in contrast to imperative programming, which emphasizes changes in state and the execution of sequential commands. Functional programming is defined more by a set of common concerns and themes than any list of distinctions from other paradigms. Often considered important are higher-order and first-class functions, closures, and recursion. Other common features of functional programming languages are continuations, Hindley-Milner type inference systems, non-strict evaluation (including, but not limited to, "laziness"), and monads. |

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

### Examples of other useful glossary
- [OOP specific](https://drive.google.com/file/d/0Bwu4iGPfYEufd2htbEtqUThqRWM/view?usp=sharing)
- [Programming specific](http://www.labautopedia.org/mw/List_of_programming_and_computer_science_terms)
- [Simple](https://pdfs.semanticscholar.org/a6a4/0519cc0d2919a3d4818e103466cbe3a1ff3f.pdf) 

### MISC NOTES 

####THE PERSUASION FOR FUNCTIONAL PROGRAMMING 
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

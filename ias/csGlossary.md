# Computer Science Glossary

**tl;dr 0** -  Computer Science is the study of money making Algorithms  
**tl;dr 1** -  [Algorithm is a Mapping] = Functional Mapping of Input Data (graph ADT) to Output Data (graph ADT)  
**tl;dr 2** -  "[Practically everything (_including an algorithm_) is a Graph.][Everything is a graph]"

But **why**? Inspired by 
 - An example of one of [the simplest types of graphs is a singly linked list!]
 - From [ZeroToHero] in 60 minutes in Computer Science 
 - [What is Computer Science?] - as part of student orientation on **day 1** of college

### Conceptual
| Term          | Description |
|---------------|:------------|
|Computer Science | is the study of special type of functions (a.k.a. Algorithms) |
|Problem Solving| The ultimate goal of computer scientists |
|Algorithm   |  a _solution_ to a problem; a step-by-step list of instructions for solving any instance of the problem that might arise; is a special form of function (a mapping); is the [data model]? |
|Data | The generic name for input and output that is provided to a function, represented usually by a combination of special cases of a Graph, from single variable to linear and non-linear data structures |
|Graph       | the most general purpose description of representing data for an algorithm; an abstract data type; An example of one of [the simplest types of graphs is a singly linked list]!|
|Function    | a combination of [constructs][Constructs] referred to as "steps" that implement a specific algorithm |
|Input       | data (a set of variables) that is provided to a function to generate the output, can be represented as a Graph |
|Output      | The return value _(s)_ of a function, can be represented as a Graph |
|Complexity| Computer science also is about optimization; efficient use of time and space; Space and time complexity analysis; [Big O Notation]

### Trends
| Term          | Description |
|---------------|:------------|
|Machine Learning (ML) | A branch of statistics and computer science; Data mining, one of the categories of ML is enabled by Knowledge Discovery in Data (KDD) which refers to the broad process (_a.k.a._ algorithmic patterns) of finding knowledge (_a.k.a._ patterns) in the Input dataset

### Programming Related 
_Theory influences design; design influences programming._

| Term          | Description |
|---------------|:------------|
|Design Pattern| In software engineering, a design pattern is a general repeatable solution (_a.k.a._ algorithm) to a commonly occurring problem in software design. A design pattern isn't a finished design that can be transformed directly into code. It is a description or template for how to solve a problem that can be used in many different situations. |
|**MVC** Pattern | MVC Pattern stands for Model-View-Controller Pattern. This pattern is used to separate application's concerns. Model - Model represents an object or JAVA POJO carrying data. It can also have logic to update controller if its data changes.|
|Unified Modeling Language| **UML** is a common language for business analysts, software architects and developers used to describe, specify, design, and document existing or new business processes, structure and behavior of artifacts of software systems. An example of a [MVC diagram](#mvc-uml) is provided below.|
|Object| Objects are the coupling of Function and Data 
|OOP _(PDS-2)_| Object oriented programming concepts including encapsulation, inheritance and [polymorphism](http://bit.ly/PolyVideoKG) ; by way of an example, here's a C++ STL graph implementation for a [family tree](http://www.boost.org/doc/libs/1_62_0/libs/graph/example/family-tree-eg.cpp)
|Data Structure _(PDS_1)_| Specific programming structures used for implementing abstract data type like a [graph] ADT; an array, a linked list, a hashmap; here are some new [functional data structures](http://bit.ly/functionalDS)|
|[Constructs] _(FOCP)_ | Building blocks of a program - there are 7 fundamental ones (variables, sequences, selection, repetition, function (aka sub-routines), indirection and recursion); and then there are [31 variants]
|Problem sets | A carefully curated set of problems to achieve specific learning outcomes; increase your familiarity C language constructs by tackling the problem set at http://bit.ly/kitepc1  | 
|Programming | The _art_ of writing programs/code to accomplish problem solving using efficient algorithms |
|Program |An organized list of instructions that, when executed, causes the computer to behave in a predetermined manner|
|Pseudocode| Pseudocode is an informal high-level description of a computer program (_a.k.a_ algorithm). It uses the structural conventions of a normal programming language, but is intended for human reading rather than machine reading. Variable declarations, system specific code and some subroutines are omitted. |
|Code Optimization|A method of code modification to improve code quality and efficiency|
|TDD | Test driven development, an important coding skill that is recommended for fresh talent that is entering the industry |
|API | Application Programming Interface, the implementation of an algorithm in a specific language/technology; The API in the [APIs Are Eating The World]
|Memory| Physical entities (bits, nibbles, CPU registers, cache, RAM, disk, tape) that help store and retrieve data 

### Interesting! 
| Term          | Description |
|:---------------|:------------|
|Graph Algorithms | [Graph algorithms = Iterations + Data Structure?]| 
|Deterministic vs Non-deterministic| A computer program indeed implements a function, i.e. it maps to the input values to some uniquely defined output values. There are two **exceptions** to be considered: a program can be non-deterministic, meaning that different runs won't generate the same output; a program may fail to terminate, meaning that you are outside the domain of definition. Is implementing a [Syracuse Algorithm] non-deterministic? |
|Everything is a Graph| “So in a sense, graphs can give us an equivalent yet complementary view to the object-oriented paradigm. In OO we have objects; in graphs we have nodes. In OO, we have "relations between objects"; in graphical models we have edges. So we can conclude that Everything is a Graph.” http://buff.ly/2fx7JBU 
|Practically, everything is a graph | Read about the propaganda  [here](http://www.tcl-sfs.uni-tuebingen.de/~cornell/prolog/Propaganda.html) and [here](http://www.tcl-sfs.uni-tuebingen.de/~cornell/prolog/Graphs001.html) as well |
|Structural Programming|is an archetype to achieve clarity, quality and reduced development time by making extensive use of modularity with only three constructs: sequence, selection and iteration |
|Why Structural Programming?| It is a precursor to OOP. **Edsger W.Dijkstra** pervasively used [Structurpoal Programming] as a way to avoid [spaghetti code]. It is a logical thinking approach to solve a problem in all areas by applying decomposition to generate a hierarchical structure.|
|Why Functional Programming?| The latest (and final?) paradigm shift to  take advantage of the Utility computing era (aka Cloud Computing) which provides tremendous computing power on tap at exceptionally low cost compared to ownership.
|Functional programming|  is a programming paradigm that conceives computation as the evaluation of mathematical functions and avoids state and mutable data. Functional programming emphasizes the application of functions, in contrast to imperative programming, which emphasizes changes in state and the execution of sequential commands. Functional programming is defined more by a set of common concerns and themes than any list of distinctions from other paradigms. Often considered important are higher-order and first-class functions, closures, and recursion. Other common features of functional programming languages are continuations, Hindley-Milner type inference systems, non-strict evaluation (including, but not limited to, "laziness"), and monads. |

### Examples of other useful glossaries
- [Pointer specific](https://github.com/kgisl/project-ideas/blob/master/ias/pointerGlossary.md)
- [OOP specific](https://drive.google.com/file/d/0Bwu4iGPfYEufd2htbEtqUThqRWM/view?usp=sharing)
- [Programming specific](http://www.labautopedia.org/mw/List_of_programming_and_computer_science_terms)
- [Simplified Computer Science Glossary](https://pdfs.semanticscholar.org/a6a4/0519cc0d2919a3d4818e103466cbe3a1ff3f.pdf) 

### MISC NOTES 

####The persuasion for Functional Programming  
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

####MVC-UML  
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


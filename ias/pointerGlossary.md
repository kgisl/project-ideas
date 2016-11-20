##Pointers 

Conceptual understanding of Pointers (_aka_ **indirection**, is one of the 7 fundamental constructs http://j.mp/constructAnalogy) is best achieved by doing a lot of pointer problems. For a good problem set, try this one [here](http://bit.ly/pointerKITE). 

|Item | Interchangeable with  | Description | Example |
|:----------|:----------:|:------------|:-------------------|
|Integer	| Whole number | Any whole number value from 1 to 100000| 9930
|Integer variable | - | a variable type that can be initialized with _only_ a decimal value, e.g. **2220**) | int a_variable = 2220; | 

|Item | Interchangeable with | Description | Example |
|:----------|:----------:|:------------|:-------------------|
|Pointer	| A value; memory location address |A valid memory location value in hexadecimal | `0x400694`|
|Pointer variable | Pointer | a variable type that can be initialized _only_ with a memory address (_a.k.a._ **Pointer**) of other variables and not an integer (say decimal **2220**) | int* **pA**; pA = &a; | 
|Pointer type | Data type | refers to the type of the data retrieved or stored when *de-referencing* (using the `*` operator) a pointer variable | **int*** p; **char*** c; **float*** f;  | 
|Integer pointer | Integer Pointer Variable | When *de-referencing* (using the `*` operator) is used with the variable, it stores integer in the memory location | **int*** pInteger; *pInteger = 300;   | 
|Memory location value | Memory Address | Any physical memory location which can be accessed by the CPU | Any hexadecimal number between a range, say 0x1000 -> 0x10000 |
|Memory variable | Data variable | A human-defined name that might refer to one or more memory locations depending upon the type | **int a;** // 4 bytes starting at `0xbf943434` |
|Dereferencing | - | Using the `*` operator, retrieve or store a value in the memory location pointed to by the pointer variable | `*pA = 400;` | 
|Pointer in the LHS | - | Store data in the memory location pointed to | `*ppA = 23 + 39023;` 
|Pointer in the RHS | - | Retrieve data from the memory location pointed to | `int v = *ppA + 23;`  
|Invalid pointer assignments | - | Assigning an integer value as the address of a pointer | ppA = 23; // illegal because `23` is not a valid memory location | 
|Valid pointer assignments | - | Assigning a pointer variable to another pointer variable | If pA and pB are pointer variables, `pA = pB;`  |
|Pass by value | Call by value | Function arguments in [C][call by value in C] and [Java][call by value in Java] are strictly passed on as parameters to the called function _only by value_ | True or false? Read the [tutorial][call by value tutorial]
|Call by reference | Pass by reference | When functions are called with arguments that are either pointers (C) or references (C++) | True or false? **TBD**

[call by value in Java]: http://buff.ly/2g98GBN
[call by value tutorial]: http://javapapers.com/core-java/java-pass-by-value-and-pass-by-reference/
[call by value in C]: http://j.mp/callByValueC


### Code Quiz

[TOC]

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

	1. `swap (&a, &b)` and `swap (&c, &d); `  
	2. `swap (*a, *b)` and `swap (&c, &d); `  
	3. `swap (a, b)` and `swap (c, d); `  
	4. `swap (a, b)` and `swap (&c, &d); `  
	5. None of the above   


#### Quiz 4  - Bug Finder 

```c 

#include <stdio.h> 
#include <stdlib.h>
#include <string.h>

char* subString (const char* target, int start, int size)
{
        
    if (target ==0 || start+size > strlen(target))
        return ""; 

    char* result = (char*) malloc (size* sizeof(char));
    
    int i = 0;
    int j = start;
    for (; j < start + size; i++, j++) {
        *(result+i) = target[j];
    }
    
    *(result+i) = '\0';
    
    return result;
}


int main ()
{
    
    char str[20] = "CatDogMonkey";
    int start = 3 , size = 4;
    
    // scanf("%[^0123456789] %d %d", str, &start, &size);
    
    char* result = subString(str, start, size);
    if (strlen(result))
        printf ("%s", result);
    else
        printf ("NA");
    
    return 0;
    
}
```

The above program is almost **perfect** in that it defines a `substring` function which returns a substring of the input ("CatDogMonkey") starting from index 3 and of length 4.  Except there is one small yet major flaw. What is the error? 

#### Quiz 5  - Printer Arithmetic

```c
#include <stdio.h> 
#include <stdlib.h>

struct node { 
  char buf[10]; 
  int val[2];
};

typedef struct node Node;

int main ()
{
    char* pCharacter = "buffered text";
    int numbers[20] = {1, 2, 3, 4, 5}; 
    int* pInteger = numbers; 
    Node nodes[3]; 
    Node* pNode = nodes; 
    
    /* Line 19 */ printf ("%p %p %p\n", pCharacter++,pInteger++,pNode++); 
    /* Line 20 */ printf ("%p %p %p\n", pCharacter, pInteger, pNode); 

	void* vPointer = numbers; 
    vPointer++; 
    /* Line 24 */ printf ("%p ", vPointer);     
    return 0;
    
}
```

##### Question 5.1
If the output at Line 19 (the first `printf` statement) is: 
`0x400694 0xfff000ba0 0xfff000b60`

then the output at Line 20 (the next `printf` statement) is: 

1. `0x400694 0xfff000ba0 0xfff000b60`
2. `0x400698 0xfff000ba4 0xfff000b64`
2. `0x400695 0xfff000ba4 0xfff000b74`
3. None of the above 

##### Question 5.2
With reference to Line 24, the output will be: 

1. `0xfff000ba1`
2. Compiler will not compile
3. Undefined behavior
4. Any one of the above
	 
	 > Spoiler Alert: http://stackoverflow.com/a/3524270/307454


### Closing

![DoBetter](https://drive.google.com/uc?id=0Bwu4iGPfYEufejRhb2pMQl85eG8)

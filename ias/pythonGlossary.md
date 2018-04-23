
Table of Contents

[TOC]


## argument
> A value passed to a function (or method) when calling the function. 
> Contrast that with:  [parameter](#parameter) - a variable declared in a function (or method) for representing an argument. 

There are two kinds of argument:

**keyword argument:** an argument preceded by an identifier (e.g.
name=) in a function call or passed as a value in a dictionary
preceded by **.  For example, 3 and 5 are both keyword
arguments in the following calls to complex():

	complex(real=3, imag=5)
	complex(**{'real': 3, 'imag': 5})



**positional argument:** an argument that is not a keyword argument.
Positional arguments can appear at the beginning of an argument list
and/or be passed as elements of an iterable preceded by *.
For example, 3 and 5 are both positional arguments in the
following calls:

	complex(3, 5)
	complex(*(3, 5))

Arguments are assigned to the named local variables (aka parameters) in a function body.
See the Calls section for the rules governing this assignment.
Syntactically, any expression can be used to represent an argument; the
evaluated value is assigned to the local variable.
See also the [parameter](#parameter) glossary entry, the [FAQ question](http://j.mp/argsVsParams) on
the difference between arguments and parameters, and [PEP 362](http://j.mp/pep362_doc).



## attribute
A value associated with an object which is referenced by name using
dotted expressions.  For example, if an object `o` has an attribute
`a` it would be referenced as `o.a`.


## BDFL
Benevolent Dictator For Life, a.k.a. Guido van Rossum, Python’s creator.


## binary file
A file object able to read and write bytes-like objects.
Examples of binary files are files opened in binary mode ('rb', 'wb' or 'rb+'), sys.stdin.buffer, sys.stdout.buffer, and instances of io.BytesIO and gzip.GzipFile.

See also
A text file reads and writes str objects.


## coroutine
Coroutines is a more generalized form of subroutines. Subroutines are
entered at one point and exited at another point.  Coroutines can be
entered, exited, and resumed at many different points.  They can be
implemented with the async def statement.  See also
PEP 492.


## dictionary
An associative array, where arbitrary keys are mapped to values.  The
keys can be any object with __hash__() and __eq__() methods. Called a hash in Perl.


## dictionary view
The objects returned from `dict.keys()`, `dict.values()`, and
`dict.items()` are called dictionary views. They provide a dynamic
view on the dictionary’s entries, which means that when the dictionary
changes, the view reflects these changes. To force the
dictionary view to become a full list use `list(dictview)`.  

See Dictionary view objects.


## docstring
A string literal which appears as the first expression in a class,
function or module.  While ignored when the suite is executed, it is
recognized by the compiler and put into the __doc__ attribute
of the enclosing class, function or module.  Since it is available via
introspection, it is the canonical place for documentation of the
object.


## expression
A piece of syntax which can be evaluated to some value.  In other words,
an expression is an accumulation of expression elements like literals,
names, attribute access, operators or function calls which all return a
value.  In contrast to many other languages, not all language constructs
are expressions.  There are also statements which cannot be used
as expressions, such as if.  Assignments are also statements,
not expressions.


## file object
An object exposing a file-oriented API (with methods such as
read() or write()) to an underlying resource.  Depending
on the way it was created, a file object can mediate access to a real
on-disk file or to another type of storage or communication device
(for example standard input/output, in-memory buffers, sockets, pipes,
etc.).  File objects are also called file-like objects or streams.
There are actually three categories of file objects: raw binary files, buffered
binary files and text files.

Their interfaces are defined in the `io` module.  The canonical way to create a file object is by using the open() function.


## function
A series of statements which returns some value to a caller. It can also
be passed zero or more arguments which may be used in
the execution of the body. See also parameter, method,
and the Function definitions section.


## immutable
An object with a fixed value.  Immutable objects include numbers, strings and
tuples.  Such an object cannot be altered.  A new object has to
be created if a different value has to be stored.  They play an important
role in places where a constant hash value is needed, for example as a key
in a dictionary.


## iterable
An object capable of returning its members one at a time. Examples of
iterables include all sequence types (such as list, str,
and tuple) and some non-sequence types like dict,
file objects, and objects of any classes you define
with an __iter__() or __getitem__() method.  Iterables can be
used in a for loop and in many other places where a sequence is
needed (zip(), map(), ...).  When an iterable object is passed
as an argument to the built-in function iter(), it returns an
iterator for the object.  This iterator is good for one pass over the set
of values.  When using iterables, it is usually not necessary to call
iter() or deal with iterator objects yourself.  The for
statement does that automatically for you, creating a temporary unnamed
variable to hold the iterator for the duration of the loop.  See also
iterator, sequence, and generator.


## keyword argument
See argument.


## list
A built-in Python sequence.  Despite its name it is more akin
to an array in other languages than to a linked list since access to
elements are O(1).


## list comprehension
A compact way to process all or part of the elements in a sequence and
return a list with the results.  result = ['{:#04x}'.format(x) for x in
range(256) if x % 2 == 0] generates a list of strings containing
even hex numbers (0x..) in the range from 0 to 255. The if
clause is optional.  If omitted, all elements in range(256) are
processed.


## mapping
A container object that supports arbitrary key lookups and implements the
methods specified in the Mapping or
MutableMapping
abstract base classes.  Examples
include dict, collections.defaultdict,
collections.OrderedDict and collections.Counter.


## method
A function which is defined inside a class body.  If called as an attribute
of an instance of that class, the method will get the instance object as
its first argument (which is usually called self).
See function and nested scope.


## module
An object that serves as an organizational unit of Python code.  Modules
have a namespace containing arbitrary Python objects.  Modules are loaded
into Python by the process of importing.
See also package.



## mutable
Mutable objects can change their value but keep their id().  See
also immutable.


## package
A Python module which can contain submodules or recursively,
subpackages.  Technically, a package is a Python module with an
__path__ attribute.
See also regular package and namespace package.



## parameter
A named entity in a function (or method) definition that
specifies an argument (or in some cases, arguments) that the
function can accept.  There are five kinds of parameter:

positional-or-keyword: specifies an argument that can be passed
either positionally or as a keyword argument.  This is the default kind of parameter, for example foo
and bar in the following:
def func(foo, bar=None): ...





positional-only: specifies an argument that can be supplied only
by position.  Python has no syntax for defining positional-only
parameters.  However, some built-in functions have positional-only
parameters (e.g. abs()).


keyword-only: specifies an argument that can be supplied only
by keyword.  Keyword-only parameters can be defined by including a
single var-positional parameter or bare * in the parameter list
of the function definition before them, for example kw_only1 and
kw_only2 in the following:
def func(arg, *, kw_only1, kw_only2): ...



var-positional: specifies that an arbitrary sequence of
positional arguments can be provided (in addition to any positional
arguments already accepted by other parameters).  Such a parameter can
be defined by prepending the parameter name with *, for example
args in the following:
def func(*args, **kwargs): ...



var-keyword: specifies that arbitrarily many keyword arguments
can be provided (in addition to any keyword arguments already accepted
by other parameters).  Such a parameter can be defined by prepending
the parameter name with **, for example kwargs in the example
above.


Parameters can specify both optional and required arguments, as well as
default values for some optional arguments.
See also the argument glossary entry, the FAQ question on
the difference between arguments and parameters, the inspect.Parameter class, the
Function definitions section, and PEP 362.


## positional argument
See argument.


## sequence
An iterable which supports efficient element access using integer
indices via the __getitem__() special method and defines a
__len__() method that returns the length of the sequence.
Some built-in sequence types are list, str,
tuple, and bytes. Note that dict also
supports __getitem__() and __len__(), but is considered a
mapping rather than a sequence because the lookups use arbitrary
immutable keys rather than integers.
The collections.abc.Sequence abstract base class
defines a much richer interface that goes beyond just
__getitem__() and __len__(), adding count(),
index(), __contains__(), and
__reversed__(). Types that implement this expanded
interface can be registered explicitly using
register().



## slice
An object usually containing a portion of a sequence.  A slice is
created using the subscript notation, [] with colons between numbers
when several are given, such as in variable_name[1:3:5].  The bracket
(subscript) notation uses slice objects internally.

```python
a = list(range(10))

even = slice(0, -1, 2)
print(a[even]) # [0, 2, 4, 6, 8]

everyThird = slice(1, -1, 3)
print(a[everyThird]) # [1, 4, 7]

```


## special method
A method that is called implicitly by Python to execute a certain
operation on a type, such as addition.  Such methods have names starting
and ending with double underscores.  Special methods are documented in
Special method names.


## statement
A statement is part of a suite (a “block” of code).  A statement is either
an expression or one of several constructs with a keyword, such
as if, while or for.


## text file
A file object able to read and write str objects.
Often, a text file actually accesses a byte-oriented datastream
and handles the text encoding automatically.
Examples of text files are files opened in text mode ('r' or 'w'),
sys.stdin, sys.stdout, and instances of
io.StringIO.

See also
A binary file reads and write bytes objects.




## triple-quoted string
A string which is bound by three instances of either a quotation mark
(”) or an apostrophe (‘).  While they don’t provide any functionality
not available with single-quoted strings, they are useful for a number
of reasons.  They allow you to include unescaped single and double
quotes within a string and they can span multiple lines without the
use of the continuation character, making them especially useful when
writing docstrings.

## tuple 

A tuple is a sequence of immutable Python objects. Tuples are sequences, just like lists. The differences between tuples and lists are, the tuples cannot be changed unlike lists and tuples use parentheses, whereas lists use square brackets.

## Zen of Python
Listing of Python design principles and philosophies that are helpful in
understanding and using the language.  The listing can be found by typing
“import this” at the interactive prompt.

----


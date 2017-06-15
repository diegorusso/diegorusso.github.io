---
title: The must-read Python's PEPs
categories:
- howto
- english
tags:
- python
- PEP
---

As Python developer, you should know what a PEP is. In case you don't,
> "PEP
stands for **Python Enhancement Proposal**. A PEP is a design document
providing information to the Python community, or describing a new feature for
Python or its processes or environment. The PEP should provide a concise
technical specification of the feature and a rationale for the feature"
(from [PEP 1](https://www.python.org/dev/peps/pep-0001/))

There are three kinds of PEP:
- A **Standards Track PEP** describes a new feature or implementation for
Python
- An **Informational PEP** describes a Python design issue, or provides general
guidelines or information to the Python community, but does not propose a new
feature
- A **Process PEP** describes a process surrounding Python, or proposes a
change to (or an event in) a process. Process PEPs are like Standards Track
PEPs but apply to areas other than the Python language itself

All PEPs are stored in a [github repository](https://github.com/python/peps)
and the list is in the [PEP 0](https://www.python.org/dev/peps/)

Now, the main question is: "**What are the most important PEPs that a Python
developer should be aware of?**" I went through the long list and I chose the
ones that I think are important to know.

The must know PEPs without witch you cannot be considered a Python programmer
are:
- [PEP 20 -- The Zen of Python](https://www.python.org/dev/peps/pep-0020/):
that's the first PEP you need to read and apply throughout your Python
development
- [PEP 8 -- Style Guide for Python Code](https://www.python.org/dev/peps/
pep-0008/): this PEP defines the coding convention when writing Python.
I expect everyone writing PEP8 compliant code
- [PEP 257 -- Docstring Conventions](https://www.python.org/dev/peps/
pep-0257/): conventions for Docstring in Python
- [PEP 287 -- reStructuredText Docstring Format](https://www.python.org/dev/
peps/pep-0257/): when plain text is not enough, reStructuredText is the answer
for Docstring

The following PEPs don't fall into any category but it's good to know their
existence anyway:
- [PEP 7 -- Style Guide for C Code](https://www.python.org/dev/peps/pep-0007/):
if you need to contribute to C implementation of Python, that's the PEP for
you
- [PEP 404 -- Python 2.8 Un-release Schedule](https://www.python.org/dev/peps/
pep-0404/): release not found! There will be never a 2.8 Python release.
The last Python 2 release is 2.7. It's time to move to Python 3!
- [PEP 440 -- Version Identification and Dependency Specification](https://www.
python.org/dev/peps/pep-0440/): this PEP describes a scheme for identifying
versions of Python software distributions, and declaring dependencies on
particular versions

The following PEPs instead will be split between Python versions (2 and 3) and
they just represent an attempt to summarise the most relevant ones in order to
pick peculiarities of the language itself. The version of python affected and
some personal extra comments will be side noted.

## Python 2
- [PEP 201 -- Lockstep Iteration (zip function)](https://www.python.org/dev/
peps/pep-0201/) (2.0) - _it's very handy_
- [PEP 202 -- List Comprehensions](https://www.python.org/dev/peps/pep-0202/)
(2.0) - _one of my favourites_
- [PEP 221 -- Import As](https://www.python.org/dev/peps/pep-0221/) (2.0)
- [PEP 234 -- Iterators](https://www.python.org/dev/peps/pep-0234/) (2.1) -
_trust me, you will use them_
- [PEP 236 -- Back to the \_\_future\_\_](https://www.python.org/dev/peps/
pep-0236/) (2.1) - _do you want to use_ `print()` _(from Python 3.X) in Python
2.X? That's the module for you_
- [PEP 255 -- Simple Generators (yield)](https://www.python.org/dev/peps/
pep-0255/) (2.2) - _once you know it, you'll love it_
- [PEP 279 -- The enumerate() built-in function](https://www.python.org/dev/
peps/pep-0279/) (2.3) - _sometime it is very useful_
- [PEP 282 -- A Logging System](https://www.python.org/dev/peps/pep-0282/)
(2.3) - _please, don't debug with_ `print()`
- [PEP 285 -- Adding a bool type](https://www.python.org/dev/peps/pep-0285/)
(2.3) - _I don't understand how you live without it!_
- [PEP 289 -- Generator Expressions](https://www.python.org/dev/peps/pep-0289/)
(2.4) - _list comprehensions with generators_
- [PEP 308 -- Conditional Expressions](https://www.python.org/dev/peps/
pep-0308/) (2.4) - _Python "ternary" expression:_ `X if C else Y`
- [PEP 318 -- Decorators for Functions and Methods](https://www.python.org/dev/
peps/pep-0318/) (2.4) - _@decorators are methods which wrap functions and
methods_
- [PEP 322 -- Reverse Iteration](https://www.python.org/dev/peps/pep-0322/)
(2.4)
- [PEP 324 -- subprocess - New process module](https://www.python.org/dev/peps/
pep-0324/) (2.4)
- [PEP 327 -- Decimal Data Type](https://www.python.org/dev/peps/pep-0327/)
(2.4) - _floatintg point are just too inexact. Period._
- [PEP 341 -- Unifying try-except and try-finally](https://www.python.org/dev/
peps/pep-0341/) - _Do you know that_ `try` _constructs allow an_ `else`
_statement?_
- [PEP 342 -- Coroutines via Enhanced Generators](https://www.python.org/dev/
peps/pep-0342/) (2.5) - _still need to get those!_
- [PEP 343 -- The "with" Statement](https://www.python.org/dev/peps/
pep-0343/) (2.5) - _really? Don't you know it? Shame on you!_
- [PEP 367 -- New Super](https://www.python.org/dev/peps/pep-0367/) (2.6) -
_that's important, read it!_

## Python 2 and 3
- [PEP 274 -- Dict Comprehensions](https://www.python.org/dev/peps/pep-0274/)
(originally 2.3, then 2.7 and 3.0) - _the beauty of list comprehensions applied
to_ `Dict`
- [PEP 372 -- Adding an ordered dictionary to collections](https://
www.python.org/dev/peps/pep-0372/) (2.7, 3.1) - _because order matters_
- [PEP 389 -- argparse - New Command Line Parsing Module](https://
www.python.org/dev/peps/pep-0389/) (2.7, 3.2) - _please, stop using optparse
right now!_

## Python 3
- [PEP 380 -- Syntax for Delegating to a Subgenerator (yield from)](
https://www.python.org/dev/peps/pep-0380/) (3.3) - _a generator to delegate
part of its operations to another generator_
- [PEP 405 -- Python Virtual Environments](https://www.python.org/dev/peps/
pep-0405/) (3.3) - _I'm really glad to see a tighter integration with virtual
environments_
- [PEP 417 -- Including mock in the Standard Library](https://www.python.org/
dev/peps/pep-0417/) (3.3) - _it's one of the first modules I pip install when
using Python 2.7_
- [PEP 435 -- Adding an Enum type to the Python standard library](
https://www.python.org/dev/peps/pep-0435/) (3.4)
- [PEP 450 -- Adding A Statistics Module To The Standard Library](
https://www.python.org/dev/peps/pep-0450/) (3.4) - _never used so far, but I
recognise its importance_
- [PEP 483 - The Theory of Type Hints](https://www.python.org/dev/peps/
pep-0483/) (3.5) - _that's just a theory for the next PEP_
- [PEP 484 - Type Hints ](https://www.python.org/dev/peps/pep-0484/) (3.5) -
_they are used to easier static analysis and refactoring, potential runtime
type checking, and (perhaps, in some contexts) code generation utilizing type
information. **Python will remain a dynamically typed language, and the authors
have no desire to ever make type hints mandatory, even by convention**_
- [PEP 485 -- A Function for testing approximate equality](
https://www.python.org/dev/peps/pep-0485/) (3.5) - `is_close` _enough_ :)
- [PEP 492 -- Coroutines with async and await syntax](
https://www.python.org/dev/peps/pep-0492/) (3.5) - _coroutines start being a
proper concept in Python_
- [PEP 525 -- Asynchronous Generators](https://www.python.org/dev/peps/
pep-0525/) (3.6) - _generators made asynchronous_
- [PEP 526 -- Syntax for Variable Annotations](https://www.python.org/dev/
peps/pep-0526/) (3.6) - _it's like PEP 484 but for variables_
- [PEP 530 -- Asynchronous Comprehensions](https://www.python.org/dev/peps/
pep-0530/) (3.6) - _things are getting complicated eh... asynchronous versions
of list, set, dict comprehensions and generator expressions_
- [PEP 3000 -- Python 3000](https://www.python.org/dev/peps/pep-3000/) (3000) -
_where 3v3rything begins!_
- [PEP 3101 -- Advanced String Formatting](https://www.python.org/dev/peps/
pep-3101/) (3.0) - _stop using % for string formatting and embrace_ `.format()`
_method (included in Python 2.6 as well)_
- [PEP 3105 -- Make print a function](https://www.python.org/dev/peps/
pep-3105/) (3.0) - _I told you not to use_ `print` _for debugging! Now all your
Python 2.X needs a huge refactoring for working in Python 3.X. Joking apart,
that's the most common error when you try to run Python 2.X code using Python
3.X intepreter._
- [PEP 3107 -- Function Annotations](https://www.python.org/dev/peps/pep-3107/)
(3.0)
- [PEP 3109 -- Raising Exceptions in Python 3000](https://www.python.org/dev/
peps/pep-3109/) (3.0) - _yep, in Python 3.X,_ `raise` _changes a bit. It's worth
having a look_
- [PEP 3110 -- Catching Exceptions in Python 3000](https://www.python.org/dev/
peps/pep-3110/) (3.0) - _see above_
- [PEP 3115 -- Metaclasses in Python 3000](https://www.python.org/dev/peps/
pep-3115/) (3.0) - _well, if you have ever used_ `__metaclass__`_, Python 3.X
don't_
- [PEP 3119 -- Introducing Abstract Base Classes](https://www.python.org/dev/
peps/pep-3119/) (3000) - `abc`_, no I haven't forgotten the alphabet :)_
- [PEP 3120 -- Using UTF-8 as the default source encoding](
https://www.python.org/dev/peps/pep-3120/) (3.0) - _this PEP removes a lot of
headeaches we have in Python 2.X_
- [PEP 3129 -- Class Decorators](https://www.python.org/dev/peps/pep-3129/)
(3.0) - _like PEP 318 but for classes_
- [PEP 3135 -- New Super](https://www.python.org/dev/peps/pep-3135/) (3.0) -
_it's PEP 367 for Python 3.X_
- [PEP 3148 -- futures - execute computations asynchronously](
https://www.python.org/dev/peps/pep-3148/) (3.2) - _The_ `concurrent.futures`
_module provides a high-level interface for asynchronously executing callables_
- [PEP 3156 -- Asynchronous IO Support Rebooted: the "asyncio" Module](
https://www.python.org/dev/peps/pep-3156/) (3.3) - _this is it! the asyncio
module_

Have I missed anything? What's your favourite PEP?

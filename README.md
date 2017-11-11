# CWorkshop2017
Notes &amp; Code used for the Engineering Society Git &amp; C Workshop in Nov. 2017

Carson Cook &amp; Ezra Goldberg
From the Queen's Engineering Society

## References

* &myVar – the memory location of myVar
  * Where myVar is actually held in memory
* Used to set where a pointer is actually pointing
* Changing a value at a memory location supersedes variable scope
  * Changing actual memory contents will always be kept in the program
* Can use this to change variable value with functions
  * void foo(int *num); int a; foo(&a);
  * void foo(int *num) { *num=6; }
  
  
## Pointers

* Pointer is a variable that points to a memory location
  * Declared via: int *p; 
  * int means that p will be pointing to a place that will hold an int
* AFTER declaration, * is used to dereference the pointer
  * *p - This means the value held at the place p is pointing
  * (*) in declaration is the sign that p is a pointer
  * During declaration, or after with NO *, assign where it is pointing
  * int *p = 0x123AF – p now points to the memory location 0x123aF
  * p = &myVar – p now points to where myVar is held
* In printf(), use %p to print address location

### Pointer Arithmetic

* p++ - increment the pointer p
  * This changes where it is pointing
* The change is determined by what type p is pointing to
  * Ex. An int is 4 bytes, incrementing an int pointer moves it forward by 4 bytes
  * Aside – with hex memory locations, one number is 4 bytes
  * If p pointed to 0x123, after p++ it would now point to 0x124
* NEVER do this manually – very easy to go off into bad memory

### Pointers and Arrays

* int arr[4];
   * The variable ‘arr’ is just a pointer to where arr[0] is held!
* That means the location of  arr[1] is just arr+1That means the value of arr[1] is just *(arr+1)!
  * (*) dereferences the memory location arr+1
* This is why you sometimes see functions with int * instead of int []
  * Or with C-Strings char *str = "" instead of char str[2];
  
### Function Arguments and Pointers

* You can have arguments in a function be pointers
  * As either an array or as a single pointer
* void foo(int *a, int b)
  * The value passed in for a needs to be a memory location
  * This could be a single memory location or an array memory location
* The value for b is a regular integer value
* Any operation with (*a) means the location holds that value
  * So in caller code, memory location passed in still holds that value
  * Memory reigns supreme – above scope!

### Double Pointers

* You can make a pointer that points to a pointer!
  * Or a pointer to a pointer to a pointer…etc
* Pointers have their own memory address where they are stored
* int **pp; //make a pointer that will point to an int pointer
  * int var=5; int *p=&var; pp=&p; 
  * Now *pp is p’s address, **pp is 5, *p is also 5
* These are really only needed with heap variables passed into functions
  * Avoid using multiple pointers if possible!

## Variable Scopes

* Scope is where a variable can be seen/used
* Where a variable is declared changes where it can be accessed from
* Declaration doesn’t assign memory, but it assigns type
  * fining gives value and memory
* If it is declared outside of a function, visible in entire file below declaration
  * This is called global
* If it is declared within {}, visible only within {}
  * Goes for functions, loops, if statements, etc.
* Inner scope inherits outer scope variables
  * Can even make variable of the same name in inner scope – hides outer scope one

## Variable Lifetimes

* Variable lifetime is the period of time where it has valid memory
  * For stack memory, the lifetime is as long as the variable is in scope
  * Memory could still hold the same value, but it is able to be overwritten
* Change to static variable affects the static variable for the rest of the code
  * Scope still applies – can only see the static variable when it is in scope
  * Global scope variables automatically static
  * Non-globals must have static keyword before type: static int myStatic;
  
## Memory

### Stack Memory

* Stack memory is where variables are stored by default
* When malloc is not used
* Variables in memory are added on top of the stack as they are declared
* Variable popped off top when they go out of scope
  * The memory still there with a value, but it can be overwritten
  * When a new variable is allocated, it overwrites an old stack variable’s memory
* NEVER return a memory location made in a function without malloc
  * This memory location is invalid and can be overwritten once the function ends
  
### Heap Memory

* Heap memory is outside of stack memory
* Valid for entire program lifetime, unless programmer de-allocates
* Any heap variable must be a pointer
* Allocated via malloc
  * Malloc argument is how much memory to make
  * Malloc returns memory location of allocated heap memory
* Deallocated via free
  * Argument is pointer to memory location
* Change via realloc
  * Takes a pointer to the memory and the new size to allocate for

### Heap vs. Stack

* Can run out of room on either
  * Due to too many variables, or in heap case not cleaning up after yourself
* Allocating to heap is slower than the stack
* Variables > 100 bytes should be put on heap for efficiency
* Why you get weird values when not initializing variables before use
  * When variable allocated in memory, some value at that location that may or may not be what you want/expect 
  * This is based on what was popped off heap/stack

## Recursion

* When a function calls itself
* Looks hard because we are confused by the same name
* To computer, EXACT same as function A calling function B!
  * Parameters are new variables on stack
  * Return from 2nd recursive call only ends 2nd call, NOT the 1st call
* Need some base case that will end a call – else infinite recursion
* Anything done recursively can be done with loops
  * Some things look nicer and are easier to understand with recursion
  * Recursion is slower – but negligible in all but most extreme cases

## Function Pointers

* Functions are held somewhere in memory
  * So, why not have a pointer that points to a function?
* int (*fp)(int,int) is a pointer call ‘fp’ that points to a function returning an int and taking two ints as arguments
  * Brackets around *fp are NEEDED
* Declare: int isSquare(int x, int y); 
  * Now can do fp=isSquare; int res = (*fp)(1,2);
* isSquare label itself is a function pointer
* Functions can take a function pointer as an argument
  * Really useful when a function needs to have a callback after some operation

## Structs

* Used to keep related data together in C
* Label that is invoked to access actual data
* Make a struct variable
  * If pointer: myStruct->var to access (same as (*myStruct).var)
  * Otherwise: myStruct.var to access
* Similar to classes in Java/C++
  * Less powerful though – no public/private, functions
  * But we can mimic these processes
* To mimic a class containing a function, we use function pointers!
  * Declare function pointer in class and assign it when the struct is made
  
## #Define

* Preprocessor directive – constant for entire program
  * Also called a macro
* Defines code that is ran when the macro label is invoked
  * This code can be anything – pretty much copy pasted where label is
* NO semicolon at the end
* Function macro possible – use brackets, like a normal function

#define FIVE 5

## C-Strings

* In C, strings are arrays of chars with a null character at then
  * Null character is ‘\0’
* char str[5]=“hello”
  * NOT OKAY! Need space for the null character even though you don’t actually write it out
  * Equivalent to char str[5]={‘h’,’e’,’l’,’o’,’\0’};
* Use null character to signify end of string when looping through
  * int i=0; while (str[i]!=‘\0’){ i++; }
  
## Modular Code in C

* One way is to split up between files
  * Declare types, functions in header files (.h)
  * Define functions in source files (.c)
* Then include header file in main.c (or whatever file is using defined code in that header)
* Implementing source file will include its corresponding header file
* Essentially copy pastes the code from the header/source files into where it was included

### Making a Header File

* Ensure everything in header only ever included once
  * Start with #pragma once
* Most compilers support pragma, if not, wrap with ifndef

#ifndef MYFILE_H
#define MYFILE_H
…
#endif

## Big-O

* Way to describe how an algorithm uses resources with respect to input data
* Often talked about in terms of execution time
  * Is NOT how long it takes to run – ONLY how it CHANGES
* Big-O is the worst case of an algorithm
  * Big-Theta is the exact case
  * Big-Omega is the best case
* Constant means O(1) – always the same amount of time
* Linear is O(n) or O(logn) or O(nlogn); Quadratic is O(n^2)
* Past quadratic (O(n^3, O(2^n) etc.) is generally not accepted

#include "Examples.h"
#include "scopes.h"

#define INIT_RECT(R, W, L) Rectangle R={.width=(W),.length=(L),.getSA=getSurfaceArea}
#define FIVE 5
#define MALLOC_1_INT(I) int *I=(int*)malloc(sizeof(int));\
                             *(I)=10 //The '\' means that they really are on the same line. Same as (sizeof(int)); *(I)...

int main() {
    /*
    int a = 5;
    printf("Before function, a=%d\n",a);
    pointersReferences(&a); //num will point to where a is held...so *num is value of a
    printf("After function, a=%d\n", a);
    */
    //pointerArithmetic();
    //pointerArray();
    /*
    int b = 10;
    int *p = &b;
    printf("Before function, b=%d\n", b);
    doublePointers(p);
    printf("After function, b=%d\n", b);
    */
    /*
    int mainVar = 0;
    lifeTimes(mainVar);
    lifeTimes(mainVar);
    */
    /*
    int *pointer = (int *) malloc(sizeof(int));
    *pointer = 5;
    heapLifetime(pointer);
    heapLifetime(pointer);
    */

    /*for (int i=0; i<1000; i++)
        blowMem();
    */
    //uninit();

    /*
    bar(); //can call a function declared in .h, defined in .c
    uint unsignedInt; //can use anything declared in .h
    */

    //5 recursion(5);

    //funcPointer(isSquare,3,5); //calling function with isSquare as value for function pointer

    //cStrings();

    //structs()

    //defines();

    //bigO();
    return 0;
}

void pointersReferences(int *num) {
    int b = 10;
    int *p = &b;
    //%p is how you print a memory address
    printf("Address of b = %p\nAddress p points to = %p\nValue where p points to = %d\nAddress p is held = %p\n", &b, p,
           *p, &p);
    *num = 6;
}

void pointerArithmetic() {
    int a = 10;
    int *p = &a;
    printf("P points to address %p\n", p);
    p++;
    printf("P now points to address %p\n", p);

    char b;
    char *p2 = &b;
    printf("P2 points to address %p\n", p2);
    p2++;
    printf("P2 now points to address %p\n", p2);
}

void pointerArray() {
    int arr[] = {1, 2, 3, 4, 5};
    int *p = arr; //this is just the start of the array!
    int *end = &arr[4];
    while (p != end + 1) { //doing end+1 is VERY dangerous, only used as example, NEVER do in practice
        (*p)++;
        p++;
    }
    for (int i = 0; i < 5; ++i) {
        printf("arr at %d = %d\n", i, arr[i]);
    }
}

void doublePointers(int *p) {
    int **pp;
    pp = &p; //could have done in one line: int **pp=&p;
    printf("Address p points to = %p\nAddress p held at = %p\nFirst address pp points to = %p\n"\
 "Second Address pp points to = %p\nAddress pp held at = %p\n", p, &p, *pp, pp, &pp);

    **pp = 11;
}


int globalVar = 10;

void lifeTimes(int mainVar) {
    static statVar = 0;
    int funcVar = 0;
    printf("statVar = %d\nmainVar = %d\nglobalVar = %d\nfuncVar = %d\n", statVar, mainVar, globalVar, funcVar);
    statVar++;
    mainVar++;
    globalVar++;
    funcVar++;
}

void heapLifetime(int *heapVar) {
    int *funcHeapVar = (int *) malloc(
            sizeof(int)); //makes new memory on heap! So, old value still in memory, but not accessible!
    printf("heapVar = %d\nAddress of funcHeapVar = %p\n", *heapVar, funcHeapVar);
    (*heapVar)++;
}

void blowMem() {
    int a;
    int *p = (int *) malloc(sizeof(int));
    printf("Address of a on stack = %p || Address of p on heap = %p\n", &a, p);
}

void uninit() {
    int a;
    printf("a = %d\n", a);
}

int recursion(int x) {
    static int numCalls = 0;
    printf("Call number: %d, X value: %d, X address: %p\n", numCalls, x, &x);
    if (x <= 1) { //base case - will always eventually hit this case
        return x;
    }
    numCalls++;
    return recursion(x - 1); //recursive call - calls itself
}

void isSquare(int x, int y) {
    if (x == y)
        printf("It is a square as %d == %d!\n", x, y);
    else
        printf("It is not a square as %d != %d!\n", x, y);
}

void funcPointer(void (*fp)(int, int), int a, int b) {
    void (*fp2)()=uninit; //setting the second function pointer to be another function - same return and params
    printf("fp2: ");
    (*fp2)(); //calling the// second function pointer
    printf("fp1: ");
    (*fp)(a, b); //calling the first function pointer with parameters
}

void structs(){
    Rectangle r; //can use Rectangle due to typedef - without would say struct rect r;
    r.length = 5;
    r.width = 7;
    r.getSA = getSurfaceArea;
    printf("R surface area = %f\n", r.getSA(r));
    Rectangle r2 = {5, 7, getSurfaceArea}; //easier way to declare, does the same thing - put order declared

    //or, could do r2 = { .width=5, .length=7, .getSA=getSurfaceArea};
    printf("R2 surface area = %0.2f\n", r2.getSA(r));

    //with pointer:
    Rectangle *rp = &r;
    printf("%0.2f = %0.2f\n", r.getSA(r), rp->getSA(*rp)); //-> used to access when struct var is a pointer - same as (*rp).getSA(*rp)

    //OR get really fancy and use a #define to initialize/assign
    INIT_RECT(rD, 5, 7);
    printf("R surface area = %0.2f\n", rD.getSA(rD));
}

float getSurfaceArea(Rectangle r) {
    return r.width * r.length;
}

void defines() {
    int a = FIVE;
    printf("%d = %d\n", a, FIVE);

    MALLOC_1_INT(p); //now p is a pointer to an integer
    printf("Location p points to on heap = %p, value is %d\n", p, *p);
}

void cStrings() {
    char *charStar = "This is a char*"; //could get into bad memory!
    char charArr[18] = {'T', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', ' ', 'c', 'h', 'a', 'r', 'a', 'r', 'r', '\0'};
    char charArr2[18] = "This is a chararr";
    char charArr3[17] = "This is a chararr"; //not enough room for ending null char!

    //%s prints a string - giving memory address to first item!
    printf("CharStar = %s\nCharArr = %s\nCharArr2 = %s\nCharArr3 = %s\n", charStar, charArr, charArr2, charArr3);
    //weird output for charrArr3 due to no null character - printf doesn't think it's over until it hits a null char!
    //iterates through memory addresses until finds null char
}

void bigO() {
    int n = 10;
    int count = 0;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++)
            count++;
    }
    printf("N^2 count: %d\n", count);
    count = 0;
    for (int i = 0; i < n; i++) {
        count++;
    }
    printf("N count: %d\n", count);
}
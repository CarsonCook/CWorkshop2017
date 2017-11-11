#include "scopes.h"

int globalTop;

void foo() {
    int fooVar;
    if (1) {
        int ifVar;
        ifVar = 1;
        fooVar = 5; //in if statement scope, but fooVar declared above in the same parent function scope
    }
    //ifVar=0; //cannot see this label - even though above, declared in an if statement
    //globalMid=1; //cannot see this label - even though it's 'global', declared underneath here
    globalTop = 10;
}

int globalMid = 2; //assigning in declaration okay for globals

void bar() {
    int barVar;

    for (int i = 0; i < 1; i++) {
        int forVar;
        forVar = 1;
    }
    //forVar=6; //cannot use this label - even though above, was declared in a for loop!
    barVar = 0;
    for (int i = 0; i < 1; i++) {} //different i!

    globalMid = 1;
}

int globalBottom = 10;
//globalBottom=12; //but can't change value afterwards, globally
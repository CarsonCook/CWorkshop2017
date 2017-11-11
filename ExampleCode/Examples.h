#pragma once

#include <stdio.h>
#include <malloc.h>

void pointersReferences(int *num);

void pointerArithmetic();

void pointerArray();

void doublePointers(int *p);

void lifeTimes(int mainVar);

void heapLifetime(int *heapVar);

void blowMem();

void uninit();

int recursion(int x);

void funcPointer(void (*fp)(int, int), int a, int b);

void isSquare(int x, int y);

typedef struct rect {
    float width, length;

    //can't declare function directly in structs
    /*float getSA(){
        return width*length;
    }*/

    float (*getSA)(struct rect);
} Rectangle;

float getSurfaceArea(Rectangle r);

void structs();

void defines();

void cStrings();

void bigO();
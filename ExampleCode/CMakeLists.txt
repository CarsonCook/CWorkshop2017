cmake_minimum_required(VERSION 3.8)
project(ExampleCode)

set(CMAKE_C_STANDARD 11)

set(SOURCE_FILES main.c scopes.c Examples.h scopes.h)
add_executable(ExampleCode ${SOURCE_FILES})
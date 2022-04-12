C Plus Plus with Jenkins - Project 1
==============================================
Build and run sample Helloworld with CMakeLists


## Issue 1:
    'nmake' '-?'
    failed with:
    The system cannot fine the file specified.

Cmake uses 'NMake Makefiles'  to generate makefiles. Must change to use 'MinGW Makefiles'.

**Workaround**

    > cmake -G "MinGW Makefiles" -B build/ .

There:

     -G: Makefiels generator
     -B: path build
     . : Cmake in current folder

To build execute file:

    > cmake --build makefile_folder



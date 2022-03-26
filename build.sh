#!/bin/bash

PROJECT_NAME=$1
OUTPUT_NAME=$2

echo "Building Project ${PROJECT_NAME}"
/usr/bin/g++ -g -Wall -std=c++17 ${PWD}/${PROJECT_NAME}/*.cpp -o ${PROJECT_NAME}/${OUTPUT_NAME}

echo "Run application  ${PROJECT_NAME}"
${PWD}/${PROJECT_NAME}/${OUTPUT_NAME}

#!/bin/bash

# Check if gfortran is installed
gfortran --help | head -1 | grep 'Usage: gfortran \[options\] file...'
[[ $? != 0 ]] && echo gfortran is not installed. && exit 1

# Install dependencies from app requirements file
cd /app
make clean; make

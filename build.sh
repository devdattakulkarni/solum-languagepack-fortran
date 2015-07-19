#!/bin/bash

# Check if gfortran is installed
gfortran --help | head -1 | grep 'Usage: gfortran \[options\] file...'
[[ $? != 0 ]] && echo gfortran is not installed. && exit 1

# Check if pip is installed
pip help
[[ $? != 0 ]] && echo python-pip is not installed. && exit 1

# Install dependencies from app requirements file
cd /app
pip install -r requirements.txt; make clean; make


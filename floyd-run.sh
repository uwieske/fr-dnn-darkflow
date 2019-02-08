#!/bin/sh
cd darkflow
#pip install -e .
python3 setup.py build_ext --inplace
cd ..
floyd run flow --help
#floyd run --task train
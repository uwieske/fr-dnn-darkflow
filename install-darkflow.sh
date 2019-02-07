#! /bin/sh

git clone https://github.com/thtrieu/darkflow.git
cd darkflow
pip install Cython
pip install opencv-python
conda install nomkl
pip install -e .

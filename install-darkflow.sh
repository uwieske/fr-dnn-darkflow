#! /bin/sh

pip install Cython
pip install opencv-python
conda install nomkl
git clone https://github.com/thtrieu/darkflow.git
cd darkflow
pip install -e .

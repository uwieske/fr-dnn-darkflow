#!/bin/sh
cd darkflow
pip install -e .
cd ..
floyd run --task train
#!/bin/sh
cd darkflow
pip install -e .
floyd run --task train
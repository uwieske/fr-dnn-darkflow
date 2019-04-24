#!/bin/sh
export PYTHONPATH=/floyd/home/darkflow
floyd run --task test --data uwieske/projects/fr-dnn-darkflow/66:/model
#floyd run --task test --data uwieske/datasets/ukrec-images/6:/ukrec-images-own --data uwieske/projects/fr-dnn-darkflow/66:/model


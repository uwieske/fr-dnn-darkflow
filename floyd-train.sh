#!/bin/sh

CONFIG_DIR=''
MODEL_CONFIG_FILE='../yolo_ukrec.cfg'
DATASET_DIR='/floyd/input/ukrec-images/images_train/images/'
ANNOTATION_DIR='/floyd/input/ukrec-images/images_train/annotations/'
LABELS_FILE='../labels.txt'
THRESHOLD=0.1
LOAD_WEIGHTS_FILE='/floyd/input/soccer_ballgame/yolo.weights'
BATCH_SIZE=4
EPOCH_COUNT=1
SUMMARY_FOLDER='summary/'

# Train command
#--config $CONFIG_DIR
cd /floyd/home/darkflow
pip install -e .
flow --train --model $MODEL_CONFIG_FILE --dataset $DATASET_DIR --annotation $ANNOTATION_DIR --labels $LABELS_FILE --threshold $THRESHOLD --load $LOAD_WEIGHTS_FILE --batch $BATCH_SIZE --epoch $EPOCH_COUNT --summary $SUMMARY_FOLDER  --json --savepb


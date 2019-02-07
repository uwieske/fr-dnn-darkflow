#!/bin/sh

CONFIG_DIR=''
MODEL_CONFIG_FILE='/Users/uwieske/ukrec-res/yolo_ukrec.cfg'
DATASET_DIR='/Users/uwieske/ukrec-res/ukrec-images/images_train/images/'
ANNOTATION_DIR='/Users/uwieske/ukrec-res/ukrec-images/images_train/annotations/'
LABELS_FILE='/Users/uwieske/ukrec-res/labels.txt'
THRESHOLD=0.1
LOAD_WEIGHTS_FILE='/Users/uwieske/darkflow-res/darkflow/yolo.weights'
BATCH_SIZE=2
EPOCH_COUNT=8
SUMMARY_FOLDER='/Users/uwieske/ukrec-res/summary/'

# Train command
#--config $CONFIG_DIR
flow --train --model $MODEL_CONFIG_FILE --dataset $DATASET_DIR --annotation $ANNOTATION_DIR --labels $LABELS_FILE --threshold $THRESHOLD --load $LOAD_WEIGHTS_FILE --batch $BATCH_SIZE --epoch $EPOCH_COUNT --summary $SUMMARY_FOLDER  --json


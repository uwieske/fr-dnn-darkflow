#!/bin/sh

CONFIG_DIR=''
MODEL_CONFIG_FILE='/Users/uwieske/ukrec-res/yolo_ukrec.cfg'
DATASET_DIR='/Users/uwieske/ukrec-res/ukrec-images/images_train/images/'
ANNOTATION_DIR='/Users/uwieske/ukrec-res/ukrec-images/images_train/annotations/'
LABELS_FILE='/Users/uwieske/ukrec-res/labels.txt'
THRESHOLD=0.1
LOAD_WEIGHTS_FILE='/Users/uwieske/ukrec-res/yolo.weights'
BATCH_SIZE=16
EPOCH_COUNT=2
SUMMARY_FOLDER='/Users/uwieske/ukrec-res/summary/'
BACKUP_DIR='./darkflow'
LEARNING_RATE=0.0001
MOMENTUM=0.9

# Train command
#--config $CONFIG_DIR
flow --train --trainer adam --load -1 --lr $LEARNING_RATE --momentum $MOMENTUM --epoch $EPOCH_COUNT  --model $MODEL_CONFIG_FILE --dataset $DATASET_DIR --annotation $ANNOTATION_DIR --labels $LABELS_FILE --batch $BATCH_SIZE  --summary $SUMMARY_FOLDER  --json --savepb


#!/bin/sh

#CONFIG_DIR=''
MODEL_CONFIG_FILE='../yolo_ukrec.cfg'
DATASET_DIR='/floyd/input/ukrec-images/images_train/images/'
ANNOTATION_DIR='/floyd/input/ukrec-images/images_train/annotations/'
LABELS_FILE='../labels.txt'
#THRESHOLD=0.1
LOAD_WEIGHTS_FILE=6000
BATCH_SIZE=8
#EPOCH_COUNT=1
SUMMARY_FOLDER='summary/'
PB_LOAD_PATH=''
PB_META_PATH=''
BACKUP='/floyd/input/model/darkflow/ckpt/'

# Train command
#--config $CONFIG_DIR
cd /floyd/home/darkflow
flow --train --trainer adam --batch $BATCH_SIZE --gpu 1.0 --model $MODEL_CONFIG_FILE --dataset $DATASET_DIR --annotation $ANNOTATION_DIR --labels $LABELS_FILE --backup $BACKUP -load $LOAD_WEIGHTS_FILE --summary $SUMMARY_FOLDER --json --savepb --lr 0.0000003


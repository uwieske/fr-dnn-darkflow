#!/bin/sh

export CONFIG_DIR=''
export MODEL_CONFIG_FILE='./yolo_ukrec.cfg'
export DATASET_DIR='/floyd/input/ukrec-images/images_train/images/'
export ANNOTATION_DIR='/floyd/input/ukrec-images/images_train/annotations/'
export LABELS_FILE='./labels.txt'
export THRESHOLD=0.1
export LOAD_WEIGHTS_FILE='/floyd/input/soccer_ballgame/yolo.weights'
export BATCH_SIZE=8
export EPOCH_COUNT=2
export SUMMARY_FOLDER='summary/'

# Train command
#--config $CONFIG_DIR
sh -c "flow --train --model $MODEL_CONFIG_FILE --dataset $DATASET_DIR --annotation $ANNOTATION_DIR --labels $LABELS_FILE --threshold $THRESHOLD --load $LOAD_WEIGHTS_FILE --batch $BATCH_SIZE --epoch $EPOCH_COUNT --summary $SUMMARY_FOLDER  --json --savepb"


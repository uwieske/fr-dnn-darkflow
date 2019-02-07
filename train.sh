#!/bin/sh

CONFIG_DIR=''
MODEL_CONFIG_FILE=''
DATASET_DIR=''
ANNOTATION_DIR=''
LABELS_FILE=''
THRESHOLD=0.6
WEIGHTS_FILE=''
BATCH_SIZE=
EPOCH_COUNT=

# Train command
flow --train --config $CONFIG --model $MODEL_CONFIG_FILE --dataset $DATASET_DIR --annotation $ANNOTATION_DIR \\
     --labels $LABELS_FILE --threshold $THRESHOLD --load $WEIGHTS_FILE --batch $BATCH_SIZE --epoch $EPOCH_COUNT \\
     --json


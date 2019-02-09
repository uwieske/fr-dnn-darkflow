#!/bin/sh

DATASET_DIR='/floyd/input/ukrec-images/images_test/images/'
LOAD_WEIGHTS_FILE='/floyd/input/soccer_ballgame/yolo.weights'
#SUMMARY_FOLDER='summary/'
PB_LOAD='/floyd/input/model/darkflow/built_graph/yolo_ukrec.pb'
META_LOAD='/floyd/input/model/darkflow/built_graph/yolo_ukrec.meta'
# Test command
#--summary $SUMMARY_FOLDER
cd /floyd/home/darkflow
flow --imgdir $DATASET_DIR --pbLoad $PB_LOAD  --metaLoad $META_LOAD --json

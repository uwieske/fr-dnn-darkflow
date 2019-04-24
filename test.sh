#!/bin/sh

#DATASET_DIR='/floyd/input/ukrec-images/images_test/images/'
DATASET_DIR='/Users/uwieske/ukrec-res/ukrec-images/images_test/images2/'
LOAD_WEIGHTS_FILE='/Users/uwieske/ukrec-res/yolo.weights'
#SUMMARY_FOLDER='summary/'
PB_LOAD='/floyd/input/model/darkflow/built_graph/yolo_ukrec.pb'
META_LOAD='/floyd/input/model/darkflow/built_graph/yolo_ukrec.meta'
# Test command
#--summary $SUMMARY_FOLDER
cd darkflow
#flow --imgdir $DATASET_DIR --pbLoad $PB_LOAD  --metaLoad $META_LOAD --json
darkflow/flow --imgdir $DATASET_DIR --load 6000 --model /Users/uwieske/fr-dnn-darkflow/yolo_ukrec.cfg

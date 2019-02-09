# Facial Recognition DNN with Darkflow


## Requirements & Assumptions
* you are working locally on a MacOS (Mojave) platform
* you have already Conda/Anaconda installed 
* there does not exist a virtual environment with name ```dnn112-env```


## Start locally

```git clone https://github.com/uwieske/fr-dnn-darkflow.git```

```cd fr-dnn-darkflow```

### Prepare local space

#### Create virtual environment
```
sh create-env.sh
source activate dnn112-env
```

#### Get and install Darkflow from Github and do some changes to the code (bugs)
```
sh install-darkflow.sh
```
Change line
```
vi darkflow/darkflow/utils/pascal_voc_clean_xml.py
``` 
Change line 22 to become:
```
annotations = glob.glob('*.xml')
``` 

#### Configure
  * Data Sets
  * Weights
  * other DNN hyperparameters
  
##### Data Sets

It is assumed that data sets are located separately from the model and are mounted and accessible for a Floyd job.
 Locally they are located on your filesystem represented by a directory path.
Please check documentation on FloydHub for creating and mounting datasets.
Data sets are partitioned in a training and a validation/test set.

##### Weights
A pretrained set of weights is used, that is `yolo.weights`.
The weights file is located separately from the model. Weight tend to be very big files. In order to keep upload and download time minimal it has been located outside of the git project.
So, the weights file is accessible via a mounted directory in the data set space of FloydHub. A copy of this file is locally accessible in a directory outside of the git project.

##### Other DNN hyperparameters
The DNN/Darkflow has different parameters and can be configured for each job.


For customization for local training use: `train.sh` file

For customization for training on FloydHub use: `floyd-train.sh` file

 

#### Run/train model locally
```
train.sh
```

## Extend/continue activities on FloydHub

### Train on Floydhub

#### Initialize local space/directory for Floyd
```
sh floyd-prepare.sh
```

#### Run/Train model on FloydHub
```
sh floyd-run.sh
```
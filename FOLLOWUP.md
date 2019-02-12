## Introduction
This is my first attempt to train a DNN on Floyd Hub and on my local machine.
Approach chosen:
* train the DNN remotely on FloydHub with GPU support
* Download the weights of the trained model to the local machine (using checkpoints)
* Continue training on my local machine

_Remark_: I had to do a code change in darkflow
darkflow/darkflow/utils/pascal_voc_clean_xml.py" 79L
```
annotations = glob.glob('*.xml')
```

## Training
This branch has been created on just after the succesful job run number 66 of fr-dnn-darkflow.
Job 66 on FLoydHub was the first job which was succesfully run on fr-dnn-darkflow in the sense of delivering trained weights.
The commits on this branch are based on the Job 66 weights as baseline.
After having trained the model in job 66 I downloaded the checkpoint 6000 to my remote machine, changed some hyper parameters and trained the DNN further locally.
 
For configuration of hyper parameter of job 66, please consult with job 66 pages on FloydHub.
Batch/8, gpu/1.0, trainer/adam
 
Further training on local machine
1. Attempt 1 There were different training attempts with different hyperparameter settings.
Batch/8, cpu, checkpoint/6000, epoch/2, m/onchanged, lr/0.000003, trainer/adam
Result: cost function did not further decrease. It kept oscillating around the same values (in job 66) 

2.  Attempt 2 was about adding more images to the training set. 
I used almost the same hyper parameter settings except for the learning rate (set to 0.0000001). 
The training process was stopped in the first 150 steps after having seen that the costfunction would not decrease. Checkpoint was bumped to 6100.
Result: cost function did not further decrease either. It kept oscillating again around the same values.

3. Attempt 3 was to drastically change some hyper parameters.
Learning rate/1E-7, batch/32, m/500, checkpoint/6100, trainer/adam, momentum/0.99
Result: cost function did not further decrease either. Still oscillating around the same values.

4. Last attempt with arbitrarily different hyper parameter settings but unfortunately results were no deiiferent than the previous attempts.

##Prediction
I executed some predictions with a minor code change in darkflow for cosmetic purposes. That is, also display confidence value above a drawn box.

Observations:
* The trained DNN detects from time to time pictures of Kitty as me.
* Confidence of many pictures are still relatively low although the DNN detects the face correctly. 
For example there were different pictures in which Kitty or I were detected correctly but with a confidence level of around 42.
Therefor I was inclined to lower the threshold value from 60 to 40+.
* Apparently the DNN was generalizing over some individual facial features independently from the identities Kitty en I.
A foreigner on the picture would be detected as Kitty or I because there were picture in the training set where Kitty or I was wearing (sun)glasses.
Apparently the DNN will detect glasses and conclude on this fct that it would be Kitty or I.


## TO DO / Considerations
1. Increase confidence level.
2. Research a smart approach voor face detection/recognition in this particular problem.
3. Add more pictures to the training set.
    


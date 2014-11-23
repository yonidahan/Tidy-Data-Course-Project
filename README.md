---
title: "README.md"

---

***

#Summary

***

This repository contains an R script that takes as input the data set from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and outputs a tidy data set (wide form) that complies with the tidy data principles, which are explained [here](http://www.jstatsoft.org/v59/i10/paper) in the Hadley Wickam's paper.

The output summarizes each variable by average for each subject and each activity.

Here are the first few rows and columns :

```


Subject     Activity time_BodyAcc_mean_X time_BodyAcc_mean_Y time_BodyAcc_mean_Z time_BodyAcc_std_X
      1      Walking           0.2773308        -0.017383819          -0.1111481        -0.28374026
      1   Walking Up           0.2554617        -0.023953149          -0.0973020        -0.35470803
      1 Walking Down           0.2891883        -0.009918505          -0.1075662         0.03003534
      1      Sitting           0.2612376        -0.001308288          -0.1045442        -0.97722901
      1     Standing           0.2789176        -0.016137590          -0.1106018        -0.99575990
      1       Laying           0.2215982        -0.040513953          -0.1132036        -0.92805647
```


#run_analysis.R

***

Prior to running the script, you must download the data, save it in a folder called "CourseProject-GCD" and set your working directory to this folder.
The output is a file called "summary.txt"" which is a data set with 180 observations of 88 variables.
More information about the variables and the tidying process are available in the CodeBook.md.
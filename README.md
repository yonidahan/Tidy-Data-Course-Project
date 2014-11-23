---
title: "README.md"

---

***

#Summary

***

This repository contains an R script that takes as input the data set from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and outputs a tidy data set (wide form) that complies with the tidy data principles, which are explained [here](http://www.jstatsoft.org/v59/i10/paper) in the Hadley Wickam's paper.

The output summarizes each variable by average for each subject and each activity.

 


#run_analysis.R

***

Prior to running the script, you must download the data, save it in a folder called "CourseProject-GCD" and set your working directory to this folder.
The output is a file called "summary.txt"" which is a data set with 180 observations of 88 variables.
More information about the variables and the tidying process are available in the CodeBook.md.
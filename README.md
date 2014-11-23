---
title: "README.md"

---

***

#Summary

***

This repository contains an R script that takes as input the dataset from the [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and outputs a tidy summarizing data frame that complies with the tidy data principles, which are explained [here](http://www.jstatsoft.org/v59/i10/paper).

The output is a tidy data frame (180 observations and 88 variables) in wide form with the average of the variables for each subject and each activity. 
It meets the principles of the tidy data as explained by Hadley Wickam http://www.jstatsoft.org/v59/i10/paper.


#run_analysis.R

***

Prior to running the script, you must download the data, save it in a folder called "CourseProject-GCD" and set your working directory to this folder.
The output is a file called summary.txt which is a dataset with 180 observations of 88 variables.
More information about the variables and the tidying process are available in the CodeBook.md.
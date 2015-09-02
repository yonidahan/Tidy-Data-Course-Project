---
title: "CodeBook.md"
output: word_document
---


***
***




#run_analysis.R Code Book
This file describes the tidy dataset of 180 observations and 88 variables yielded by run_analysis.R and the process to produce it.    

***

#Data

***

This file includes some of the data obtained from an experiment carried out at the University of Genoa with a group of people within an age bracket of 19-48 years. Each subject performed six activities(WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS  LAYING, SITTING) wearing a smartphone (Samsung Galaxy S II). Initially, a paper was published with the results from this experiment in a form of a dataset with the observations on 561 features. A summary of these features is displayed here, with its  average for each subject and each activity.

***

For more information:
    
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

http://www.smartlab.ws

***
***




#Variables



***

##Subjects 

***

Coded as factor, 30 different levels (subjects) : (1 to 30)

***

##Activity 

***

Coded as factor, 6 different (levels) : *WALKING, WALKING UP, WALKING DOWN, SITTING, STANDING, LAYING*



***



The measure variables detailed below are of the form domain_measure_gathering_dimension:

***


Domain : time or frequency  

Measure : quantity of interest 

Gathering : indicates how were the initial variables gathered (mean, frequency mean and standard deviation)  

Dimension : X, Y and Z measurement in an Euclidean norm  
  
***


  
##Units
  
  Acceleration signal from the smartphone accelerometer X,Y,Z axis : in standard gravity units "g" m*s^-2
  
  Angular velocity vector measured by the gyroscope : rad.s^-2
  
  Jerk acceleration from the accelerometer : m.s^-3
  
  Jerk angular velocity measured by the gyroscope : rad.s^-3
  
  
  

***
***


##BodyAcc

Acceleration of the subject's body, measured by the accelerometer

time_BodyAcc_mean_X, time_BodyAcc_mean_Y, time_BodyAcc_mean_Z, time_BodyAcc_std_X, time_BodyAcc_std_Y,          time_BodyAcc_std_Z, freq_BodyAcc_mean_X, freq_BodyAcc_mean_Y, freq_BodyAcc_mean_Z, 
freq_BodyAcc_std_X, freq_BodyAcc_std_Y, freq_BodyAcc_std_Z, freq_BodyAcc_mean_X, freq_BodyAcc_mean_Y, freq_BodyAcc_mean_Z, freq_BodyAcc_meanFreq_X, freq_BodyAcc_meanFreq_Y, freq_BodyAcc_meanFreq_Z

***



##GravityAcc

Acceleration of the gravity, measured by the accelerometer.

time_GravityAcc_mean_X, time_GravityAcc_mean_Y, time_GravityAcc_mean_Z, time_GravityAcc_std_X, time_GravityAcc_std_Y, time_GravityAcc_std_Z

***



##BodyAccJerk

Jerk of the subject's body, measured by the accelerometer.

time_BodyAccJerk_mean_X, time_BodyAccJerk_mean_Y, time_BodyAccJerk_mean_Z, time_BodyAccJerk_std_X,      time_BodyAccJerk_std_Y, time_BodyAccJerk_std_Z, freq_BodyAccJerk_mean_X, freq_BodyAccJerk_mean_Y, freq_BodyAccJerk_mean_Z, freq_BodyAccJerk_std_X, freq_BodyAccJerk_std_Y, freq_BodyAccJerk_std_Z, freq_BodyAccJerk_mean_X, freq_BodyAccJerk_mean_Y, freq_BodyAccJerk_mean_Z, freq_BodyAccJerk_meanFreq_X, freq_BodyAccJerk_meanFreq_Y, freq_BodyAccJerk_meanFreq_Z

***

##BodyGyro

Acceleration of the subject's body, measured by the gyroscope.

time_BodyGyro_mean_X, time_BodyGyro_mean_Y, time_BodyGyro_mean_Z, time_BodyGyro_std_X, time_BodyGyro_std_Y, time_BodyGyro_std_Z, freq_BodyGyro_mean_X, freq_BodyGyro_mean_Y,freq_BodyGyro_mean_Z, freq_BodyGyro_std_X, freq_BodyGyro_std_Y, freq_BodyGyro_std_Z, 
freq_BodyGyro_mean_X, freq_BodyGyro_mean_Y, freq_BodyGyro_mean_Z, freq_BodyGyro_meanFreq_X, freq_BodyGyro_meanFreq_Y

***


##BodyGyroJerk

Jerk of the subject's body, measured by the gyrsocope.
 
time_BodyGyroJerk_mean_X, time_BodyGyroJerk_mean_Y, time_BodyGyroJerk_mean_Z, time_BodyGyroJerk_std_X, time_BodyGyroJerk_std_Y, time_BodyGyroJerk_std_Z

***



##BodyAccMag

Acceleration magnitude of the subject's body, measured by the accelerometer

time_BodyAccMag_mean, time_BodyAccMag_std, freq_BodyAccMag_mean, freq_BodyAccMag_std, freq_BodyAccMag_meanFreq

***



##GravityAccMag

Acceleration magnitude of the gravity, measured by the accelerometer.

time_GravityAccMag_mean, time_GravityAccMag_std

***


##BodyAccJerkMag

Jerk magnitude of the subject's body, measured by the accelerometer.

time_BodyAccJerkMag_mean, time_BodyAccJerkMag_std, freq_BodyAccJerkMag_mean, freq_BodyAccJerkMag_std, freq_BodyAccJerkMag_meanFreq

***


##BodyGyroMag

Acceleration magnitude of the subject's body, measured by the gyroscope.
time_BodyGyroMag_mean, time_BodyGyroMag_std, freq_BodyGyroMag_mean, freq_BodyGyroMag_std, freq_BodyGyroMag_meanFreq


***

##BodyGyroJerkMag

Jerk magnitude of the subject's body, measured by the gyroscope.
time_BodyGyroJerkMag_mean, time_BodyGyroJerkMag_std, freq_BodyGyroJerkMag_mean, freq_BodyGyroJerkMag_std, freq_BodyGyroJerkMag_meanFreq

***
***



#Process 

***

1.Merge by pair using rbind() :

    **X_test.txt** and **X_train.txt** (test and training sets)--(merged dataset)

    **y_test.txt** and **y_train.txt** (test and training labels)--(labels dataset)

    **subject_test.txt** and **subject_train.txt** (test and training subjects)--(subject dataset)


2.Obtain a vector which contains the position (column number) of each of the mean and standard deviation measurement, using the regular expressions in "features.txt"


3.Subset the columns on mean and standard deviation in the merged dataset using the last vector 


4.Add the columns with the subjects and activity to the merged dataset


5.Name the activities appropriately


6.Get the names of the features (measure variables) in "features.txt" 


7.Correct the names of the features


8.Label the data set with appropriately variable names


9.Create an independent data set with the average of the variables for each subject for each activity
  





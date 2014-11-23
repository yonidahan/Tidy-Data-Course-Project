## Gettinng and Cleaning Data Course Project

## Merge the test and training sets respectively

merged<-rbind(read.table("X_test.txt"),read.table("X_train.txt"))



## Same merging operation for the labels

labels<-rbind(read.table("y_test.txt"),read.table("y_train.txt"))



## Again for the subjects

subjects<-rbind(read.table("subject_test.txt"),read.table("subject_train.txt"))




## Obtain a vector with the position (column number) of each of the 
## mean and standard deviation measurement
## using the regular expressions
                                                  
variables_columns<-sort(c(grep("[Mm][Ee][Aa][Nn]", 
                               read.table("features.txt",colClasses="character")[,2]), 
                          ## Obtain positions of the mean
                          
                          
                     grep("[Ss][Tt][Dd]",
                               read.table("features.txt",colClasses="character")[,2])))   
                          ## Obtain positions
                          ## of the standard deviation                       
     


## Subset the columns on mean and standard deviation in merged 
## using the last vector     

merged<-merged[,variables_columns]



## Add to merged the columns with the subjects and activity respectively

merged<-cbind(subjects,labels,merged)



## Name the activity appropriately

merged[,2] <- factor(merged[,2],
                    levels = c(1,2,3,4,5,6),
                    labels = c("Walking", "Walking Up", 
                               "Walking Down","Sitting","Standing","Laying"))


## Assign subjects to factor
merged[,1]<-as.factor(merged[,1])


## Get the names of the variables, create a vector wit them

variables_names<-read.table("features.txt",colClasses="character")[,2][variables_columns] 



## Append the "Subject" and "Activity" column names to the last vector

variables_names<-c("Subject","Activity",variables_names) 



## Correct features names

variables_names <- gsub("-", "_", variables_names) # underscores instead of hyphens
variables_names <- gsub(",", ".", variables_names, fixed=TRUE) # . instead of , for angles
variables_names <- gsub(")", "", variables_names, fixed=TRUE)
variables_names <- gsub("()", "", variables_names, fixed=TRUE) # Remove parentheses 
variables_names <- sub("^t", "time_", variables_names, fixed=FALSE)
variables_names <- sub("^f", "freq_", variables_names, fixed=FALSE) # expand time/freq domain labels
variables_names <- gsub("angle(", "angle_", variables_names, fixed=TRUE)
variables_names <- sub("BodyBody", "Body", variables_names, fixed=FALSE)
variables_names <- gsub("(", "", variables_names, fixed=TRUE)


##Label the data set 

colnames(merged)<-variables_names



## Create a mean summary for each subject

library(plyr)
library(dplyr)
## For more information about 
## Dplyr : http://cran.r-project.org/web/packages/dplyr/index.html

summary<-group_by(merged,Subject,Activity)
summary<-summarise_each(summary,funs(mean),-Activity)


##Save 
write.table(summary,"summary.txt",row.name=FALSE)

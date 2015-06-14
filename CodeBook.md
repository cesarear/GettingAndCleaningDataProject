#CodeBook

##This file describes the variables, the data, and transformations or work performed to clean up the data

## Source Files
run_analysis.R takes the data from the UCIHAR Dataset, the data is available at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The data must be uncompressed
The variable pathToDataFiles at the beginning of the scrip run_analysis.R must point to the root of the extracted data.
###The files used are:
* features.txt: List of all features.
* activity_labels.txt: Links the class labels with their activity name.
* train/X_train.txt: Training set.
* train/subject_train.txt: Subjects
* train/y_train.txt: Training labels.
* test/X_test.txt: Test set.
* test/subject_test.txt: Subjects
* test/y_test.txt: Test labels.

## Relationships
The relationships between source files are depicted in the following Relationship Diagram:
![alt tag]( https://raw.githubusercontent.com/cesarear/GettingAndCleaningDataProject/master/ERD.png)

## The results
run_analysis.R produces a new dataset which consists in taking the mean variable values for each activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) and each subject for the following variables:

tBodyAcc_mean_X, tBodyAcc_mean_Y, tBodyAcc_mean_Z, tBodyAcc_std_X, tBodyAcc_std_Y, tBodyAcc_std_Z, tGravityAcc_mean_X, tGravityAcc_mean_Y, tGravityAcc_mean_Z, tGravityAcc_std_X, tGravityAcc_std_Y, tGravityAcc_std_Z, tBodyAccJerk_mean_X, tBodyAccJerk_mean_Y, tBodyAccJerk_mean_Z, tBodyAccJerk_std_X, tBodyAccJerk_std_Y, tBodyAccJerk_std_Z, tBodyGyro_mean_X, tBodyGyro_mean_Y, tBodyGyro_mean_Z, tBodyGyro_std_X, tBodyGyro_std_Y, tBodyGyro_std_Z, tBodyGyroJerk_mean_X, tBodyGyroJerk_mean_Y, tBodyGyroJerk_mean_Z, tBodyGyroJerk_std_X, tBodyGyroJerk_std_Y, tBodyGyroJerk_std_Z, tBodyAccMag_mean, tBodyAccMag_std, tGravityAccMag_mean, tGravityAccMag_std, tBodyAccJerkMag_mean, tBodyAccJerkMag_std, tBodyGyroMag_mean, tBodyGyroMag_std, tBodyGyroJerkMag_mean, tBodyGyroJerkMag_std, fBodyAcc_mean_X, fBodyAcc_mean_Y, fBodyAcc_mean_Z, fBodyAcc_std_X, fBodyAcc_std_Y, fBodyAcc_std_Z, fBodyAcc_meanFreq_X, fBodyAcc_meanFreq_Y, fBodyAcc_meanFreq_Z, fBodyAccJerk_mean_X, fBodyAccJerk_mean_Y, fBodyAccJerk_mean_Z, fBodyAccJerk_std_X, fBodyAccJerk_std_Y, fBodyAccJerk_std_Z, fBodyAccJerk_meanFreq_X, fBodyAccJerk_meanFreq_Y, fBodyAccJerk_meanFreq_Z, fBodyGyro_mean_X, fBodyGyro_mean_Y, fBodyGyro_mean_Z, fBodyGyro_std_X, fBodyGyro_std_Y, fBodyGyro_std_Z, fBodyGyro_meanFreq_X, fBodyGyro_meanFreq_Y, fBodyGyro_meanFreq_Z, fBodyAccMag_mean, fBodyAccMag_std, fBodyAccMag_meanFreq, fBodyBodyAccJerkMag_mean, fBodyBodyAccJerkMag_std, fBodyBodyAccJerkMag_meanFreq, fBodyBodyGyroMag_mean, fBodyBodyGyroMag_std, fBodyBodyGyroMag_meanFreq, fBodyBodyGyroJerkMag_mean, fBodyBodyGyroJerkMag_std, fBodyBodyGyroJerkMag_meanFreq

###The new dataset is saved as a text file created with write.table() using row.name=FALSE in the currect working directory

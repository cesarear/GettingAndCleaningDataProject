#*****************
#Get Master Data
#*****************
features      = as.character((read.table('./features.txt',header=FALSE))[,2]); #load features with column names (variables)
activities = read.table('./activity_labels.txt',header=FALSE); #load activities
colnames(activities) = c('activityID','activityName'); #Set column names for activites

#******************************************
#TRAIN DATA
#*****************************************
#Create consolidated train data set
trainDF = cbind(read.table('./train/y_train.txt',header=FALSE), #load train activities
                read.table('./train/subject_train.txt',header=FALSE),  #load subjects
                read.table('./train/X_train.txt',header=FALSE)) #load train data (observations)

#*********************************************************************
#4. Appropriately labels the data set with descriptive variable names. 
#*********************************************************************
## Assigin column names to train data
colnames(trainDF)[1:2] <- c("activityID","subjectID")
colnames(trainDF)[3:ncol(trainDF)] <- features #as.character(features[,2])

#******************************************
#TEST DATA
#*****************************************
#Create consolidated test data set
testDF = cbind(read.table('./test/y_test.txt',header=FALSE), #load test activities
                read.table('./test/subject_test.txt',header=FALSE),  #load test subjects
                read.table('./test/X_test.txt',header=FALSE)) #load test data (observations)

#*********************************************************************
#4. Appropriately labels the data set with descriptive variable names. 
#*********************************************************************
## Assigin column names to train data
colnames(testDF)[1:2] <- c("activityID","subjectID")
colnames(testDF)[3:ncol(testDF)] <- features #as.character(features[,2])

#******************************************************************************************
#1. Combine training and test data to create one data set AND
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#******************************************************************************************
                              #Includes first and second columns "activityID","subjectID"
consolidatedDF <- (rbind(trainDF,testDF))[c(1,2,grep("mean\\(\\)|std\\(\\)", features) + 2)] ; 

#*************************************************************************
#3. Uses descriptive activity names to name the activities in the data set
#*************************************************************************
                              #Removing activityID column (column #1)
consolidatedDF <- (merge(activities,consolidatedDF,by="activityID",y.ALL = TRUE))[,2:ncol(consolidatedDF)]

#5. creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidyData <- suppressWarnings(aggregate(consolidatedDF,by=list(activityName=consolidatedDF$activityName, subjectID=consolidatedDF$subjectID), FUN=mean)[,-c(3,4)])

write.table(tidyData, "./tidydata.txt", row.name=FALSE)

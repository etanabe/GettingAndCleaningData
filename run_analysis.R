#################################################################################################
#                                                                                               #                     
#  Source code for running an analysis over data collected using Samsung SII mobiles from       #
#activity tracking.                                                                             #
#  More info about the data collected, please refer to the files on UCI HAR Dataset folder      #
#on your working directory.                                                                     #
#                                                                                               #
#################################################################################################
# Version History                                                                               #
# Name                Date            Comments                                                  #
# Evandro Tanabe      2016, Jan 31    Creation                                                  #
#################################################################################################


#################################################################################################
#Files reading                                                                                  #
#################################################################################################

#Activity Labels
activityLabels <- read.csv("./UCI HAR Dataset/activity_labels.txt", header = F, sep = " ", col.names = c("activityid", "activity"))

#Features - Variables Labels
features <- read.csv("./UCI HAR Dataset/features.txt", header = F, sep = " ", col.names = c("featureid", "feature"))

#Tests Subjects
testSubject <- read.csv("./UCI HAR Dataset/test/subject_test.txt", header = F, sep = " ", col.names = c("subject"))
#Variables for test subjects
testX <- read.table("./UCI HAR Dataset/test/X_test.txt", header = F)
#Labeling the variables
names(testX) <- features$feature
#activities per subject
testY <- read.csv("./UCI HAR Dataset/test/y_test.txt", header = F, sep = " ", col.names = c("activityid"))

#Train Subjects
trainSubject <- read.csv("./UCI HAR Dataset/train/subject_train.txt", header = F, sep = " ", col.names = c("subject"))
#Variables for train subjects
trainX <- read.table("./UCI HAR Dataset/train/X_train.txt", header = F)
#Labeling the variables
names(trainX) <- features$feature
#activities per subject
trainY <- read.csv("./UCI HAR Dataset/train/y_train.txt", header = F, sep = " ", col.names = c("activityid"))

#################################################################################################
#01. Merges the training and the test sets to create one data set.                              #
#################################################################################################
studyX <- rbind(trainX, testX)

#################################################################################################
#02. Extracts only the measurements on the mean and standard deviation for each measurement.    #
#################################################################################################
studyX <- studyX[,grepl("(*std*)|(*mean*)", names(studyX))]

#################################################################################################
#03. Uses descriptive activity names to name the activities in the data set                     #
#################################################################################################
testY <- merge(testY, activityLabels,by.x = "activityid", by.y = "activityid")
trainY <- merge(trainY, activityLabels,by.x = "activityid", by.y = "activityid")
studyY <- rbind(trainY, testY)
study <- studyX
study$activity <- studyY$activity

#################################################################################################
#04. Appropriately labels the data set with descriptive variable names.                         #
#################################################################################################
#Done on the files reading step.

#################################################################################################
#05. From the data set in step 4, creates a second, independent tidy data set with the average  # 
#of each variable for each activity and each subject.                                           #
#################################################################################################
subject <- rbind(trainSubject, testSubject)
study$subject <- as.factor(subject$subject)

library(dplyr)

study2 <- study %>%
  group_by(subject, activity) %>% 
  summarise_each(funs(mean))

if(!file.exists("./RData/")){dir.create("./RData/")}
write.table(study2,"./RData/study.txt", row.name = F)
 
study2
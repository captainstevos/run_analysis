##Set working Directory
setwd("/Users/Kuoseph/Documents/Coursera/UCI HAR Dataset")
##Read in Activity Label and rename
Labels <- read.table("activity_labels.txt")
names(Labels) <- c("ActivityID","ActivityType")
##Read in Feature Types and IDs and rename
Features <- read.table("features.txt")
names(Features) <- c("FeatureID","FeatureType")
##Limit the Feature Types to only the standard deviations and means
meanstdfeat <- grepl("mean()|std()", Features$FeatureType, ignore.case=FALSE)
##Read in the test data and rename. Limit the test data to only the applicable feature types. Combine labels and feature types. 
Test <- read.table("./test/subject_test.txt")
names(Test) <- c("SubjectID")
TestActivityCode <- read.table("./test/y_test.txt")
names(TestActivityCode) <- c("ActivityID")
TestActivityTypeAll <- read.table("./test/x_test.txt")
names(TestActivityTypeAll) <- Features$FeatureType
TestActivityType <- TestActivityTypeAll[,meanstdfeat]
TestFinal <- cbind(Test,TestActivityCode, TestActivityType)

##Read in the train data and rename. Limit the train data to only the applicable feature types. Combine labels and feature types
Train <- read.table("./train/subject_train.txt")
names(Train) <- c("SubjectID")
TrainActivityCode <- read.table("./train/y_train.txt")
names(TrainActivityCode) <- c("ActivityID")
TrainActivityTypeAll <- read.table("./train/x_train.txt")
names(TrainActivityTypeAll) <- Features$FeatureType
TrainActivityType <- TrainActivityTypeAll[,meanstdfeat]
TrainFinal <- cbind(Train,TrainActivityCode, TrainActivityType)
##Combine test and train datasets
FinalTestTrain <- rbind(TestFinal, TrainFinal)

##Aggregate the combined dataset by Subject ID and Activity ID
library(reshape2)
TestTrainMelt <- melt(FinalTestTrain, id=c("SubjectID", "ActivityID"))
FinalData <- dcast(TestTrainMelt, SubjectID + ActivityID ~ variable, mean)
##Rename the activity types
Labels[,2]<-as.character(Labels[,2])
for(i in 1:length(FinalData[,1]))
{FinalData[i,2]<-Labels[FinalData[i,2],2]}
##Write the new, tidy dataset
write.table(FinalData, file="Human Activity Recognition Data.txt")

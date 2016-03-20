## Date: 20 March 2016
## Creator: ##########
## Purpose: To download the compressed UCI HAR Dataset, combine test and train 
## datasets into 1, assign appropriate variable names, extract mean() and std()
## columns, take the average per activity and subject and write that dataset to
## file.
##
## NOTES: If dataset is already downloaded and uncompressed, comment out the
## 3 lines after loading "dplyr" package (start with: url, download and unzip).

library(dplyr)

## Download, unzip and move into data directory
#url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#download.file(url,destfile="Dataset.zip",mode="wb")
#unzip("Dataset.zip")
setwd("./UCI HAR Dataset")

## Read in activity labels and measurement variable labels.
print("Reading Files ...")
activitylabels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
## Read in required data files.
setwd("./test")
subjecttest <- read.table("subject_test.txt")
xtest <- read.table("X_test.txt")
ytest <- read.table("y_test.txt")
setwd("../train")
subjecttrain <- read.table("subject_train.txt")
xtrain <- read.table("X_train.txt")
ytrain <- read.table("y_train.txt")

## Merge the training and the test sets to create one data set.
print("Merging Data ...")
test <- cbind(subjecttest,ytest,xtest)
train <- cbind(subjecttrain,ytrain,xtrain)
alldata <- rbind(test,train)

## Appropriately label the data set with descriptive variable names. 
print("Labelling variables and activities ...")
collabels <- c("subjectid","activity",as.character(features[,2]))
colnames(alldata) <- collabels

## Extract only the measurements on the mean and standard deviation for each 
## measurement.
keep <- grep("mean\\(\\)|std\\(\\)",collabels)
data <- alldata[c(1,2,keep)]

## Use descriptive activity names to name the activities in the data set
data <- mutate(data, activity=factor(as.factor(activity), labels=activitylabels[,2]))

## Clean up variable names to remove problematic characters.
names(data) <- gsub("-","",names(data))
names(data) <- gsub("\\(\\)","",names(data))

## Order the data by subject_ID and subject activity.
data <- arrange(data,subjectid,activity)
data <- mutate(data,subjectid=as.factor(subjectid))

## From the data set in previous step, create a second, independent tidy data 
## set with the average of each variable for each activity and each subject.
print("Creating averaged data ...")
newdata <- data %>% group_by(subjectid,activity) %>% summarise_each(funs(mean))
names(newdata) <- paste0("AVERAGED",names(newdata))
names(newdata)[1] <- "subjectid"
names(newdata)[2] <- "activity"

## Write both datasets to tab separated text files.
print("Writing to file ...")
setwd("../../")
write.table(data,file="tidyUCIHARdataset.dat",sep="\t",row.name=FALSE)
write.table(data,file="averagedtidyUCIHARdataset.dat",sep="\t",row.name=FALSE)

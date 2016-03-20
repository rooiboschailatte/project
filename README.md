Tidying the UCI HAR Dataset
===========================

This repository contains:

* run_analysis.R (Code download and tidy the dataset)
* README.md (This document)
* CodeBook.md (Description of the data and variables)
* tidyUCIHARdataset.dat (Dataset as created in step 4 of instructions)
* averagedtidyUCIHARdataset.dat (Dataset as created in step 5 of instructions)

The instructions were to write code that:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

run_analysis.R does that in the following steps:

* Download, unzip and move into data directory.
* Read in activity labels and measurement variable labels.
* Read in required data files.
* Merge the training and the test sets to create one data set.
* Appropriately label the data set with descriptive variable names.
* Extract only the measurements on the mean and standard deviation for each measurement.
* Use descriptive activity names to name the activities in the data set.
* Clean up variable names to remove problematic characters.
* Order the data by subject_ID and subject activity.
* Create a second, independent tidy data set with the average of each variable for each activity and each subject.
* Write both datasets to tab separated text files.

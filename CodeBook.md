Tidied UCI Human Activity Recognition Using Smartphones Dataset
=================================================================
tidyUCIHARdataset.dat contains many motion datapoints for 30 subjects doing several activities. The activities measured are:
* walking
* walking upstairs
* walking downstairs
* sitting
* standing
* laying

The 66 motion variables measured are the mean and std of each:

1. tBodyAcc-X
2. tBodyAcc-Y
3. tBodyAcc-Z
4. tGravityAcc-X
5. tGravityAcc-Y
6. tGravityAcc-Z
7. tBodyAccJerk-X
8. tBodyAccJerk-Y
9. tBodyAccJerk-Z
10. tBodyGyro-X
11. tBodyGyro-Y
12. tBodyGyro-Z
13. tBodyGyroJerk-X
14. tBodyGyroJerk-Y
15. tBodyGyroJerk-Z
16. tBodyAccMag
17. tGravityAccMag
18. tBodyAccJerkMag
19. tBodyGyroMag
20. tBodyGyroJerkMag
21. fBodyAcc-X
22. fBodyAcc-Y
23. fBodyAcc-Z
24. fBodyAccJerk-X
25. fBodyAccJerk-Y
26. fBodyAccJerk-Z
27. fBodyGyro-X
28. fBodyGyro-Y
29. fBodyGyro-XYZ
30. fBodyAccMag
31. fBodyAccJerkMag
32. fBodyGyroMag
33. fBodyGyroJerkMag

averagedtidyUCIHARdataset.dat contains the average of each motion feature for each subject doing each activity.

Features are normalized and bounded within [-1,1].

Text below is reproduced from the original dataset for completeness.

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - UniversitÓ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
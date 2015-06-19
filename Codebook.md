---
title: "Getting and Cleaning Data Project Codebook"
author: "Terrill Wolf"
date: "6-19-2015"
output:
  html_document:
    keep_md: yes
---

## Project Description
Create a tidy data set of wearable accelerometer readings

##Study design and data processing

###Collection of the raw data
Data was collected from 30 subjects using the Samsung Galaxy S smartphone device and publicly posted.


##Creating the tidy datafile

###Guide to create the tidy data file
1. Download the zip file from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
2. Unzip the downloaded file
3. Source the run_analysis.R file in R
4. Run the project() function to load, clean, and output the tidy data set

###Cleaning of the data
Once loaded, the script combines the test and training data sets, assigns readable headers to the variables, adds the subject IDs and activity description to each observation, extracts the mean and standard deviation variables, and averages each extracted variable for each subject and activity. More details can be found within the run_analysis.R script.


##Description of the variables in the tidy_data.txt file
"1" "subject": int - subject ID for who was wearing the device the readings came from
"2" "activity": factor - description of the activity being performed when the measurement was made
"3" "tBodyAcc-mean()-X": num
"4" "tBodyAcc-mean()-Y": num
"5" "tBodyAcc-mean()-Z": num
"6" "tGravityAcc-mean()-X": num
"7" "tGravityAcc-mean()-Y": num
"8" "tGravityAcc-mean()-Z": num
"9" "tBodyAccJerk-mean()-X": num
"10" "tBodyAccJerk-mean()-Y": num
"11" "tBodyAccJerk-mean()-Z": num
"12" "tBodyGyro-mean()-X": num
"13" "tBodyGyro-mean()-Y": num
"14" "tBodyGyro-mean()-Z": num
"15" "tBodyGyroJerk-mean()-X": num
"16" "tBodyGyroJerk-mean()-Y": num
"17" "tBodyGyroJerk-mean()-Z": num
"18" "tBodyAccMag-mean()": num
"19" "tGravityAccMag-mean()": num
"20" "tBodyAccJerkMag-mean()": num
"21" "tBodyGyroMag-mean()": num
"22" "tBodyGyroJerkMag-mean()": num
"23" "fBodyAcc-mean()-X": num
"24" "fBodyAcc-mean()-Y": num
"25" "fBodyAcc-mean()-Z": num
"26" "fBodyAccJerk-mean()-X": num
"27" "fBodyAccJerk-mean()-Y": num
"28" "fBodyAccJerk-mean()-Z": num
"29" "fBodyGyro-mean()-X": num
"30" "fBodyGyro-mean()-Y": num
"31" "fBodyGyro-mean()-Z": num
"32" "fBodyAccMag-mean()": num
"33" "fBodyBodyAccJerkMag-mean()": num
"34" "fBodyBodyGyroMag-mean()": num
"35" "fBodyBodyGyroJerkMag-mean()": num
"36" "tBodyAcc-std()-X": num
"37" "tBodyAcc-std()-Y": num
"38" "tBodyAcc-std()-Z": num
"39" "tGravityAcc-std()-X": num
"40" "tGravityAcc-std()-Y": num
"41" "tGravityAcc-std()-Z": num
"42" "tBodyAccJerk-std()-X": num
"43" "tBodyAccJerk-std()-Y": num
"44" "tBodyAccJerk-std()-Z": num
"45" "tBodyGyro-std()-X": num
"46" "tBodyGyro-std()-Y": num
"47" "tBodyGyro-std()-Z": num
"48" "tBodyGyroJerk-std()-X": num
"49" "tBodyGyroJerk-std()-Y": num
"50" "tBodyGyroJerk-std()-Z": num
"51" "tBodyAccMag-std()": num
"52" "tGravityAccMag-std()": num
"53" "tBodyAccJerkMag-std()": num
"54" "tBodyGyroMag-std()": num
"55" "tBodyGyroJerkMag-std()": num
"56" "fBodyAcc-std()-X": num
"57" "fBodyAcc-std()-Y": num
"58" "fBodyAcc-std()-Z": num
"59" "fBodyAccJerk-std()-X": num
"60" "fBodyAccJerk-std()-Y": num
"61" "fBodyAccJerk-std()-Z": num
"62" "fBodyGyro-std()-X": num
"63" "fBodyGyro-std()-Y": num
"64" "fBodyGyro-std()-Z": num
"65" "fBodyAccMag-std()": num
"66" "fBodyBodyAccJerkMag-std()": num
"67" "fBodyBodyGyroMag-std()": num
"68" "fBodyBodyGyroJerkMag-std()": num
For columns 3-68, the following description describes the format of the full raw data set. The columns in the tidy data set are an average of this raw data grouped by the 2 columns "activity" and "subject".

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Features are normalized and bounded within [-1,1].

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
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

##Sources
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

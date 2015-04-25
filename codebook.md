# Code Book
## Input data and source
The following files must be downloaded to the working directory from the source files found at 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and 
named as shown.  (If you want to use different names, you will have to change the function accordingly.)

Function name | Source name | Description

"Xtrain.txt" | "X_train.txt" | Training data

"Xtest.txt"	  | "X_test.txt" | Test data

"ytrain.txt"	  | "y_train.txt"  | Training labels

"ytest.txt"	  | "y_test.txt"  | Test labels

"subject_test.txt"  | "subject_test.txt"| Test subjects

"subject_train.txt"  | "subject_train.txt"  | Training subjects

"features.txt"  | "features.txt" | Labels for columns

The details of the source files can be found in the README.txt included in the source files.

## Input variables 

The variable description below is extracted from the file "features_info" found in the source folder referenced above:

---extract begins

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ
and tGyro-XYZ. The acceleration signal was then separated into body and gravity acceleration 
signals (tBodyAcc-XYZ and tGravityAcc-XYZ). 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals 
(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated 
using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ,
fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 

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

The complete list of variables of each feature vector is available in 'features.txt'

--- extract ends

A set of variables that were estimated from these signals. Only the mean value and standard 
deviation variables are relevant for this exercise; the remainder were discarded during 
data preparation:

	mean(): Mean value
	std(): Standard deviation

## Variables and Interim Data
Details on the variables and interim data can be found in the comments included in-line in the function code.

## Transformations
The essential data transformations are as follows:

1) add the activity labels as a column to the training and test data files

2) add the test subject IDs as a column to the resulting files

3) merge the two files

4) clean up the variable names (add names for activity and subject columns and replace IDs with features)

5) extract the measurements for mean [mean()] and standard deviation [std()]

6) add the activity labels

7) create the average of each resulting variable for each subject and each activity

8) create the output file

## Output Data
The output of the function is a text file (data.txt) which provides a tidy data set summarizing the averages of the 
mean and standard deviation measurements by subject and activity. 

###Row names
There are two types of row names:

	Activity names from the source file "activity_labels" (6 rows)
	Subject IDs from the "subject_" files (20 rows) 

###Variable names
The variable names are as described in the "Input variables" section above.  
Note: although the names are the same, these variables represent the averages (mean) of the associated 
variables across the relevant sub-set of data. 


	





	



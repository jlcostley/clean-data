### Code Book
## Input data and source
The following files have been assumed to be downloaded from the source files found at 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip to the working directory and 

named as shown.  If you want to use different names, you will have to change the function accordingingly.

Function name | Source name | Description:
"Xtrain.txt" | "X_train.txt" | Training data
"Xtest.txt"	  | "X_test.txt" | Test data
"ytrain.txt"	  | "y_train.txt"  | Training labels
"ytest.txt"	  | "y_test.txt"  | Test labels	
"subject_test.txt"  | "subject_test.txt"	  | Test subjects
"subject_train.txt"  | "subject_train.txt"  | Training subjects
"features.txt"  | "features.txt" | Labels for columns 

The details of the source files can be found in the README.txt included in the source files.

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
The output of the function is a text file (data.txt) which provides a tidy date set summarizing the averages of the 

mean and standard deviation measurements by subject and activity. 
	

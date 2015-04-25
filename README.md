

This file describes the provides an overview of the origins of the data used in, and the function developed to meet the requirements of, the course project for the Coursera "Getting and Cleaning Data" course.  

## Introduction

This function summarizes data from the "Human Activity Recognition Using Smartphones Data Set"

Citation: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

Full information can be found at: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## Data Description

The experiments were carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular velocity. The obtained dataset had been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

## The function: run_analysis.R 

The researchers chose to keep the data in several files including separate files for the activity codes and subject codes. The data columns are not labeled with descriptive names. The training data and test data are also separated.
The function run_analysis.R:

1) creates an integrated data file including all of the data (both test and training) and adds activity names and 
descriptive column names as well as a column identifying the subjects (volunteers).  

2) Selects the mean [mean()] and standard deviation [std()] measurements from the integrated data file

3) averages these for each activity and each subject

4) produces a .txt file with the results [data.txt] in a tidy data format, that is it mets the following principles:
  - the data columns have identifiers
  - the columns are unique
  - every row is one (summary) observation

These steps are further detailed in comments found in the run_analysis.R file.  

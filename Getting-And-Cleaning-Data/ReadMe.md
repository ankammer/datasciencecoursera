Project Getting and Cleaning Data John Hopkins University Coursera

The aim of the project is to demonstrate the ability to get and clean data of a given dataset. The goal of this project is to get a tidy dataset out of the given data. The given dataset is a study of the accelaration and angular velocity of a smartphone during different activities of persons.
The full description and dataset can be found under:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data of the project can be found here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

For the project you should write an R code, saved under run_analysis.R.


To achieve the goal to get the tidy data set 5 different steps have to be done.

	1.Merges the training and the test sets to create one data set.
	2.Extracts only the measurements on the mean and standard deviation 	  	  for each measurement.
	3.Uses descriptive activity names to name the activities in the data 	          set.
	4.Appropriately labels the data set with descriptive activity names.
	5.Creates a second, independent tidy data set with the average of each 	  variable for each activity and each subject. 


Steps to reproduce the R code:

	1. Open the file run_analysis.R using a text editor and change the 	           parameters for the setwd() function according to your own storange 	           system.
	2. Run the R script run_analysis.R

Output produced:
	The tidy dataset file tidy.txt
	The codebook for the containing variable names codebook.md

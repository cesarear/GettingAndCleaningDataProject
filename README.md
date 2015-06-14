## GettingAndCleaningDataProject
Coursera - Getting and Cleaning Data Course Project

## This project uses one script called “run_analysis.R”. 
This repository also contains the following files:
codebook.md: Description of the data
ERD.png: Relationship between data files
## Pre-Conditions:
1.	Data collected from the accelerometers from the Samsung Galaxy S smartphone have being obtained and downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2.	Zip file has being uncompressed
3.	Variable pathToDataFiles in run_analysis.R points to the root of the uncompressed UCIHAR Dataset.

## Operations performed by “run_analysis.R”.
1.	Read data from sources
2.	Assign column names
3. Perform necessary, merges,  transformations, and calculations.
4. Write data to a text file (txt) created with write.table() using row.name=FALSE in the working directory

## To Run:
1.	Clone this repo
2.	Download the data
2. Run the script:  run_analysis.R

## Post-Conditions:
Final dataset in working directory in a file called  #tidydata.txt


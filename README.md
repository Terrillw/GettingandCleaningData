======================================
Getting and Cleaning Data
Programming Assignment
Terrill Wolf
======================================


The dataset includes the following files:
=========================================
- 'README.txt': This file
- 'Codebook.md': Describes the input, data cleaning process and output of the script
- 'run_analysis.R': Analysis script
- 'tidy_data.txt': Output file


For each record in the 'tidy_data.txt' file it is provided:
=======================================================
- Subject ID
- Activity Description
- Average of 66 mean and standard deviation measurements for each subject and activity


The 'run_analysis.R' file performs the following analysis:
=======================================================
1. Reads the relevant raw data files into variables in the environment
2. Assigns readable and meaningful labels to the measurement variables
3. Uses the labels to extract only those variables that are standard deviation and mean calculations
4. Attaches the corresponding subject id and activity code for that measurement to each data set (train and test)
5. Combines the train and test data sets into one data set (Note: both data sets had the same variables and formats and were 
artificially split in the raw data)
6. Replaces the activity codes (numbers) with readable activity labels (e.g., WALKING)
7. Creates a new tidy data set that groups the subject and activity columns and applies the mean function to every other 
variable. It does this using the ddply function, which creates the unique list of subject and activity pairs, and calculates 
the mean of every other column for each of those key pairs.
8. The result is saved to a file named "tidy_data.txt" and saved to the base working folder.

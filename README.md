run_analysis
============
### This repository contains files for the Getting and Cleaning Data Course Project. 

The data for the course project was collected from the accelerometers from the Samsung Galaxy S smartphone. To run the R script included in this repository, download the data from the below link and save it into a working directory.

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R script (run_analysis.R) will read in the data and generate a new, tidy data set. Information about the data can be found in the file called codebook.md

### The steps below describe the Run_Analysis R Script

1. First, read in all the activity types and IDs and label appropriately. 
2. Next, read in all the feature types and IDs and label appropriately. We will then downsize the number of feature types to only the mean and standard deviation types for our analysis, using an array.  
3. Read in all the Test data (Subject IDs, Activity IDs, and Feature Types). We will then use the array created in step 2 and read only the Feature Types applicable to our analysis. 
4. Next, read in all the Train data (Subject IDs, Activity IDs, and Feature Types). Again, we will use the array created in step 2 to read only the Feature Types applicable to our analysis. 
5. Create a combined Test and Train data set. 
6. Next, using the package reshape2, melt the data by Subject ID and Activity Name
7. Cast the data grouped by Subject ID and Activity Name to get the mean of each group. 
8. Create the tidy data set called "Human Activity Recognition Data.txt"




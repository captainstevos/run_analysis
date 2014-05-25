##Human Activity Recognition Using Smartphones Dataset

This data was retrieved from experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II).
on the waist.

The following files are included:
* 'README.txt'
* 'features_info.txt': Shows information about the variables used on the feature vector.
* 'features.txt': List of all features.
* 'activity_labels.txt': Links the class labels with their activity name.
* 'train/X_train.txt': Training set.
* 'train/y_train.txt': Training labels.
* 'test/X_test.txt': Test set.
* 'test/y_test.txt': Test labels.

##Script Description/Data Transformations

The R Script (run_analysis.R) loads all the testing and training data sets and extracts only the mean and standard deviation measurements. Those variables are listed below:

"1 tBodyAcc-mean()-X"
"2 tBodyAcc-mean()-Y"
"3 tBodyAcc-mean()-Z"
"41 tGravityAcc-mean()-X"
"42 tGravityAcc-mean()-Y"
"43 tGravityAcc-mean()-Z"
"81 tBodyAccJerk-mean()-X"
"82 tBodyAccJerk-mean()-Y"
"83 tBodyAccJerk-mean()-Z"
"121 tBodyGyro-mean()-X"
"122 tBodyGyro-mean()-Y"
"123 tBodyGyro-mean()-Z"
"161 tBodyGyroJerk-mean()-X"
"162 tBodyGyroJerk-mean()-Y"
"163 tBodyGyroJerk-mean()-Z"
"201 tBodyAccMag-mean()"
"214 tGravityAccMag-mean()"
"227 tBodyAccJerkMag-mean()"
"240 tBodyGyroMag-mean()"
"253 tBodyGyroJerkMag-mean()"
"266 fBodyAcc-mean()-X"
"267 fBodyAcc-mean()-Y"
"268 fBodyAcc-mean()-Z"
"345 fBodyAccJerk-mean()-X"
"346 fBodyAccJerk-mean()-Y"
"347 fBodyAccJerk-mean()-Z"
"424 fBodyGyro-mean()-X"
"425 fBodyGyro-mean()-Y"
"426 fBodyGyro-mean()-Z"
"503 fBodyAccMag-mean()"
"516 fBodyBodyAccJerkMag-mean()"
"529 fBodyBodyGyroMag-mean()"
"542 fBodyBodyGyroJerkMag-mean()" "4 tBodyAcc-std()-X"
"5 tBodyAcc-std()-Y"
"6 tBodyAcc-std()-Z"
"44 tGravityAcc-std()-X"
"45 tGravityAcc-std()-Y"
"46 tGravityAcc-std()-Z"
"84 tBodyAccJerk-std()-X"
"85 tBodyAccJerk-std()-Y"
"86 tBodyAccJerk-std()-Z"
"124 tBodyGyro-std()-X"
"125 tBodyGyro-std()-Y"
"126 tBodyGyro-std()-Z"
"164 tBodyGyroJerk-std()-X"
"165 tBodyGyroJerk-std()-Y"
"166 tBodyGyroJerk-std()-Z"
"202 tBodyAccMag-std()"
"215 tGravityAccMag-std()"
"228 tBodyAccJerkMag-std()"
"241 tBodyGyroMag-std()"
"254 tBodyGyroJerkMag-std()"
"269 fBodyAcc-std()-X"
"270 fBodyAcc-std()-Y"
"271 fBodyAcc-std()-Z"
"348 fBodyAccJerk-std()-X"
"349 fBodyAccJerk-std()-Y"
"350 fBodyAccJerk-std()-Z"
"427 fBodyGyro-std()-X"
"428 fBodyGyro-std()-Y"
"429 fBodyGyro-std()-Z"
"504 fBodyAccMag-std()"
"517 fBodyBodyAccJerkMag-std()"
"530 fBodyBodyGyroMag-std()"
"543 fBodyBodyGyroJerkMag-std()"


Next, the script adds descriptive names and merges the test and train data sets into a single data frame. It will then aggregate the variables by ID and type to create a tidy dataframe. 

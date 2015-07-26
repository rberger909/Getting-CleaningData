
##Code Book for the 'Getting and Cleaning Data' Course Project

#Background

The data related to this project was compile by the University of California - Irvine and is entitled "Human Activity Recognition Using Smartphones Data Set".

- A link to the dataset itself can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- A link with further information about the dataset can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#Dataset

The dataset was ultimately composed of 81 varibles:

-V1
-V1
-tBodyAcc-mean()-Y
-tBodyAcc-mean()-Z
-tBodyAcc-std()-X
-tBodyAcc-std()-Y
-tBodyAcc-std()-Z
-tGravityAcc-mean()-X
-tGravityAcc-mean()-Y
-tGravityAcc-mean()-Z
-tGravityAcc-std()-X
-tGravityAcc-std()-Y
-tGravityAcc-std()-Z
-tBodyAccJerk-mean()-X
-tBodyAccJerk-mean()-Y
-tBodyAccJerk-mean()-Z
-tBodyAccJerk-std()-X
-tBodyAccJerk-std()-Y
-tBodyAccJerk-std()-Z
-tBodyGyro-mean()-X
-tBodyGyro-mean()-Y
-tBodyGyro-mean()-Z
-tBodyGyro-std()-X
-tBodyGyro-std()-Y
-tBodyGyro-std()-Z
-tBodyGyroJerk-mean()-X
-tBodyGyroJerk-mean()-Y
-tBodyGyroJerk-mean()-Z
-tBodyGyroJerk-std()-X
-tBodyGyroJerk-std()-Y
-tBodyGyroJerk-std()-Z
-tBodyAccMag-mean()
-tBodyAccMag-std()
-tGravityAccMag-mean()
-tGravityAccMag-std()
-tBodyAccJerkMag-mean()
-tBodyAccJerkMag-std()
-tBodyGyroMag-mean()
-tBodyGyroMag-std()
-tBodyGyroJerkMag-mean()
-tBodyGyroJerkMag-std()
-fBodyAcc-mean()-X
-fBodyAcc-mean()-Y
-fBodyAcc-mean()-Z
-fBodyAcc-std()-X
-fBodyAcc-std()-Y
-fBodyAcc-std()-Z
-fBodyAcc-meanFreq()-X
-fBodyAcc-meanFreq()-Y
-fBodyAcc-meanFreq()-Z
-fBodyAccJerk-mean()-X
-fBodyAccJerk-mean()-Y
-fBodyAccJerk-mean()-Z
-fBodyAccJerk-std()-X
-fBodyAccJerk-std()-Y
-fBodyAccJerk-std()-Z
-fBodyAccJerk-meanFreq()-X
-fBodyAccJerk-meanFreq()-Y
-fBodyAccJerk-meanFreq()-Z
-fBodyGyro-mean()-X
-fBodyGyro-mean()-Y
-fBodyGyro-mean()-Z
-fBodyGyro-std()-X
-fBodyGyro-std()-Y
-fBodyGyro-std()-Z
-fBodyGyro-meanFreq()-X
-fBodyGyro-meanFreq()-Y
-fBodyGyro-meanFreq()-Z
-fBodyAccMag-mean()
-fBodyAccMag-std()
-fBodyAccMag-meanFreq()
-fBodyBodyAccJerkMag-mean()
-fBodyBodyAccJerkMag-std()
-fBodyBodyAccJerkMag-meanFreq()
-fBodyBodyGyroMag-mean()
-fBodyBodyGyroMag-std()
-fBodyBodyGyroMag-meanFreq()
-fBodyBodyGyroJerkMag-mean()
-fBodyBodyGyroJerkMag-std()
-fBodyBodyGyroJerkMag-meanFreq()

Which were then converted to understandable column names using the following rules:

-. Became " "
-tGravity Became Gravity
-mean Became Mean
-std BecameSTDev
-Acc Became Acceleration
-Freq Became Frequency
-Gyro Became Gyroscope
-BodyBody BecameBody Body
-Mag Became Magnitude
-"  " Became " "
-"   " Became " " 
-"    " Became " "
-V1 Became Activities
-V1 Became Subjects

The resulting output was as follows:

-Activities
-Subjects
-tBody Acceleration  Mean  X
-tBody Acceleration  Mean  Y
-tBody Acceleration  Mean  Z
-Gravity Acceleration  Mean  X
-Gravity Acceleration  Mean  Y
-Gravity Acceleration  Mean  Z
-tBody Acceleration Jerk Mean  X
-tBody Acceleration Jerk Mean  Y
-tBody Acceleration Jerk Mean  Z
-tBody Gyroscope  Mean  X
-tBody Gyroscope  Mean  Y
-tBody Gyroscope  Mean  Z
-tBody Gyroscope Jerk Mean  X
-tBody Gyroscope Jerk Mean  Y
-tBody Gyroscope Jerk Mean  Z
-tBody Acceleration Magnitude  Mean  
-Gravity Acceleration Magnitude  Mean  
-tBody Acceleration Jerk Magnitude  Mean  
-tBody Gyroscope Magnitude  Mean  
-tBody Gyroscope Jerk Magnitude  Mean  
-fBody Acceleration  Mean  X
-fBody Acceleration  Mean  Y
-fBody Acceleration  Mean  Z
-fBody Acceleration  Mean Frequency  X
-fBody Acceleration  Mean Frequency  Y
-fBody Acceleration  Mean Frequency  Z
-fBody Acceleration Jerk Mean  X
-fBody Acceleration Jerk Mean  Y
-fBody Acceleration Jerk Mean  Z
-fBody Acceleration Jerk Mean Frequency  X
-fBody Acceleration Jerk Mean Frequency  Y
-fBody Acceleration Jerk Mean Frequency  Z
-fBody Gyroscope  Mean  X
-fBody Gyroscope  Mean  Y
-fBody Gyroscope  Mean  Z
-fBody Gyroscope  Mean Frequency  X
-fBody Gyroscope  Mean Frequency  Y
-fBody Gyroscope  Mean Frequency  Z
-fBody Acceleration Magnitude  Mean  
-fBody Acceleration Magnitude  Mean Frequency  
-fBody Body Acceleration Jerk Magnitude  Mean  
-fBody Body Acceleration Jerk Magnitude  Mean Frequency  
-fBody Body Gyroscope Magnitude  Mean  
-fBody Body Gyroscope Magnitude  Mean Frequency  
-fBody Body Gyroscope Jerk Magnitude  Mean  
-fBody Body Gyroscope Jerk Magnitude  Mean Frequency  
-tBody Acceleration STDev  X
-tBody Acceleration STDev  Y
-tBody Acceleration STDev  Z
-Gravity Acceleration STDev  X
-Gravity Acceleration STDev  Y
-Gravity Acceleration STDev  Z
-tBody Acceleration Jerk STDev  X
-tBody Acceleration Jerk STDev  Y
-tBody Acceleration Jerk STDev  Z
-tBody Gyroscope STDev  X
-tBody Gyroscope STDev  Y
-tBody Gyroscope STDev  Z
-tBody Gyroscope Jerk STDev  X
-tBody Gyroscope Jerk STDev  Y
-tBody Gyroscope Jerk STDev  Z
-tBody Acceleration Magnitude STDev 
-Gravity Acceleration Magnitude STDev 
-tBody Acceleration Jerk Magnitude STDev 
-tBody Gyroscope Magnitude STDev 
-tBody Gyroscope Jerk Magnitude STDev 
-fBody Acceleration STDev  X
-fBody Acceleration STDev  Y
-fBody Acceleration STDev  Z
-fBody Acceleration Jerk STDev  X
-fBody Acceleration Jerk STDev  Y
-fBody Acceleration Jerk STDev  Z
-fBody Gyroscope STDev  X
-fBody Gyroscope STDev  Y
-fBody Gyroscope STDev  Z
-fBody Acceleration Magnitude STDev 
-fBody Body Acceleration Jerk Magnitude STDev 
-fBody Body Gyroscope Magnitude STDev 
-fBody Body Gyroscope Jerk Magnitude STDev

The "Activities" Column was also modified so as to map each value with an understandable action. Those rules were as follows:

-1 Became WALKING
-2 Became WALKING_UPSTAIRS
-3 Became WALKING_DOWNSTAIRS
-4 Became SITTING
-5 Became STANDING
-6 Became LAYING
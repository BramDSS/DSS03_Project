#Codebook for getting and cleaning data

##General information on features
The following block is quoted from the "features_info.txt", as provided with the data. It contains general information about the variables in the files.

***
>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
>
>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
>
>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
>
>These signals were used to estimate variables of the feature vector for each pattern:  
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

>tBodyAcc-XYZ  
>tGravityAcc-XYZ  
>tBodyAccJerk-XYZ  
>tBodyGyro-XYZ  
>tBodyGyroJerk-XYZ  
>tBodyAccMag  
>tGravityAccMag  
>tBodyAccJerkMag  
>tBodyGyroMag  
>tBodyGyroJerkMag  
>fBodyAcc-XYZ  
>fBodyAccJerk-XYZ  
>fBodyGyro-XYZ  
>fBodyAccMag  
>fBodyAccJerkMag  
>fBodyGyroMag  
>fBodyGyroJerkMag  
>
>The set of variables that were estimated from these signals are: 
>
>mean(): Mean value  
>std(): Standard deviation

***

## Description per variable

Variable|Type|Value (s)|Description
---|---|---|---
subjectId|int|1..30|Id number of person who performed the activity
activityLabel|chr|LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS,WALKING_UPSTAIRS|Activity
MeanOftBodyAccMeanX|num|[-1,1]|Mean of the time domain signals body acceleration means in X dimension
MeanOftBodyAccMeanY|num|[-1,1]|Mean of the time domain signals body acceleration means in Y dimension
MeanOftBodyAccMeanZ|num|[-1,1]|Mean of the time domain signals body acceleration means in Z dimension
MeanOftBodyAccStdX|num|[-1,1]|Mean of the time domain signals body acceleration standard deviations in X dimension
MeanOftBodyAccStdY|num|[-1,1]|Mean of the time domain signals body acceleration standard deviations in Y dimension
MeanOftBodyAccStdZ|num|[-1,1]|Mean of the time domain signals body acceleration standard deviations in Z dimension
MeanOftGravityAccMeanX|num|[-1,1]|Mean of the time domain signals gravity acceleration means in X dimension
MeanOftGravityAccMeanY|num|[-1,1]|Mean of the time domain signals gravity acceleration means in Y dimension
MeanOftGravityAccMeanZ|num|[-1,1]|Mean of the time domain signals gravity acceleration means in Z dimension
MeanOftGravityAccStdX|num|[-1,1]|Mean of the time domain signals gravity acceleration standard deviations in X dimension
MeanOftGravityAccStdY|num|[-1,1]|Mean of the time domain signals gravity acceleration standard deviations in Y dimension
MeanOftGravityAccStdZ|num|[-1,1]|Mean of the time domain signals gravity acceleration standard deviations in Z dimension
MeanOftBodyAccJerkMeanX|num|[-1,1]|Mean of the time domain signals body acceleration jerk means in X dimension
MeanOftBodyAccJerkMeanY|num|[-1,1]|Mean of the time domain signals body acceleration jerk means in Y dimension
MeanOftBodyAccJerkMeanZ|num|[-1,1]|Mean of the time domain signals body acceleration jerk means in Z dimension
MeanOftBodyAccJerkStdX|num|[-1,1]|Mean of the time domain signals body acceleration jerk standard deviations in X dimension
MeanOftBodyAccJerkStdY|num|[-1,1]|Mean of the time domain signals body acceleration jerk standard deviations in Y dimension
MeanOftBodyAccJerkStdZ|num|[-1,1]|Mean of the time domain signals body acceleration jerk standard deviations in Z dimension
MeanOftBodyGyroMeanX|num|[-1,1]|Mean of the time domain signals body gyroscope means in X dimension
MeanOftBodyGyroMeanY|num|[-1,1]|Mean of the time domain signals body gyroscope means in Y dimension
MeanOftBodyGyroMeanZ|num|[-1,1]|Mean of the time domain signals body gyroscope means in Z dimension
MeanOftBodyGyroStdX|num|[-1,1]|Mean of the time domain signals body gyroscope standard deviations in X dimension
MeanOftBodyGyroStdY|num|[-1,1]|Mean of the time domain signals body gyroscope standard deviations in Y dimension
MeanOftBodyGyroStdZ|num|[-1,1]|Mean of the time domain signals body gyroscope standard deviations in Z dimension
MeanOftBodyGyroJerkMeanX|num|[-1,1]|Mean of the time domain signals body gyroscope jerk means in X dimension
MeanOftBodyGyroJerkMeanY|num|[-1,1]|Mean of the time domain signals body gyroscope jerk means in Y dimension
MeanOftBodyGyroJerkMeanZ|num|[-1,1]|Mean of the time domain signals body gyroscope jerk means in Z dimension
MeanOftBodyGyroJerkStdX|num|[-1,1]|Mean of the time domain signals body gyroscope jerk standard deviations in X dimension
MeanOftBodyGyroJerkStdY|num|[-1,1]|Mean of the time domain signals body gyroscope jerk standard deviations in Y dimension
MeanOftBodyGyroJerkStdZ|num|[-1,1]|Mean of the time domain signals body gyroscope jerk standard deviations in Z dimension
MeanOftBodyAccMagMean|num|[-1,1]|Mean of the time domain signals body acceleration magnitude means
MeanOftBodyAccMagStd|num|[-1,1]|Mean of the time domain signals body acceleration magnitude standard deviations
MeanOftGravityAccMagMean|num|[-1,1]|Mean of the time domain signals gravity acceleration magnitude means
MeanOftGravityAccMagStd|num|[-1,1]|Mean of the time domain signals gravity acceleration magnitude standard deviations
MeanOftBodyAccJerkMagMean|num|[-1,1]|Mean of the time domain signals body acceleration jerk magnitude means
MeanOftBodyAccJerkMagStd|num|[-1,1]|Mean of the time domain signals body acceleration jerk magnitude standard deviations
MeanOftBodyGyroMagMean|num|[-1,1]|Mean of the time domain signals body gyroscope magnitude means
MeanOftBodyGyroMagStd|num|[-1,1]|Mean of the time domain signals body gyroscope magnitude standard deviations
MeanOftBodyGyroJerkMagMean|num|[-1,1]|Mean of the time domain signals body gyroscope jerk magnitude means
MeanOftBodyGyroJerkMagStd|num|[-1,1]|Mean of the time domain signals body gyroscope jerk magnitude standard deviations
MeanOffBodyAccMeanX|num|[-1,1]|Mean of the frequency domain signals body acceleration means in X dimension
MeanOffBodyAccMeanY|num|[-1,1]|Mean of the frequency domain signals body acceleration means in Y dimension
MeanOffBodyAccMeanZ|num|[-1,1]|Mean of the frequency domain signals body acceleration means in Z dimension
MeanOffBodyAccStdX|num|[-1,1]|Mean of the frequency domain signals body acceleration standard deviations in X dimension
MeanOffBodyAccStdY|num|[-1,1]|Mean of the frequency domain signals body acceleration standard deviations in Y dimension
MeanOffBodyAccStdZ|num|[-1,1]|Mean of the frequency domain signals body acceleration standard deviations in Z dimension
MeanOffBodyAccJerkMeanX|num|[-1,1]|Mean of the frequency domain signals body acceleration jerk means in X dimension
MeanOffBodyAccJerkMeanY|num|[-1,1]|Mean of the frequency domain signals body acceleration jerk means in Y dimension
MeanOffBodyAccJerkMeanZ|num|[-1,1]|Mean of the frequency domain signals body acceleration jerk means in Z dimension
MeanOffBodyAccJerkStdX|num|[-1,1]|Mean of the frequency domain signals body acceleration jerk standard deviations in X dimension
MeanOffBodyAccJerkStdY|num|[-1,1]|Mean of the frequency domain signals body acceleration jerk standard deviations in Y dimension
MeanOffBodyAccJerkStdZ|num|[-1,1]|Mean of the frequency domain signals body acceleration jerk standard deviations in Z dimension
MeanOffBodyGyroMeanX|num|[-1,1]|Mean of the frequency domain signals body gyroscope means in X dimension
MeanOffBodyGyroMeanY|num|[-1,1]|Mean of the frequency domain signals body gyroscope means in Y dimension
MeanOffBodyGyroMeanZ|num|[-1,1]|Mean of the frequency domain signals body gyroscope means in Z dimension
MeanOffBodyGyroStdX|num|[-1,1]|Mean of the frequency domain signals body gyroscope standard deviations in X dimension
MeanOffBodyGyroStdY|num|[-1,1]|Mean of the frequency domain signals body gyroscope standard deviations in Y dimension
MeanOffBodyGyroStdZ|num|[-1,1]|Mean of the frequency domain signals body gyroscope standard deviations in Z dimension
MeanOffBodyAccMagMean|num|[-1,1]|Mean of the frequency domain signals body acceleration magnitude means
MeanOffBodyAccMagStd|num|[-1,1]|Mean of the frequency domain signals body acceleration magnitude standard deviations
MeanOffBodyAccJerkMagMean|num|[-1,1]|Mean of the frequency domain signals body acceleration jerk magnitude means
MeanOffBodyAccJerkMagStd|num|[-1,1]|Mean of the frequency domain signals body acceleration jerk magnitude standard deviations
MeanOffBodyGyroMagMean|num|[-1,1]|Mean of the frequency domain signals body gyroscope magnitude means
MeanOffBodyGyroMagStd|num|[-1,1]|Mean of the frequency domain signals body gyroscope magnitude standard deviations
MeanOffBodyGyroJerkMagMean|num|[-1,1]|Mean of the frequency domain signals body gyroscope jerk magnitude means
MeanOffBodyGyroJerkMagStd|num|[-1,1]|Mean of the frequency domain signals body gyroscope jerk magnitude standard deviations


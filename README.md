# Project: Getting and cleaning data
***
* Overview
  + Project summary
  + General data description
  + Project requirements
* Process steps
  + Outline of the steps
  + Assumptions made during the process
* Additional remarks


## Overview
***
### Project summary
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.
For the project, a data set is provided which contains data collected from the accelerometers from the Samsung
Galaxy S smartphone.

### General data description
A full description is available at the site where the data was obtained (link as provided by the project assignment):
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Detailed information about the files provided can be found in the "README.txt", as copied below:

***
>==================================================================
>Human Activity Recognition Using Smartphones Dataset
>Version 1.0
>==================================================================
>Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
>Smartlab - Non Linear Complex Systems Laboratory
>DITEN - Università degli Studi di Genova.
>Via Opera Pia 11A, I-16145, Genoa, Italy.
>activityrecognition@smartlab.ws
>www.smartlab.ws
>==================================================================
>
>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed >six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy >S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular >velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset >has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% >the test data.
>
>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width >sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and >body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational >force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each >window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' >for more details. 
>
>For each record it is provided:
>======================================
>
>- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
>- Triaxial Angular velocity from the gyroscope. 
>- A 561-feature vector with time and frequency domain variables. 
>- Its activity label. 
>- An identifier of the subject who carried out the experiment.
>
>The dataset includes the following files:
>=========================================
>
>- 'README.txt'
>- 'features_info.txt': Shows information about the variables used on the feature vector.
>- 'features.txt': List of all features.
>- 'activity_labels.txt': Links the class labels with their activity name.
>- 'train/X_train.txt': Training set.
>- 'train/y_train.txt': Training labels.
>- 'test/X_test.txt': Test set.
>- 'test/y_test.txt': Test labels.
>
>The following files are available for the train and test data. Their descriptions are equivalent. 
>
>For more information about this dataset contact: activityrecognition@smartlab.ws
>
>License:
>========
>Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
>
>[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on >Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living >(IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
>
>This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their >institutions for its use or misuse. Any commercial use is prohibited.
>
>Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

***
Further information about the files, especially the features provided in the X_train.txt and X_test.txt can be found in the "features_info.txt".

### Project requirements
The requiremetns for the project are (quote from the project assignment):

>You should create one R script called run_analysis.R that does the following.
>1. Merges the training and the test sets to create one data set.
>2. Extracts only the measurements on the mean and standard deviation for each measurement.
>3. Uses descriptive activity names to name the activities in the data set
>4. Appropriately labels the data set with descriptive variable names.
>5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity >and each subject.

A script meeting all the requirements mentioned above is provided in this github repository.

## The process
***
### Outline of the steps
The process of creating the first tidy data set can be outlined as follows:
1. Download file
2. Unzip file
3. Read activity data and features file
4. Clean the column names (as provided in features file): meeting requirement # 4
5. Select the required column names (needed for requirement # 2)
6. Reading test group data
  + X_test and select appropriate columns (requirement # 2)
  + subject_test
  + y_test
  + combine test data to 1 test set
7. Reading training group data
  + X_train and select appropriate columns (requirement # 2)
  + subject_train
  + y_train
  + combine training data to 1 training set
8. Merge training and test sets (requirement # 1)
9. Add proper activity labels instead of activity id's (requirement # 3)
10. Remove unnecessary variables from workspace
11. Load dplyr package (necessary for next step)
12. Create group means for the variables (requirement # 5)
13. Improve names of calculated averages
14. Write the table to file.

###  Assumptions made during the process
During the process, the following assumptions have been made:
* The dplyr package is installed. Although the package is loaded in the script, it is not installed. If the package has not been installed (previously), it should be installed prior to running the script by command "install.packages(dplyr)".


## Additional remarks
***

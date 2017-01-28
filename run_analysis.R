##############################################################################
# General preparations
##############################################################################

##########
# If subdirectory "Data"  doesn't exist: create it
if (!file.exists("Data")) {
    dir.create("Data")
}

##########
# Download file & unzip file
url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./Data/HARUS.zip")
unzip("./Data/HARUS.zip", exdir="./Data")


##########
# First read general data

# Activity labels
activitylabels <- read.table("./Data/UCI HAR Dataset/activity_labels.txt", 
                             col.names = c("activityId","activityLabel"),
                             stringsAsFactors = FALSE)

# and features (column names of X_train/test)
features <- read.table("./Data/UCI HAR Dataset/features.txt",
                       stringsAsFactors = FALSE)

# select columns for mean and standard deviation columns
# assuming meanFreq() (also present in data) is not meant to be extracted: this will be excluded automatically by grep on mean() including () )
OnlyMean <- grepl("mean\\(\\)",features[,2])
OnlyStd <- grepl("std\\(\\)",features[,2])

# Original column names need some cleaning: create vector with "clean" names 
# This needs some cleaning: remove "()" and "-" and ","
CleanNames <- features[,2]
CleanNames <- gsub(",", "", CleanNames)
CleanNames <- gsub("-", "", CleanNames)
CleanNames <- gsub("\\(\\)", "", CleanNames)
CleanNames <- gsub("BodyBody", "Body", CleanNames)
# To keep names better readable: add upper case to first letter of mean and std
CleanNames <- gsub("mean", "Mean", CleanNames)
CleanNames <- gsub("std", "Std", CleanNames)

# And the selected columns from the clean names:
ColumnSelectNames <- CleanNames[OnlyMean | OnlyStd]

##########
# Test-group

# X-test
X_test <- read.table("./Data/UCI HAR Dataset/test/X_test.txt",
                     sep = "", dec = ".")

# assign proper column names (requirement #4)
colnames(X_test) <- CleanNames
# select required columns (requirement #2)
X_test <- X_test[,ColumnSelectNames]

# subject-test
subject_test <- read.table("./Data/UCI HAR Dataset/test/subject_test.txt",
                           col.names = c("subjectId"), sep = "", dec = ".")

# y-test
y_test <- read.table("./Data/UCI HAR Dataset/test/y_test.txt",
                     col.names = c("activityId"), sep = "", dec = ".")

# combine subject, activity and test results
Test <- cbind(subject_test, y_test, X_test)


##########
# Train-group

# X-train
X_train <- read.table("./Data/UCI HAR Dataset/train/X_train.txt", sep = "", dec = ".")

# assign proper column names (requirement #4)
colnames(X_train) <- CleanNames
# select required columns (requirement #2)
X_train <- X_train[,ColumnSelectNames]

# subject-train
subject_train <- read.table("./Data/UCI HAR Dataset/train/subject_train.txt",
                            col.names = c("subjectId"), sep = "", dec = ".")

# y-train
y_train <- read.table("./Data/UCI HAR Dataset/train/y_train.txt",
                      col.names = c("activityId"), sep = "", dec = ".")

# combine subject, activity and test resultsTrain <- cbind(subject_train, y_train, X_train)
Train <- cbind(subject_train, y_train, X_train)


##########
# Make it one set with all observations (requirement # 1)

Total <- rbind(Test, Train)
# Requirement # 3: Descriptive activity names
Total <- merge(Total, activitylabels, by = "activityId")
# Nicer to have first subjecId, then activityLabel and further variables (skip activityId)
Total <- Total[,c(2,69,3:68)]

# Remove old stuff from workspace
rm(url)
rm(X_test, subject_test, y_test, X_train, subject_train, y_train)
rm(activitylabels, features, CleanNames, ColumnSelectNames, OnlyMean, OnlyStd)
rm(Test, Train)


##########
# Requirement 5: create another tidy data set with the average of each variable
# for each subject and each activity

# Load dplyr to apply group and summarise_each
library(dplyr)

# calculate average of each variable for each subject and each activity
FinalTable <- Total %>%
    group_by(subjectId, activityLabel) %>%
    summarise_each(funs(mean)) %>%
    ungroup

# Provide better names to indicate te calculation of mean of original variable
NewColNames <- c("subjectId","activityLabel", paste("MeanOf",colnames(FinalTable[3:68]),sep =""))
colnames(FinalTable) <- NewColNames
rm(NewColNames)

# write result to a file (in working directory)
write.table(FinalTable, file = "./Data/ResultTable.txt",
            row.names = FALSE,
            col.names = TRUE)

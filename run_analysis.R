## Course Project for Johns Hopkins' Getting and Cleaning Data Course
## https://class.coursera.org/getdata-004/human_grading
## FAQ: https://class.coursera.org/getdata-004/forum/thread?thread_id=106
## June 2014

date() # "Mon Jun 09 11:52:10 2014"

##
## 1. Merge the training and the test sets to create one data set
##

library(data.table)
features <- # 561 observations of 2 variables
  fread("UCI HAR Dataset\\features.txt", header=FALSE)
setnames(features, 1:2, c("feature_column_index", "feature_name"))

if (! identical(features$feature_column_index, 
                seq(1,nrow(features))))
  stop("ERROR, features.txt: This script assumes the feature names 
        are completely listed in order of the corresponding data columns.")

##
## 1.a  Training Data and Activities
##

# read.table() is used because fread doesn't yet handle leading spaces
# See http://r.789695.n4.nabble.com/leading-spaces-on-column-names-from-CSV-file-td4683986.html
# When fread() has been fixed, reading can be speeded up using fread(). 

trainMeasurements <- as.data.table( # 7352 observations of 561 variables
   read.table("UCI HAR Dataset\\train\\X_train.txt", header=FALSE))

if (nrow(features) != ncol(trainMeasurements))
  stop("ERROR, X_train.txt: This script assumes all columns correspond to a 
        name in features.txt . A mean or stddev may be missed
       by this script")

trainActivities <-  # 7352 observations of 1 variable
    fread("UCI HAR Dataset\\train\\y_train.txt", header=FALSE)
setNames(trainActivities, "labelID")

train <- cbind(trainMeasurements, trainActivities)

##
## 1.b Testing Data and Activities
##

testMeasurements <- as.data.table( # 7352 observations of 561 variables
  read.table("UCI HAR Dataset\\test\\X_test.txt", header=FALSE))

if (nrow(features) != ncol(testMeasurements))
  stop("ERROR, X_test.txt: This script assumes all columns correspond to a 
        name in features.txt . A mean or stddev may be missed
       by this script")

testActivities <-  # 7352 observations of 1 variable
  fread("UCI HAR Dataset\\test\\y_test.txt", header=FALSE)
setNames(testActivities, "labelID")

test <- cbind(testMeasurements, testActivities)

##
## 1.c Combine Train and Test into one table, identifying which is which
##

isTestData <- c( # Used in step 2.
  rep(c(FALSE), times=nrow(train)),
  rep(c(TRUE),  times=nrow(test)))

trainAndTest <- rbind(train,test)

# Identify which rows are from train and which are from test
trainAndTest <- cbind(trainAndTest, isTestData)


##
## 2. Extract only the measurements on the mean and standard deviation for each
## measurement
##


meanAndStdColNums <- grep("mean|std", features$feature_name, ignore.case = TRUE)
keptFeatureNames <- features$feature_name[meanAndStdColNums]
keptFeatureColNames <- names(trainAndTest)[meanAndStdColNums]  # V1, V2,V46, ...

# We want to keep the activity label column and the train/test identification
keepCols <- c(meanAndStdColNums, 
              which(names(trainAndTest)=="labelID"),
              which(names(trainAndTest)=="isTestData"))
trainAndTest <- trainAndTest[,keepCols,with=FALSE]

##
## 3. Use descriptive activity names to name the activities in the data set
##

activityNames <- 
  fread("UCI HAR Dataset\\activity_labels.txt", header=FALSE)
setnames(activityNames, 1:2, c("labelID", "labelName"))
setkey(activityNames, labelID)

# Replace activity IDs with activity names
setkey(trainAndTest,labelID)
trainAndTest <- activityNames[trainAndTest]

# We don't need the labelID anymore
trainAndTest[,labelID:=NULL]

##
## 4. Appropriately label the data set with descriptive variable names
##

setnames(train, old=keptFeatureColNames, new=keptFeatureNames)

##
## 5. Creates a second, independent tidy data set with the average of each
## variable for each activity and each subject.
##




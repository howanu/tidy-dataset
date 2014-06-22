## Course Project for Johns Hopkins' Getting and Cleaning Data Course
## https://class.coursera.org/getdata-004/human_grading
## FAQ: https://class.coursera.org/getdata-004/forum/thread?thread_id=106
## June 2014

date() # "Sun Jun 22 10:20:32 2014"

##
## 1. Merge the training and the test sets to create one data set
##

library(data.table)
features <- # 561 observations of 2 variables
  fread("UCI HAR Dataset\\features.txt", header=FALSE)
setnames(features, 1:2, c("feature_column_index", "feature_name"))

# Feature names will be used as column names, so we make them valid
features$feature_name <- make.names(features$feature_name, unique=TRUE)

if (! identical(features$feature_column_index, 
                seq(1,nrow(features))))
  stop("ERROR, features.txt: This script assumes the feature names 
        are completely listed in order of the corresponding data columns.")

##
## 1.a  Training Data, Activities, and Subjects
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
setNames(trainActivities, "activityID")

train <- cbind(trainMeasurements, trainActivities)

trainSubjects <-  # 7352 observations of 1 variable
  fread("UCI HAR Dataset\\train\\subject_train.txt", header=FALSE)
setNames(trainSubjects, "subject")

train <- cbind(train, trainSubjects)

##
## 1.b Testing Data, Activities, and Subjects
##

testMeasurements <- as.data.table( # 7352 observations of 561 variables
  read.table("UCI HAR Dataset\\test\\X_test.txt", header=FALSE))

if (nrow(features) != ncol(testMeasurements))
  stop("ERROR, X_test.txt: This script assumes all columns correspond to a 
        name in features.txt . A mean or stddev may be missed
       by this script")

testActivities <-  # 7352 observations of 1 variable
  fread("UCI HAR Dataset\\test\\y_test.txt", header=FALSE)
setNames(testActivities, "activityID")

test <- cbind(testMeasurements, testActivities)

testSubjects <-  # 7352 observations of 1 variable
  fread("UCI HAR Dataset\\test\\subject_test.txt", header=FALSE)
setNames(testSubjects, "subject")

test <- cbind(test, testSubjects)

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

# We want to keep the activity label column, the subject,
# and the train/test identification
keepCols <- c(meanAndStdColNums, 
              which(names(trainAndTest)=="activityID"),
              which(names(trainAndTest)=="subject"),
              which(names(trainAndTest)=="isTestData"))
trainAndTest <- trainAndTest[,keepCols,with=FALSE]

##
## 3. Use descriptive activity names to name the activities in the data set
##

activityNames <- 
  fread("UCI HAR Dataset\\activity_labels.txt", header=FALSE)
setnames(activityNames, 1:2, c("activityID", "activity"))
setkey(activityNames, activityID)

# Replace activity IDs with activity names
setkey(trainAndTest,activityID)
trainAndTest <- activityNames[trainAndTest]

# We don't need the activityID anymore
trainAndTest[,activityID:=NULL]

##
## 4. Appropriately label the data set with descriptive variable names
##

setnames(trainAndTest, old=keptFeatureColNames, new=keptFeatureNames)

##
## 5. Create a second, independent tidy data set with the average of each
## variable for each activity and each subject
##

## 
## 5.a Create the averages. 
## Note that each subject is either a training subject 
## or a testing subject, but never both. Grouping by activity, subject, and 
## isTestData therefore creates the same averages as grouping by just activity 
## and subject.
## 
tidydata <- 
  trainAndTest[,lapply(.SD,mean), by=list(activity, subject, isTestData)]

## 
## 5.b Append ".Avg" to measurement names to indicate by-activity/subject
## averages
##
avgNames <- sapply(keptFeatureNames, function(name) { paste0(name, ".Avg") })
setnames(tidydata, old=keptFeatureNames, new=avgNames)

##
## 5.c Write the tidy dataset
##
write.csv(tidydata, file="tidydata.csv")

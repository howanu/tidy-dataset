TIDY DATASET CODE BOOK
======================

The file tidydata.csv.txt contains a tidy data set, as described in [Hadley Wickham's Tidy Data paper](http://vita.had.co.nz/papers/tidy-data.pdf):

1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.

SOURCE
------

A description of the assignment that motivated the data extraction is on the [Coursera Data Cleaning course project page](https://class.coursera.org/getdata-004/human_grading/view/courses/972137/assessments/3/submissions). The course provided [its own copy of the dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). The features.txt and features_info.txt files from that dataset form the basis for the code book variable descriptions below.

The source of the data is the [Smart Lab at the University of Genova](https://sites.google.com/site/smartlabunige/). The experiment captured Samsung phone measurements and applied data transformations and extractions in an effort to classify in which of 6 activities a human was engaged while wearing the Samsung phone.

The data was taken from the archive of the [University of California at Irvine](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

HOW TO LOAD THE DATA
--------------------

To load the file tidydata.csv.txt, rename the file by stripping off the ".txt" suffix. THe file contains comma separated values and the first line is a header identifying the value columns.

CODE BOOK (tidydata.csv)
---------

Column|Name|Description
------|----|-----------
1|activity|Activity being performed during measurement: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING
2|subject|The subject being measured, a number between 1 and 30
3|isTestData|Was the subject a training subject or a test subject? TRUE (test subject) or FALSE (training subject)
4|tBodyAcc.mean...X.Avg|X value of the means of time domain body acceleration averaged for this subject and activity
5|tBodyAcc.mean...Y.Avg|Y value of the means of time domain body acceleration averaged for this subject and activity
6|tBodyAcc.mean...Z.Avg|Z value of the means of time domain body acceleration averaged for this subject and activity
7|tBodyAcc.std...X.Avg|X value of the standard deviations of time domain body acceleration averaged for this subject and activity
8|tBodyAcc.std...Y.Avg|Y value of the standard deviations of time domain body acceleration averaged for this subject and activity
9|tBodyAcc.std...Z.Avg|Z value of the standard deviations of time domain body acceleration averaged for this subject and activity
10|tGravityAcc.mean...X.Avg|X value of the means of time domain gravity acceleration averaged for this subject and activity
11|tGravityAcc.mean...Y.Avg|Y value of the means of time domain gravity acceleration averaged for this subject and activity
12|tGravityAcc.mean...Z.Avg|Y value of the means of time domain gravity acceleration averaged for this subject and activity
13|tGravityAcc.std...X.Avg|X value of the standard deviations of time domain gravity acceleration averaged for this subject and activity
14|tGravityAcc.std...Y.Avg|Y value of the standard deviations of time domain gravity acceleration averaged for this subject and activity
15|tGravityAcc.std...Z.Avg|Y value of the standard deviations of time domain gravity acceleration averaged for this subject and activity
16|tBodyAccJerk.mean...X.Avg|X value of the means of time domain body acceleration jerk averaged for this subject and activity
17|tBodyAccJerk.mean...Y.Avg|Y value of the means of time domain body acceleration jerk averaged for this subject and activity
18|tBodyAccJerk.mean...Z.Avg|Z value of the means of time domain body acceleration jerk averaged for this subject and activity
19|tBodyAccJerk.std...X.Avg|X value of the standard deviations of time domain body acceleration jerk averaged for this subject and activity
20|tBodyAccJerk.std...Y.Avg|Y value of the standard deviations of time domain body acceleration jerk averaged for this subject and activity
21|tBodyAccJerk.std...Z.Avg|Z value of the standard deviations of time domain body acceleration jerk averaged for this subject and activity
22|tBodyGyro.mean...X.Avg|X value of the means of time domain body angular velocity averaged for this subject and activity
23|tBodyGyro.mean...Y.Avg|Y value of the means of time domain body angular velocity averaged for this subject and activity
24|tBodyGyro.mean...Z.Avg|Z value of the means of time domain body angular velocity averaged for this subject and activity
25|tBodyGyro.std...X.Avg|X value of the standard deviations of time domain body angular velocity averaged for this subject and activity
26|tBodyGyro.std...Y.Avg|Y value of the standard deviations of time domain body angular velocity averaged for this subject and activity
27|tBodyGyro.std...Z.Avg|Z value of the standard deviations of time domain body angular velocity averaged for this subject and activity
28|tBodyGyroJerk.mean...X.Avg|X value of the means of time domain body angular velocity jerk averaged for this subject and activity
29|tBodyGyroJerk.mean...Y.Avg|Y value of the means of time domain body angular velocity jerk averaged for this subject and activity
30|tBodyGyroJerk.mean...Z.Avg|Z value of the means of time domain body angular velocity jerk averaged for this subject and activity
31|tBodyGyroJerk.std...X.Avg|X value of the standard deviations of time domain body angular velocity jerk averaged for this subject and activity
32|tBodyGyroJerk.std...Y.Avg|Y value of the standard deviations of time domain body angular velocity jerk averaged for this subject and activity
33|tBodyGyroJerk.std...Z.Avg|Z value of the standard deviations of time domain body angular velocity jerk averaged for this subject and activity
34|tBodyAccMag.mean...Avg|Time domain body acceleration magnitude means averaged for this subject and activity
35|tBodyAccMag.std...Avg|Time domain body acceleration magnitude standard deviations averaged for this subject and activity
36|tGravityAccMag.mean...Avg|Time domain gravity acceleration magnitude means averaged for this subject and activity
37|tGravityAccMag.std...Avg|Time domain gravity acceleration magnitude standard deviations averaged for this subject and activity
38|tBodyAccJerkMag.mean...Avg|Time domain body angular valocity jerk means averaged for this subject and activity
39|tBodyAccJerkMag.std...Avg|Time domain body angular valocity jerk standard deviations averaged for this subject and activity
40|tBodyGyroMag.mean...Avg|Time domain body angular velocity magnitude means averaged for this subject and activity
41|tBodyGyroMag.std...Avg|Time domain body angular velocity magnitude standard deviations averaged for this subject and activity
42|tBodyGyroJerkMag.mean...Avg|Time domain body angular velocity jerk magnitude means averaged for this subject and activity
43|tBodyGyroJerkMag.std...Avg|Time domain body angular velocity jerk magnitude standard deviations averaged for this subject and activity
44|fBodyAcc.mean...X.Avg|X value of the means of frequency domain body acceleration averaged for this subject and activity
45|fBodyAcc.mean...Y.Avg|Y value of the means of frequency domain body acceleration averaged for this subject and activity
46|fBodyAcc.mean...Z.Avg|Z value of the means of frequency domain body acceleration averaged for this subject and activity
47|fBodyAcc.std...X.Avg|X value of the standard deviations of frequency domain body acceleration averaged for this subject and activity
48|fBodyAcc.std...Y.Avg|Y value of the standard deviations of frequency domain body acceleration averaged for this subject and activity
49|fBodyAcc.std...Z.Avg|Z value of the standard deviations of frequency domain body acceleration averaged for this subject and activity
50|fBodyAcc.meanFreq...X.Avg|X value of the weighted average of the frequency components of body acceleration for this subject and activity
51|fBodyAcc.meanFreq...Y.Avg|Y value of the weighted average of the frequency components of body acceleration for this subject and activity
52|fBodyAcc.meanFreq...Z.Avg|Z value of the weighted average of the frequency components of body acceleration for this subject and activity
53|fBodyAccJerk.mean...X.Avg|X value of the means of frequency domain body acceleration jerk averaged for this subject and activity
54|fBodyAccJerk.mean...Y.Avg|Y value of the means of frequency domain body acceleration jerk averaged for this subject and activity
55|fBodyAccJerk.mean...Z.Avg|Z value of the means of frequency domain body acceleration jerk averaged for this subject and activity
56|fBodyAccJerk.std...X.Avg|X value of the standard deviations of frequency domain body acceleration jerk averaged for this subject and activity
57|fBodyAccJerk.std...Y.Avg|Y value of the standard deviations of frequency domain body acceleration jerk averaged for this subject and activity
58|fBodyAccJerk.std...Z.Avg|Z value of the standard deviations of frequency domain body acceleration jerk averaged for this subject and activity
59|fBodyAccJerk.meanFreq...X.Avg|X value of the weighted average of the frequency components of body acceleration jerk for this subject and activity
60|fBodyAccJerk.meanFreq...Y.Avg|Y value of the weighted average of the frequency components of body acceleration jerk for this subject and activity
61|fBodyAccJerk.meanFreq...Z.Avg|Z value of the weighted average of the frequency components of body acceleration jerk for this subject and activity
62|fBodyGyro.mean...X.Avg|X value of the means of frequency domain body angular velocity averaged for this subject and activity
63|fBodyGyro.mean...Y.Avg|Y value of the means of frequency domain body angular velocity averaged for this subject and activity
64|fBodyGyro.mean...Z.Avg|Z value of the means of frequency domain body angular velocity averaged for this subject and activity
65|fBodyGyro.std...X.Avg|X value of the standard deviations of frequency domain body angular velocity averaged for this subject and activity
66|fBodyGyro.std...Y.Avg|Y value of the standard deviations of frequency domain body angular velocity averaged for this subject and activity
67|fBodyGyro.std...Z.Avg|Z value of the standard deviations of frequency domain body angular velocity averaged for this subject and activity
68|fBodyGyro.meanFreq...X.Avg|X value of the weighted average of the frequency components of body angular velocity for this subject and activity
69|fBodyGyro.meanFreq...Y.Avg|Y value of the weighted average of the frequency components of body angular velocity for this subject and activity
70|fBodyGyro.meanFreq...Z.Avg|Z value of the weighted average of the frequency components of body angular velocity for this subject and activity
71|fBodyAccMag.mean...Avg|Frequency domain body acceleration magnitude means averaged for this subject and activity
72|fBodyAccMag.std...Avg|Frequency domain body acceleration magnitude standard deviations averaged for this subject and activity
73|fBodyAccMag.meanFreq...Avg|Weighted average of the frequency components of frequency domain body accelaration magnitude for this subject and activity
74|fBodyBodyAccJerkMag.mean...Avg|Frequency domain body angular velocity jerk magnitude means averaged for this subject and activity (see decison 8 in the README)
75|fBodyBodyAccJerkMag.std...Avg|Frequency domain body angular velocity jerk magnitude standard deviations averaged for this subject and activity (see decison 8 in the README)
76|fBodyBodyAccJerkMag.meanFreq...Avg|Weighted average of the frequency components of frequency domain body angular velocity jerk magnitude averaged for this subject and activity (see decison 8 in the README)
77|fBodyBodyGyroMag.mean...Avg|Frequency domain body angular velocity magnitude means averaged for this subject and activity (see decison 8 in the README)
78|fBodyBodyGyroMag.std...Avg|Frequency domain body angular velocity magnitude standard deviations averaged for this subject and activity (see decison 8 in the README)
79|fBodyBodyGyroMag.meanFreq...Avg|Weighted average of the frequency components of frequency domain body angular velocity magnitude averaged for this subject and activity (see decison 8 in the README)
80|fBodyBodyGyroJerkMag.mean...Avg|Frequency domain body angular velocity jerk magnitude means averaged for this subject and activity (see decison 8 in the README)
81|fBodyBodyGyroJerkMag.std...Avg|Frequency domain body angular velocity jerk magnitude standard deviations averaged for this subject and activity (see decison 8 in the README)
82|fBodyBodyGyroJerkMag.meanFreq...Avg|Weighted average of the frequency components of frequency domain body angular velocity jerk magnitude averaged for this subject and activity (see decison 8 in the README)
83|angle.tBodyAccMean.gravity..Avg|The angle between the mean time domain body acceleration and the gravity averaged in a signal window sample, then averaged for this subject and activity
84|angle.tBodyAccJerkMean..gravityMean..Avg|The angle between the mean time domain body acceleration jerk and the gravity averaged in a signal window sample, then averaged for this subject and activity
85|angle.tBodyGyroMean.gravityMean..Avg|The angle between the mean time domain body angular velocity and the gravity averaged in a signal window sample, then averaged for this subject and activity
86|angle.tBodyGyroJerkMean.gravityMean..Avg|The angle between the mean time domain body angular velocity jerk and the gravity averaged in a signal window sample, then averaged for this subject and activity
87|angle.X.gravityMean..Avg|The angle between the mean gravity and the X axis averaged in a signal window sample, then averaged for this subject and activity
88|angle.Y.gravityMean..Avg|The angle between the mean gravity and the Y axis averaged in a signal window sample, then averaged for this subject and activity
89|angle.Z.gravityMean..Avg|The angle between the mean gravity and the Z axis averaged in a signal window sample, then averaged for this subject and activity

DATA
----
The code book section above has short description of each variable. For further descriptions of the data, consult the features_info.txt file and README.txt files of the dataset found in the [Coursera dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

TRANSFORMATIONS
---------------
The transformations performed on the [Coursera dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) are:

1. The training set, test set, subjects, and activity names were put in one [tidy dataset](http://vita.had.co.nz/papers/tidy-data.pdf) 
2. Only means and standard deviation measurements were kept.
3. The averages of the measurements by taken for each subject and activity.

For more detailed descriptions of the steps, refer to the [README.md](https://github.com/howanu/tidy-dataset/blob/master/README.md) file.
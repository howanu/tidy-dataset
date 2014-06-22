TIDY DATASET CODE BOOK
======================

The file tidydata.csv.txt contains a tidy data set, as described in [Hadley Wickham's Tidy Data paper](http://vita.had.co.nz/papers/tidy-data.pdf):

1. Each variable forms a column.
2. Each observation forms a row.
3. Each type of observational unit forms a table.

SOURCE
------

A description of the assignment that motivated the data extraction is on the [Coursera Data Cleaning course project page](https://class.coursera.org/getdata-004/human_grading/view/courses/972137/assessments/3/submissions). The course provided [its own copy of the dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The source of the data is the [Smart Lab at the University of Genova](https://sites.google.com/site/smartlabunige/). The experiment captured Samsung phone measurements and applied data transformations and extractions in an effort to classify in which of 6 activities a human was engaged while wearing the Samsung phone.

The data was taken from the archive of the [University of California at Irvine](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

HOW TO LOAD THE DATA
--------------------

To load the file tidydata.csv.txt, rename the file by stripping off the ".txt" suffix. THe file contains comma separated values and the first line is a header identifying the value columns.

CODE BOOK (tidydata.csv)
---------

Column  Name  Description
1	activity  Activity being performed during measurement: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, or LAYING
2	subject The subject being measured, a number between 1 and 30
3	isTestData  Was the subject a training subject or a test subject? TRUE (test subject) or FALSE (training subject)
4	tBodyAcc.mean...X.Avg X value of the means of time domain body acceleration averaged for this subject and activity
5	tBodyAcc.mean...Y.Avg y value of the means of time domain body acceleration averaged for this subject and activity
6	tBodyAcc.mean...Z.Avg Z value of the means of time domain body acceleration averaged for this subject and activity
7	tBodyAcc.std...X.Avg  X value of the standard deviations of time domain body acceleration averaged for this subject and activity
8	tBodyAcc.std...Y.Avg  Y value of the standard deviations of time domain body acceleration averaged for this subject and activity
9	tBodyAcc.std...Z.Avg  Z value of the standard deviations of time domain body acceleration averaged for this subject and activity
10	tGravityAcc.mean...X.Avg  X value of the means of time domain gravity acceleration averaged for this subject and activity
11	tGravityAcc.mean...Y.Avg  Y value of the means of time domain gravity acceleration averaged for this subject and activity
12	tGravityAcc.mean...Z.Avg  Y value of the means of time domain gravity acceleration averaged for this subject and activity
13	tGravityAcc.std...X.Avg  X value of the standard deviations of time domain gravity acceleration averaged for this subject and activity
14	tGravityAcc.std...Y.Avg  Y value of the standard deviations of time domain gravity acceleration averaged for this subject and activity
15	tGravityAcc.std...Z.Avg  Y value of the standard deviations of time domain gravity acceleration averaged for this subject and activity
16	tBodyAccJerk.mean...X.Avg X value of the means of time domain body acceleration jerk averaged for this subject and activity
17	tBodyAccJerk.mean...Y.Avg Y value of the means of time domain body acceleration jerk averaged for this subject and activity
18	tBodyAccJerk.mean...Z.Avg Z value of the means of time domain body acceleration jerk averaged for this subject and activity
19	tBodyAccJerk.std...X.Avg X value of the standard deviations of time domain body acceleration jerk averaged for this subject and activity
20	tBodyAccJerk.std...Y.Avg Y value of the standard deviations of time domain body acceleration jerk averaged for this subject and activity
21	tBodyAccJerk.std...Z.Avg Z value of the standard deviations of time domain body acceleration jerk averaged for this subject and activity
22	tBodyGyro.mean...X.Avg X value of the means of time domain body angular velocity averaged for this subject and activity
23	tBodyGyro.mean...Y.Avg Y value of the means of time domain body angular velocity averaged for this subject and activity
24	tBodyGyro.mean...Z.Avg Z value of the means of time domain body angular velocity averaged for this subject and activity
25	tBodyGyro.std...X.Avg X value of the standard deviations of time domain body angular velocity averaged for this subject and activity
26	tBodyGyro.std...Y.Avg Y value of the standard deviations of time domain body angular velocity averaged for this subject and activity
27	tBodyGyro.std...Z.Avg Z value of the standard deviations of time domain body angular velocity averaged for this subject and activity
28	tBodyGyroJerk.mean...X.Avg X value of the means of time domain body angular velocity jerk averaged for this subject and activity
29	tBodyGyroJerk.mean...Y.Avg Y value of the means of time domain body angular velocity jerk averaged for this subject and activity
30	tBodyGyroJerk.mean...Z.Avg Z value of the means of time domain body angular velocity jerk averaged for this subject and activity
31	tBodyGyroJerk.std...X.Avg X value of the standard deviations of time domain body angular velocity jerk averaged for this subject and activity
32	tBodyGyroJerk.std...Y.Avg Y value of the standard deviations of time domain body angular velocity jerk averaged for this subject and activity
33	tBodyGyroJerk.std...Z.Avg Z value of the standard deviations of time domain body angular velocity jerk averaged for this subject and activity
34	tBodyAccMag.mean...Avg Time domain acceleration magnitude means averaged for this subject and activity
35	tBodyAccMag.std...Avg Time domain acceleration magnitude standard deviations averaged for this subject and activity
36	tGravityAccMag.mean...Avg
37	tGravityAccMag.std...Avg
38	tBodyAccJerkMag.mean...Avg
39	tBodyAccJerkMag.std...Avg
40	tBodyGyroMag.mean...Avg
41	tBodyGyroMag.std...Avg
42	tBodyGyroJerkMag.mean...Avg
43	tBodyGyroJerkMag.std...Avg
44	fBodyAcc.mean...X.Avg
45	fBodyAcc.mean...Y.Avg
46	fBodyAcc.mean...Z.Avg
47	fBodyAcc.std...X.Avg
48	fBodyAcc.std...Y.Avg
49	fBodyAcc.std...Z.Avg
50	fBodyAcc.meanFreq...X.Avg
51	fBodyAcc.meanFreq...Y.Avg
52	fBodyAcc.meanFreq...Z.Avg
53	fBodyAccJerk.mean...X.Avg
54	fBodyAccJerk.mean...Y.Avg
55	fBodyAccJerk.mean...Z.Avg
56	fBodyAccJerk.std...X.Avg
57	fBodyAccJerk.std...Y.Avg
58	fBodyAccJerk.std...Z.Avg
59	fBodyAccJerk.meanFreq...X.Avg
60	fBodyAccJerk.meanFreq...Y.Avg
61	fBodyAccJerk.meanFreq...Z.Avg
62	fBodyGyro.mean...X.Avg
63	fBodyGyro.mean...Y.Avg
64	fBodyGyro.mean...Z.Avg
65	fBodyGyro.std...X.Avg
66	fBodyGyro.std...Y.Avg
67	fBodyGyro.std...Z.Avg
68	fBodyGyro.meanFreq...X.Avg
69	fBodyGyro.meanFreq...Y.Avg
70	fBodyGyro.meanFreq...Z.Avg
71	fBodyAccMag.mean...Avg
72	fBodyAccMag.std...Avg
73	fBodyAccMag.meanFreq...Avg
74	fBodyBodyAccJerkMag.mean...Avg
75	fBodyBodyAccJerkMag.std...Avg
76	fBodyBodyAccJerkMag.meanFreq...Avg
77	fBodyBodyGyroMag.mean...Avg
78	fBodyBodyGyroMag.std...Avg
79	fBodyBodyGyroMag.meanFreq...Avg
80	fBodyBodyGyroJerkMag.mean...Avg
81	fBodyBodyGyroJerkMag.std...Avg
82	fBodyBodyGyroJerkMag.meanFreq...Avg
83	angle.tBodyAccMean.gravity..Avg
84	angle.tBodyAccJerkMean..gravityMean..Avg
85	angle.tBodyGyroMean.gravityMean..Avg
86	angle.tBodyGyroJerkMean.gravityMean..Avg
87	angle.X.gravityMean..Avg
88	angle.Y.gravityMean..Avg
89	angle.Z.gravityMean..Avg

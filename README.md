tidy-dataset
============

The course project for Coursera's course on Getting and Cleaning Data. Everything needed to create a tidy dataset from wearable data.

How the script works
--------------------
The run_analysis.R script is the only R script. It works as follows:  

1. Merge the training and the test sets to create one data set
  * Prior to any other reads, the features are read in as a data table and legal column names are made from them. They are read in first so that dimension checks can be made on the test and training data (see decision 7 below). A check is made on the column numbers to make sure all of the columns are named, and the script stops if any are missing.
  * The training data are read in as a data table. The width of the training data are checked against the number of features and the script will stop if they aren't equal.
  * The training activity IDs and the training subjects are read in and added to the training data
  * The training data steps above are repeated for the test data
  * The isTestData column is created (see decision 4 below). The train and test data are combined using rbind() and the isTestColumn is added with cbind(). The resulting data table is called trainAndTest.

2. Extract only the measurements on the mean and standard deviation for each measurement
  * The feature names with std or mean (case insensitive) are kept. See decision 3 below.
  * Since I want to follow the course project's instructions in order, trainAndTest still has column names that look like "V1", "V2", and so on. To keep track of which column names are kept, I put them into a vector.

3. Use descriptive activity names to name the activities in the data set
  * Read the activity names into a data table
  * Create an activity names column by joining activity IDs between trainAndTest and the activity names table
  * Remove the activity ID from trainAndTest. The ID column is redundant since the activity name is now present.

4. Appropriately label the data set with descriptive variable names
  * The column names that were kept from step 2. above are used to replace "V1"-type column names with the feature names.

5. Create a second, independent tidy data set with the average of each variable for each activity and each subject
  * The averages are created using the "by" data.table syntax.
  * The column names are modified to reflect the averaging process - see decision 6 below
  * The dataset is written to disk for submission. See decision 5 below.

Decisions
---------
The tidy dataset reflects decisions that were made to resolve ambiguity or to
provide clarity. The following list explains these decisions.

1. Creation of the CodeBook from scratch rather than starting from the original data set's code book.
  * The [Evaluation/Feedback section](https://class.coursera.org/getdata-004/human_grading/view/courses/972137/assessments/3/submissions) asks for a code book that *modifies and updates the codebooks available to you*.
  * Another opinion appears in a [TA response](https://class.coursera.org/getdata-004/forum/thread?thread_id=271#post-1639): *You are creating a codebook from scratch and describe what transformations or renaming you did as part of text*
  * I chose to follow the TA post. My reasoning is that the original codebook is available for reference, and including information from it would complicate explanation of the tidy dataset. The original information is not necessarily pertinent, but is available from the web if needed.

2. Using one R script rather than multiple scripts
  * The [Course Project Statement](https://class.coursera.org/getdata-004/human_grading/view/courses/972137/assessments/3/submissions) refers to a single script when it states that *You will be required to submit: ... a link to a Github repository with your script for performing the analysis*.
  * In the same paragraph as the above statement, there is a reference to multiple scripts: *You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.*
  * In [David's TA FAQ](https://class.coursera.org/getdata-004/forum/thread?thread_id=106), the answer to **can I have multiple scripts** implies that either choice is acceptable, as long as the scripts are clear.
  * I chose to use one script partly based on the answer in the FAQ. More than one script requires more coordination, which could lead to more confusion about the interactions between scripts. I like object-oriented code, but in this case we have been given a linear sequence of cleaning steps. I've tried to comment the steps inside of the single script, hoping that this lends the modularity that multiple scripts would have provided.
  
3. Keeping any variable containing the strings "mean" or "std"
  * The [problem statement](https://class.coursera.org/getdata-004/human_grading/view/courses/972137/assessments/3/submissions) is ambiguous: *2. Extracts only the measurements on the mean and standard deviation for each measurement.*
  * Given the ambiguity, I opted to include any measurement that could possibly be considered a mean or standard deviation.
  * My reasoning is that the consumer of the tidy dataset should be have access to the measurements they might need. Returning to the original raw data is a time-consuming and potentially expensive step, whereas ignoring unecessary measurements is easy.

4. Adding the isTestData column to the tidy dataset
  * The [problem statement](https://class.coursera.org/getdata-004/human_grading/view/courses/972137/assessments/3/submissions) only asks us to merge *... the training and the test sets to create one data set*. 
  * However, the Non Linear Complex Systems Laboratory expended a significant effort in dividing creating separate training and test sets. Although it's impossible to tell from the original descriptive files, it's possible (although unlikely) that the given test activity labels were generated by an algorithm, rather than being the true labeled activity.
  * I chose to add a column "isTestData" to preserve the test/train distinction, rather than lose it.
  * I see the isTestData column as being similar to the treatment column in section 2.2 of [Hadley Wickham's Tidy Data paper](http://vita.had.co.nz/papers/tidy-data.pdf).

5. Submitting the first dataset rather than the first
  * I chose to submit the second dataset, the one with averages over subect and activity, as it is the only one refered to in the dirtections as "tidy". See the [TA response](https://class.coursera.org/getdata-004/forum/thread?thread_id=63#comment-410)

6. Concatenating ".Avg" to the end of measurement names to denote averages over subject and activity
  * There is no guidance in the project directions on how to name the tidy dataset columns. However, I believe there is confusing abiguity in using the same columns names for by-subject-and-activity averages and for the individual measurements that have been averaged. I therefore added .Avg to the column names.
  * We can identify the means computed in the original dataset through the "mean" name, and the by-suject-activity averages through the "Avg" name.
  
7. Providing dimension checks where a mismatch might silently give incorrect results
  * The script is stopped in cases where mismatching dimensions could lead to missing or incorrect data
  * If a dimension mismatch would lead to an error, no check was done.

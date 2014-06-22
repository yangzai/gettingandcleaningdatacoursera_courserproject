#README.md

##Files in this project (excluding the original data for the project)
- run_analysis.R
- tidy_data_set.txt
- CodeBook.md
- README.md

##Input Files
- activity_labels.txt
- features.txt
- train/subject_train.txt
- train/y_train.txt
- train/X_train.txt
- test/subject_test.txt
- test/y_test.txt
- test/X_test.txt

##Output File
- tidy_data_set.txt

##Instructions
- Run the run_analysis.R in the root directory of the original data (i.e. the the main folder "UCI HAR Dataset"). It might take awhile as the data set required to be loaded are large.
- Once the script has terminated, the tidy data set, tidy_data_set.txt will be generated in the same directory.
- The tidy_data_set.txt file was written using write.table(), thus read.table() with default parameters can be used to read it back into R.

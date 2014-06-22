#run_analysis.R

#       read activity labels and feature names
print("reading activity labels and feature names...")
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

#       read training set
print("reading training set...")
subject_train <- read.table("train/subject_train.txt")
y_train <- read.table("train/y_train.txt")
X_train <- read.table("train/X_train.txt")

#       read test set
print("reading test set...")
subject_test <- read.table("test/subject_test.txt")
y_test <- read.table("test/y_test.txt")
X_test <- read.table("test/X_test.txt")

#1.     merge repective training and test set, then merge subject, y(activity), and X
print("processing...")
subject <- rbind(subject_train, subject_test)
y <- rbind(y_train, y_test)
X <- rbind(X_train, X_test)
merged <- cbind(subject, y, X)

#3.     factor y(column 2) with activity labels
merged[,2] <- factor(merged[,2], labels=activity_labels[,2])

#4.     apply names to subject, activity and feature columns in X
colnames(merged) <- c("subject", "activity", as.character(features[,2]))

#2.     filter mean() and std() form X(features) component of merged
#       reformat column names to avoid naming complication
filtered <- merged[, c( 1, 2, grep("mean\\(\\)|std\\(\\)", names(merged)) )]
names(filtered) <- gsub("\\(\\)$", "", names(filtered)) #remove end brackets
names(filtered) <- gsub("[\\(\\)-]+", ".", names(filtered)) #replace brackets, hyphen between words with "."

#5.     tidy data set of mean group by subject and activity
tidied <- aggregate(.~subject+activity, filtered, mean)

#       write tidy data set
write.table(tidied, "tidy_data_set.txt")
print("'run_analysis.R' completed. tidied data set saved as 'tidy_data_set.txt'")
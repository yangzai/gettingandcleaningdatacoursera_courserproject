#CodeBook.md

##Introduction
The tidy data set consist of that originated from "Human Activity Recognition Using Smartphones Dataset, Version 1.0" by Jorge et al.

##Work Outline
The original data were merged as a single set and features that were not measures of mean or standard deviation were filtered off. The numerical activity indentifiers are factored with activity type names and each column are labelled with appropriate names pulled from the original data. Of the orignal 561 features 66 remained, and together with a subject and an activity column, this gives the tidied data set a total of 68 columns. Observations of the same subject and activity type are aggregated as one using the mean of each features, giving us 180 rows.

Detailed descriptions are provide in the comments in the script run_analysis.R. the number tags in the comments references the numbered points of the project requirements.

##Column Descriptions
* Column 1
 * "subject"
 * An identifier for an induvidual subject
 * An integer ranging from 1 to 30

* Column 2
 * "activity"
 * An identifier for an activity type
 * A factor with levels "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING" and "LAYING"

* Column 3 - 68
 * Feature names formatted as "signal.variable[.axis]"
 * "signal" is the type of generated signal, variable refers to whether it is a "mean" or "std", and "axis" refers to "X", "Y" or "Z" and it is optional when not applicable.
 * A numeric normalized between -1 and 1

DataCleaning
============
The repository contains the the run_analysis.R file, which processes the SAMSUNG Dataset (more info here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The dataset needs to be downloaded and the 'wd' variable set to the directory where the data were extracted to.


run_analysis.R
--------------
Cleans the test and train data sets; creates a neat summary (averages) with around 180 rows (each subject+activity combination)


###Requirements
* The 'wd' variable needs to be set to the working directory that contains the'UCI HAR Dataset folder 
* Ensure that the `reshape2` is installed
* The tidy data set is created from a subset (mean(), std() columns) of the overall data set

The script executes the following steps:

* Loads and parses the 3 datafiles for each set
* Read all the features from the features.txt file;
* Uses regular expression matching to filter only mean and standard deviation features.
* Uses regular expressions to substitute nicer names for the shortened column names (making them more descriptive)
* Applying the generated descriptive names
* Filtering only the relevant features (std, means)
* Applying the generated descriptive names
* Merging data, labels and subjects onto a single dataframe
* Melting and Casting the data to create a 'tidy dataset' with the averages of all the variables


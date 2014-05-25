
## Set this to the appropriate directory that contains the test and train data sets 
wd <- "f:/data/UCI HAR Dataset"
setwd(wd)


## Parse train data
subject <- read.table("train/subject_train.txt")
x <- read.table("train/X_train.txt")
trainSet <- cbind(subject, x)

## Parse the activity data associated
y <- read.table("train/y_train.txt")
trainSet <- cbind(trainSet, y)

## Clean some memory
rm(subject, x, y)


## Parse test data
subject <- read.table("test/subject_test.txt")
x <- read.table("test/X_test.txt")
testSet <- cbind(subject, x)


## Parse the activity data associated
y <- read.table("test/y_test.txt")
testSet <- cbind(testSet, y)



## Fuse test and train cases (row bind, horizontal)
data <- rbind(trainSet, testSet)


## Set the appropriate column names (provided)
features <- read.table("features.txt")
names(data) <- c('Subject', as.character(features$V2), 'activityNumber')


## Merge, Add activity names
activities <- read.table("activity_labels.txt")
names(activities) <- c('activityNumber', 'Activity')
data <- merge(activities, data, all = TRUE)
data <- data[order(data$Subject, data$activityNumber),]


## Extract mean & standard deviation columns
meansData <- data[colnames(data[grep(".*std.*|.*mean\\(.*|Subject|Activity", colnames(data))])]


## Filter out column names, and replace them with more meaningful ones 
colNames<-names(meansData)
colNames<-gsub('mean', 'Mean', colNames)
colNames<-gsub('std', 'StdDev', colNames)
colNames<-gsub('^t', 'TimeDomain', colNames)
colNames<-gsub('^f', 'FrequencyDomain', colNames)
colNames<-gsub('Acc', 'Acceleration', colNames)
colNames<-gsub('Gyro', 'Angular Velocity', colNames)
colNames<-gsub('Mag', 'Magnitude', colNames)
colNames<-gsub("angle\\(t","angle\\(Time Domain ",colNames)
colNames<-c("Activity","Subject",gsub("^","Average of ",colNames[-(1:2)]))
names(meansData) <- colNames


## Clean up some memory before reshaping
rm(subject, x, y, trainSet, testSet, data)


## We move onto melting and casting the data, computing mean on each activity+subject value group 
library(reshape2)

coreSummary <- melt(meansData, id = c('Subject', 'Activity'))

## Summarize based on each subject+activity combination
coreSummary <- dcast(coreSummary, Activity+Subject ~ variable, mean)


## Write summary to txt file
write.table(coreSummary, "coreSummary.txt")

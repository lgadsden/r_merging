if(!file.exists("./data")) {dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./uci_data.zip")
unzip("./uci_data.zip")

features <- read.table("./UCI HAR Dataset/features.txt")

y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
colnames(x_test) <- features[[2]]
colnames(y_test) <- "participants"
xy_test <- cbind(y_test,x_test)


y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
colnames(x_train) <- features[[2]]
colnames(y_train) <- "participants"
xy_train <- cbind(y_train,x_train)



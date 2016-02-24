run_analysis <- function(){
  #Before running this script, download the data from:
  #https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  #Unzip the file in your current working directory
  
  #Download the test dataset
  file <- './UCI HAR Dataset/test/X_test.txt'
  test <- scan(file, sep=' ',blank.lines.skip=TRUE,skipNul=TRUE)
  test <- test[!is.na(test)]
  test <- matrix(test,ncol=561)
  test <- data.frame(test)
  
  #Download the activities for the test file
  file2 <- './UCI HAR Dataset/test/y_test.txt'
  activity <- read.table(file2, sep=' ')
  activity <- as.factor(activity$V1)
  activity_levels <- c('WALKING','WALKING UPSTAIRS','WALKING DOWNSTAIRS','SITTING','STANDING','LAYING')
  levels(activity) <- activity_levels
  
  #Donwloading Measurement Names
  file3 <- './UCI HAR Dataset/features.txt'
  varnames <- read.table(file3,sep=' ',stringsAsFactors=FALSE)
  varnames <- varnames$V2
  names(test) <- varnames
  
  #Excluding Measurments that are not Mean or Std
  reducedvar <- varnames[grep('mean[^F]|std',varnames)]
  test <- test[,names(test) %in% reducedvar]
  
  #Downloading the subjects column
  file4 <- './UCI HAR Dataset/test/subject_test.txt'
  subject <- scan(file4)
  
  #Making the variables readable
  measurements <- reducedvar
  measurements <- sub('tBodyAccMag','Magnitude of tBodyAcc',reducedvar)
  measurements <- sub('tGravityAccMag','Magnitude of tGravityAcc',reducedvar)
  measurements <- sub('tBodyAccJerkMag','Magnitude of tBodyAccJerk',reducedvar)
  measurements <- sub('tBodyGyroMag','Magnitude of tBodyGyro',reducedvar)
  measurements <- sub('tBodyGyroJerkMag','Magnitude of tBodyGyroJerk',reducedvar)
  measurements <- sub('fBodyBodyAccJerkMag','Magnitude of fBodyAccJerk',reducedvar)
  measurements <- sub('fBodyBodyGyroMag','Magnitude of fBodyGyro',reducedvar)
  measurements <- sub('fBodyBodyGyroJerkMag','Magnitude of fBodyGyroJerk',reducedvar)
  measurements <- sub('tBodyAcc','Accelerometer Body Signal',reducedvar)
  measurements <- sub('tGravityAcc','Accelerometer Gravity Signal',reducedvar)
  measurements <- sub('tBodyGyro','Gyroscope Body Signal',reducedvar)
  measurements <- sub('fBodyAcc','Fast Fourier Transform of Accelerometer Body Signal',reducedvar)
  measurements <- sub('fBodyGyro','Fast Fourier Transform of Gyroscope Body Signal',reducedvar)
  measurements <- sub('SignalJerk', 'Jerk',reducedvar)
  measurements <- sub('\\-mean\\(\\)',' Mean',reducedvar)
  measurements <- sub('\\-std\\(\\)',' Standard Deviation',reducedvar)
  measurements <- sub('\\-X',' in the X direction',reducedvar)
  measurements <- sub('\\-Y',' in the Y direction',reducedvar)
  measurements <- sub('\\-Z',' in the Z direction',reducedvar)
  names(test) <- measurements
  
  #Putting together the first dataframe
  test <- cbind(subject,test,activity)
  
  #Repeat all these steps for the train dataset
  file <- './UCI HAR Dataset/train/X_train.txt'
  train <- scan(file, sep=' ',blank.lines.skip=TRUE,skipNul=TRUE)
  train <- train[!is.na(train)]
  train <- matrix(train,ncol=561)
  train <- data.frame(train)
  file2 <- './UCI HAR Dataset/train/y_train.txt'
  activity <- read.table(file2, sep=' ')
  activity <- as.factor(activity$V1)
  levels(activity) <- activity_levels
  names(train) <- varnames
  train <- train[,names(train) %in% reducedvar]
  names(train) <- measurements
  file4 <- './UCI HAR Dataset/train/subject_train.txt'
  subject <- scan(file4)
  train <- cbind(subject,train,activity)
  
  #Create the combined dataset
  df <- rbind(test,train)
  
  #Create the tidy dataset
  library(dplyr)
  df <- tbl_df(df1)
  tidy <- summarize_each(group_by(df1,activity,subject),funs(mean))
  
  #Edit measurements names to emphasize the means summary
  names(tidy)[3:68] <- paste0('Mean of ',names(tidy)[3:68])
  
  #Return the tidy dataset
  tidy
}
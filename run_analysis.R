project <- function() {
    
    ## Load and assign data files to variables
    subtrainFN <- "./UCI HAR Dataset/train/subject_train.txt"
    xtrainFN <- "./UCI HAR Dataset/train/X_train.txt"
    ytrainFN <- "./UCI HAR Dataset/train/Y_train.txt"
    subtestFN <- "./UCI HAR Dataset/test/subject_test.txt"
    xtestFN <- "./UCI HAR Dataset/test/X_test.txt"
    ytestFN <- "./UCI HAR Dataset/test/Y_test.txt"
    headerFN <- "./UCI HAR Dataset/features.txt"
    activityLabelsFN <- "./UCI HAR Dataset/activity_labels.txt"
    
    subtrain <- read.table(subtrainFN,sep="")
    subtest <- read.table(subtestFN,sep="")
    xtrain <- read.table(xtrainFN,sep="")
    xtest <- read.table(xtestFN,sep="")
    ytrain <- read.table(ytrainFN,sep="")
    ytest <- read.table(ytestFN,sep="")
    header <- read.table(headerFN,sep="")
    activities <- read.table(activityLabelsFN,sep="")
    
    ## Rename headers based on features file and custom assignment of other (step 4)
    names(xtrain) <- header$V2
    names(xtest) <- header$V2
    names(ytrain) <- "activity"
    names(ytest) <- "activity"
    names(subtrain) <- "subject"
    names(subtest) <- "subject"
    
    ## Extract only the columns with mean and std on measurements (Step 2)
    trainmean<-subset(xtrain,select=grep('mean()',names(xtrain),fixed=TRUE))
    trainstd<-subset(xtrain,select=grep('std()',names(xtrain),fixed=TRUE))
    testmean<-subset(xtest,select=grep('mean()',names(xtest),fixed=TRUE))
    teststd<-subset(xtest,select=grep('std()',names(xtest),fixed=TRUE))
    
    ## Attach subject and activity variables to the mean() and std() measurement subsets
    train <- cbind(subtrain,ytrain,trainmean,trainstd)
    test <- cbind(subtest,ytest,testmean,teststd)
    
    ## Merge the test and train data sets together (Step 1)
    data <- rbind(train,test)
    
    ## Replace the activity field ID with the activity label to make it readable (step 3)
    data$activity <- activities[data$activity,2]
    
    ## Create new dataset with averages by subject and activity
    averagedata <- ddply(data,c("subject","activity"), numcolwise(mean))
    
    ## Write tidy dataset to txt file
    write.table(averagedata,file="tidy_data.txt",row.name=FALSE)
    
}

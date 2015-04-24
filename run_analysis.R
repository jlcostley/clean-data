run_analysis <- function() {

# read in the files which have been loaded into the active directory
training.data <- read.table("Xtrain.txt")
test.data <- read.table("Xtest.txt")


# read in the activity labels and add them as a column to the files
test.labels <-read.table("ytest.txt")
training.labels <-read.table("ytrain.txt")
df.test = data.frame(test.labels,test.data)
df.training = data.frame(training.labels,training.data)


#add the data for test subjects
test.subjects <-read.table("subject_test.txt")
train.subjects <-read.table("subject_train.txt")
df.testsubjects <-data.frame(df.test,test.subjects)
df.trainsubjects <-data.frame(df.training,train.subjects)

#merge the two files
merged.activity = merge(df.testsubjects,df.trainsubjects,all=TRUE)

#create a new label for the activity column and add it to the files of features (column labels) 
#create a new label for the subject column and add it 

features <- read.table("features.txt")
V1 <- 1
V2 <- "activity"
label <-data.frame(V1,V2)
labels <-rbind(label,features)
V1 <- 563
V2 <- "subject"
label <- data.frame(V1,V2)

labels <-rbind(labels,label)

# rename the column in the merged activity file with the names of the features

colnames(merged.activity) <- labels[,2]


#remove unneeded columns with duplicate labels, so that select will work
data.subset <-subset(merged.activity,select=-(304:345))


# extract only the measurements on mean ("mean()") and standard deviation ("std()")
data.extract <-select(data.subset,activity,subject, contains("mean()"),contains("std()"))


# add the activity labels
data.extract$activity[data.extract$activity==1] <- "walking"
data.extract$activity[data.extract$activity==2] <- "walking upstairs"
data.extract$activity[data.extract$activity==3] <- "walking downstairs"
data.extract$activity[data.extract$activity==4] <- "sitting"
data.extract$activity[data.extract$activity==5] <- "standing"
data.extract$activity[data.extract$activity==6] <- "laying"

# create the average of each variable for each subject and for each activity
# 
extractMelt <-melt(data.extract,id=c("subject","activity"),measure.vars=colnames(data.extract[,3:68]))
subdata <-dcast(extractMelt,subject ~ variable,mean)
actdata <-dcast(extractMelt,activity ~ variable,mean)

# rename the first column and create the output file
# 
labels <-c("subject or activity",colnames(subdata[2:67]))
colnames(subdata) <- labels

write.table(subdata,file="data.txt",row.name=FALSE)
write.table(actdata,file="data.txt",row.name=FALSE,col.names=FALSE,append=TRUE)
}
# this can be used to check the output file to confirm it worked
# check <-read.table("data.txt",header=TRUE)
# View(check)
	

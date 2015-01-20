#Reading Data:





setwd("C:/Users/anka/Documents/Bioinformatik/Hopkins Univeristy Data Science/Getting and Cleaning Data")

Labels<-read.table("./UCI HAR Dataset/features.txt",sep ="") # Columnnames
# renaming Column names
Labels[,2] = gsub('-mean', 'Mean', Labels[,2])
15 Labels[,2] = gsub('-std', 'Std', Labels[,2]) 
16 Labels[,2] = gsub('[-()]', '', Labels[,2]) 

A_Labels<-read.table("./UCI HAR Dataset/activity_labels.txt",sep ="") # Activity Labels

data_test<-read.table("./UCI HAR Dataset/test/X_test.txt", col.names=Labels[,2],check.names=FALSE)


data_train<-read.table("./UCI HAR Dataset/train/X_train.txt", col.names=Labels[,2],check.names=FALSE)

Activity_Train<-read.table("./UCI HAR Dataset/test/y_test.txt",col.names="Activity",check.names=FALSE)

Activity_Train<-read.table("./UCI HAR  Dataset/train/y_train.txt",col.names="Activity",check.names=FALSE)

A_Labels<-read.table("activity_labels.txt",sep ="")

#Concatenating Files:

Activity<-rbind(Activity_Test,Activity_Train)

Data<-rbind(data_test,data_train)

# Merging standard error and mean variables
filter_labels<-grep("mean()|std()", Labels[, 2])
filter_labels[,2] = gsub('-mean', 'Mean', filter_labels[,2])
filter_labels[,2] = gsub('-std', 'Std', filter_labels[,2]) 
filter_labels[,2] = gsub('[-()]', '', filter_labels[,2]) 
> Data1<-Data[, filter_labels]



#renaming Activity
names(Activity)[names(Activity)=="V1"] <- "Label"
Activity$Activity[Activity$V1==1]<-"Walking"
Activity$Activity[Activity$V1==2]<-"Walking_Upstairs"
Activity$Activity[Activity$V1==3]<-"Walking_Downstairs"
Activity$Activity[Activity$V1==4]<-"Sitting"
Activity$Activity[Activity$V1==5]<-"Standing"
Activity$Activity[Activity$V1==6]<-"Laying"


#Merging Activity and Data1

 Set<-cbind(Activity,Data1)


#Tidy Data
Set$Activity <- as.factor(Set$Activity) 
Set$Label <- as.factor(Set$Label) 

tidy = aggregate(Set, by=list(Activity = Set$Activity, Label=Set$Label), mean)
tidy_data[,1] = NULL 
tidy_data[,2] = NULL 
tidy[,3] = NULL 
tidy[,4] = NULL 

#Write Table

write.table(tidy, "tidy.txt", sep="",row.names=False)




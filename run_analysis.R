library(dplyr)

#Loading the data from the downloaded dataset
test.y <- read.table("getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\y_test.txt", header=F)
message("test.y loaded")

train.y <- read.table("getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\y_train.txt", header=F)
message("train.y loaded")

full.y.data <- rbind(test.y,train.y)
message("test.y and train.y merged")

test.x <- read.table("getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\X_test.txt")
message("test.x loaded")

train.x <- read.table("getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\X_train.txt")
message("train.x loaded")

full.x.data <- rbind(test.x,train.x)
message("test.x and train.x merged")

test.subject_test <- read.table("getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\test\\subject_test.txt")
message("test.subject_train loaded")

train.subject_train <- read.table("getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\train\\subject_train.txt")
message("train.subject_train loaded")

# Merging the test and training datasets for subjects
full.subject.data <- rbind(test.subject_test,train.subject_train)
message("test.subject_test and train.subject_train merged")

# Applying the headers from the 'features.txt' file to the X dataset
subject.headers <- read.table("getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset\\features.txt")
names(full.x.data) <- make.names(subject.headers$V2,unique=TRUE)
message("Headers appended")

# Merging together the X, Y and Subject data
full.data.set <- cbind(full.y.data, full.subject.data, full.x.data)
message("All datasets merged into a single dataset")

# Carving out only the data related to the mean and standard deviation of the dataset
mean.data <- full.data.set[,grep(".mean.", colnames(full.data.set))]
message("Mean data subseted")
stdev.data <- full.data.set[,grep(".std.", colnames(full.data.set))]
meanst.data <- cbind(full.y.data, full.subject.data, mean.data, stdev.data)
meanst.data$V1 <- as.factor(meanst.data$V1)
message("Standard Deviation data subseted")

# Giving the activites properly named titles
levels(meanst.data$V1)[levels(meanst.data$V1)=="1"] <- "WALKING"
levels(meanst.data$V1)[levels(meanst.data$V1)=="2"] <- "WALKING_UPSTAIRS"
levels(meanst.data$V1)[levels(meanst.data$V1)=="3"] <- "WALKING_DOWNSTAIRS"
levels(meanst.data$V1)[levels(meanst.data$V1)=="4"] <- "SITTING"
levels(meanst.data$V1)[levels(meanst.data$V1)=="5"] <- "STANDING"
levels(meanst.data$V1)[levels(meanst.data$V1)=="6"] <- "LAYING"
message("Activities descriptively named")

# Renaming the columns so as to make them understandable to the user
names(meanst.data) <- gsub("[.]", " ", names(meanst.data))
names(meanst.data) <- gsub("tGravity", "Gravity", names(meanst.data))
names(meanst.data) <- gsub("mean", " Mean ", names(meanst.data))
names(meanst.data) <- gsub("std", "STDev", names(meanst.data))
names(meanst.data) <- gsub("Acc", " Acceleration ", names(meanst.data))
names(meanst.data) <- gsub("Freq", " Frequency ", names(meanst.data))
names(meanst.data) <- gsub("Gyro", " Gyroscope ", names(meanst.data))
names(meanst.data) <- gsub("BodyBody", "Body Body ", names(meanst.data))
names(meanst.data) <- gsub("Mag", " Magnitude ", names(meanst.data))

# Still renaming the columns here but removing unneeded spaces
names(meanst.data) <- gsub("  ", " ", names(meanst.data))
names(meanst.data) <- gsub("   ", " ", names(meanst.data))
names(meanst.data) <- gsub("    ", " ", names(meanst.data))

# Renaming the first and second columns since they were introduced to the dataset as 'V1'
colnames(meanst.data)[1] <- "Activities"
colnames(meanst.data)[2] <- "Subjects"
message("Columns renamed to be understandable")

# Creating a tidy dataset that gets the mean of each variable
subsetmeanst.data <- meanst.data

subsetmeanst.data <- tbl_df(subsetmeanst.data) %>%
        ungroup %>%
        group_by(Activities, Subjects) %>%
        summarise_each(funs(mean))
message("Mean obtained by Activities and Subjects groupings")

# Tidy dataset is writen to a text file
write.table(subsetmeanst.data, file = "tidy-data.txt", row.name = FALSE )
message("A tidy dataset has been output to the file named 'tidy-data.txt'")
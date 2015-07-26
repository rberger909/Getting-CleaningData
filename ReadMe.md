
##Read Me for the 'Getting and Cleaning Data' Course Project

#Background

The data related to this project was compile by the University of California - Irvine and is entitled "Human Activity Recognition Using Smartphones Data Set".

- A link to the dataset itself can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- A link with further information about the dataset can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

A Codebook (named 'Codebook.md') detailing information pertinent to making this data tidy can be found at: 

The script (named 'run_analysis.R') developed to make the dataset tidy can be found at:

The tidy datset itself (named 'tidy-data.txt') can be found at: 

The 'run_analysis.R' script was developed using R version 3.2.1 and RStudio version 0.98.1103

#Preparation

After familarizing yourself with the data, download and unzip the dataset into the working directory specified by your installation of R.

Additionally, ensure that the 'run_analysis.R' script file is downloaded into the working directory of your R installation.

Upon opening R the 'dplyr' package should be installed. This is because this package is used in the 'run_analysis.R' script to help group and obtain the mean for the tidy data set. This package can be installed using the following entry:

```{r}
install.packages("dplyr")
```

#Processing The Data

One your environment has been completely set up execute the 'run_analysis.R' script by entering the following into the R Console followed by the enter key:

```{r}
source("run_analysis.R")
```

Depending on the speed of your computer this should complete in a few minutes time and the progress can be followed by obsering the messages printed in the R Console window.

#Tidy Data Output

Once the script has finished processing the data you will find a text file in your working directory called 'tidy-data.txt'. This is the completed product of the script and can be viewed by entering the following into the R Console followed by the enter key:

```{r}
output <- read.table("tidy-data.txt", header=TRUE)
View(output)
```

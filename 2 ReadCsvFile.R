# read a CSV file
# using the default UTILS package


# option 1 is to use windows File selection window
csv_file_data <- read.csv(file.choose());

# option 2 is to use the logical path of the file

csv_file_path_data <- read.csv("/home/meraki/Documents/R/R Codes/titanic.csv");

# option3 is to set the working directory path using below commands.
getwd();
setwd("/home/meraki/Documents/R/R Codes/");
csv_file <- read.csv("titanic.csv");

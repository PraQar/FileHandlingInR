# Data Imports 
# Flat Files uploads >> TXT, CSV, Excel, etc. 
# Default/preloaded package "utils" handles files.

###############################################################################
# read.table()                                                                #
#   |___> read.csv() ; default param header = TRUE, sep = ','                 #
#   |___> read.delim() ; default param header = TRUE , sep = '\t'             #
# Both are wrapper classes of read.table functions                            #
# Extra two functions to read files that are in regional number format(Europe)#
#   |___> read.csv2();                                                        #
#   |___> read.delime2();                                                     #
###############################################################################

#operations with basic files (TXT). Delimiter = \t


#1 create the path of the file, still if the stored in current working directory
path_of_hotdogs_txt_file <- file.path("~","Documents/Data Science/R/R Codes","hotdogs.txt")
#2 Define the data frame to store the read file. For tab delimited, user read.delim
df_hotdogs <- read.delim(file = path_of_hotdogs_txt_file, header = FALSE)
#with user defined column names
df_hotdogs_2 <- read.delim(file <- path_of_hotdogs_txt_file,
                           header = FALSE, 
                           col.names = c("Type", "Calories","Sodium"),
                           colClasses = c("character","numeric","numeric") )
#3 Test the data in dataframe table # summary of the file loaded
summary(df_hotdogs)
head(df_hotdogs,5)
tail(df_hotdogs)
df_hotdogs

#operations with CSV file. Delimiter = , 
#1 create the part of the file. 
path_of_swimming_pools_csv_file <- file.path("~","Documents/Data Science/R/R Codes","swimming_pools.csv")
#2 create the datafrance for the file
df_swimming_pools <- read.csv(file = path_of_swimming_pools_csv_file,header = TRUE)
#3 Test the fata loaded in data frame


#operations with any file , Delimiter = any 
#1 create the oath of the file 
path_of_titanic_csv_file <- file.path("~","Documents/Data Science/R/R Codes","titanic.csv")
#2 Create the dataframce for the file
df_titanic <- read.table(file = path_of_titanic_csv_file,
                         sep = ',',
                         header = TRUE)
# Test the data loaded
summary(df_titanic)

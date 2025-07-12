# Data Imports 
# Flat Files uploads >> TXT, CSV, Excel, etc. 
# "readr" package : Faster version of utils

###############################################################################
# read_delim()                                                                #
#   |___> read_csv() ; delim = ','                                            #
#   |___> read_tsv() ; delim = '\t'                                           #
# Both are wrapper classes of read.table functions                            #
###############################################################################

#load the package
library(readr)

#operations with basic files (TXT). Delimiter = \t


#1 create the path of the file, still if the stored in current working directory
path_of_hotdogs_txt_file <- file.path("~","Documents/Data Science/R/R Codes","hotdogs.txt")
#2 Define the data frame to store the read file. For tab delimited, user read.delim
df_hotdogs <- read_tsv(file = path_of_hotdogs_txt_file)
#with user defined column names
df_hotdogs_2 <- read_tsv(file <- path_of_hotdogs_txt_file,
                         col_names = c("Type", "Calories","Sodium") )
#3 Test the data in dataframe table # summary of the file loaded
summary(df_hotdogs)
head(df_hotdogs,5)
tail(df_hotdogs)
df_hotdogs

#operations with CSV file. Delimiter = , 
#1 create the part of the file. 
path_of_swimming_pools_csv_file <- file.path("~","Documents/Data Science/R/R Codes","swimming_pools.csv")
#2 create the datafrance for the file
df_swimming_pools <- read_csv(file = path_of_swimming_pools_csv_file)
#3 Test the fata loaded in data frame
summary(df_swimming_pools)

#operations with any file , Delimiter = any 
#1 create the oath of the file 
path_of_titanic_csv_file <- file.path("~","Documents/Data Science/R/R Codes","titanic.csv")
#2 Create the dataframce for the file
df_titanic <- read_delim(file = path_of_titanic_csv_file, delim = ',' )
# Test the data loaded
summary(df_titanic)




#operations with potatoes.txt file
#1 create file path
path_of_potatoes_txt_file <- file.path("~","Documents/Data Science/R/R Codes/R Datasets","potatoes.txt")
#2 create dataframe
df_portatoes <- read_delim(file<- path_of_potatoes_txt_file,
                           delim = '\t', 
                           skip = 10, # skip the first 10 rows
                           n_max = 5, # read only 5 rows 
                           col_names = c("area", "temp", "size", 
                                         "storage", "method","texture", 
                                         "flavor", "moistness") )
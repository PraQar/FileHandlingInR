###############################################################################
###                         XLConnect : Excelling in R                      ###
# Package "XLConnect" requires JDK
# Bridge between Excel and R = Connector
# XLS and XLSX
# Easy-to-use functionality
# Import functions 
#   loadWorkbook()
#   readWorkbook()
# Export Functions
#   createSheet()
#   renameSheet()
#   removeSheet()
#   writeWorksheet()
#   saveWorkbook()
#
  
###############################################################################

# install.packages("XLConnect")
library(XLConnect)

#exl_file_path <- file.path("~","Documents/Data Science/R/R Codes/R Datasets","urbanpop.xlsx")
setwd("/Users/praveensingh/Documents/Data Science/R/R Codes/R Datasets/");
getwd()
dir()
book <- loadWorkbook("urbanpop.xlsx")

# Data Imports 
# Flat Files uploads >> Excel (.xls, .xlsx)
# package :: "readxl" 


###############################################################################
# read & list all the sheets of the excel                                     #
#   >> excel_sheets("excelfile_name.xlsx" )                                   #
# Read and import excell sheet data into R session via sheet number           #
#   >> read_excel("excel_file_name.xlsx", sheet = 1,2, .., )                  #
# Read and import excel sheet data into R session via sheet names             #
#   >> read_excel("excel_file_name.xlsx", sheet = "excel_sheet_name")         #
# master PDF : https://cran.r-project.org/web/packages/readxl/readxl.pdf      #
###############################################################################

library(readxl)

exl_file_path <- file.path("~",
                           "Documents/Data Science/R/R Codes/R Datasets",
                           "urbanpop.xlsx")
sheet_list <- excel_sheets(path = exl_file_path)

## ** Import an Excel sheet. ** ##
# Now that you know the names of the sheets in the Excel file you want to import, 
# it is time to import those sheets into R. 
# You can do this with the read_excel() function. 

#Have a look at this recipe:
  
#  data <- read_excel("data.xlsx", sheet = "my_sheet")

#This call simply imports the sheet with the name "my_sheet" from
#the "data.xlsx" file. 
#You can also pass a number to the sheet argument; 
#this will cause read_excel() to import the sheet with the given sheet number. 
#sheet = 1 will import the first sheet, sheet = 2 will import the second sheet, 
#and so on.** /

# Read the sheets, one by one
pop_1 <- read_excel(path = exl_file_path, sheet = 1)
pop_2 <- read_excel(path = exl_file_path, sheet = 2)
pop_3 <- read_excel(path = exl_file_path, sheet = 3)

# Put pop_1, pop_2 and pop_3 in a list: pop_list
pop_list <- list( year_1976 = pop_1, 
                  year_1974 = pop_2, 
                  year_2011 = pop_3 )

# Display the structure of pop_list
str(pop_list)


# || **  The col_names argument ** ||
# Apart from path and sheet, there are several other arguments you can specify 
# in read_excel(). One of these arguments is called col_names.

# By default it is TRUE, denoting whether the first row in the Excel sheets 
# contains the column names. 
# If this is not the case, you can set col_names to FALSE. 
# In this case, R will choose column names for you. 
# You can also choose to set col_names to a character vector with names for each column. 
# It works exactly the same as in the readr package.

# read column names as row
df_no_col <- read_excel(path = exl_file_path, sheet = 1, col_names = FALSE)


df_col <- read_excel(path = exl_file_path,sheet = 1, 
                      col_names = c("Country", paste0("year_",1960:1966)),
                      skip = 1) # skipped first row as our DS has column names
df_col

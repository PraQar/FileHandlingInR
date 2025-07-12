# read a txt file

getwd();
txt_file <- read.table("hotdog.txt",header = TRUE);
class(txt_file);
txt_file[2,2];

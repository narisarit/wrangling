library(tidyverse)
library(readxl)

getwd() #show working directory 
setwd() #set working directory

#R package에 포함된 data 가져오기
system.file("extdata", package = "dslabs") #find the file paths of files that are part of installed R packages
path <- system.file("extdata", package = "dslabs")
list.files(path) 

filename <- "murders.csv" 
fullpath <- file.path(path, filename)
fullpath

file.copy(fullpath, getwd())
file.exists(filename)

read_lines(filename, n_max = 3)

read_csv()
read_tsv()
read_delim()
excel_sheets()
read_excel()
read_xls()
read_xlsx()


dat <- read_csv(filename)
dat <- read_csv(fullpath)
head(dat)

# web에서 data download using url
url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"
dat <- read_csv(url)
download.file(url, "murders.csv")

tmp_filename <- tempfile()
tmp_filename
download.file(url, tmp_filename)
dat <- read_csv(tmp_filename)
file.remove(tmp_filename)

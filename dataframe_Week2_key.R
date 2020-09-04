# QuACK 2020 
# Week 2 - Github and Dataframes
# Willa Voorhies

### The first step in data analysis is reading in your data and "looking at it"
### Use the skills we learned last week to access real data from a dataframe and get some info about it! ###

options(stringsAsFactors=FALSE) # This is the default in the newest version of R. 

#### Figure out where you are ####

# Find your current directory 
getwd()

# If you're in the wrong place, change your working directory to the folder with your data

setwd('~/Desktop')

# see the files in your directory

list.files()

#### load your data into R ####

# Note: It's best to read in a txt file or a .csv. This avoids issues with unrecognized data types etc., 

cars <- read.csv('mtcars.csv')
cars.tab <- read.table(file = "mtcars.csv", header = TRUE, sep = ",") # this is a more universal way to read in data. 

# What if my data isn't in my working directory? 

# add the full path or change my directory. 

#### view your data ####

# First few rows
head(cars)

# Last few rows 
tail(cars)

# how many columns? 

ncol(penguins)
length(penguins) # unlike other languages, length tells you the number of columns


# what are the column names

colnames(cars)

# how many rows? 
nrow(cars)

# view the whole dataframe

View(cars)

# what is the structure of this dataframe? 

str(cars)

# what if I set stringsAsFactors = TRUE 

str(cars)

# Lets make cyl a factor

as.factor(cars$cyl)

# have to assign it

cars$cyl<- as.factor(cars$cyl)
str(cars)

# lets also make gear a factor 

cars$gear<- as.factor(cars$gear)
str(cars)

# What are the levels of the factor

levels(cars$cyl)


### Lets access specific rows or columns ####

# Select all rows in the car column using indexing
(car.col <- cars[,1])

# Select all rows of  car and mpg column using indexing 
cars.mpg<- cars[,c(1,2)]

# Select the car and cyl for ONLY the first three cars
(car.mpg <- cars[c(1,2,3) ,c(1,2)])
(car.mpg <- cars[c(1:3) ,c(1,2)])

# how about getting first three cars using the $ operator

cars$car[1:3]

#### missing values #### 

# Is there missing data? 

cars[is.na(cars)]

cars[!complete.cases(cars),]

#remove the missing data

cars <- na.omit(cars)

# check if it worked

cars[is.na(cars)]

#### lets get some descriptive info and stats ####

# how many 4 cylander cars have a 5th gear? 
# we can make a table
table(cars$cyl, cars$gear)

# Lets get the mean mpg
mean(cars$mpg)

# Quick way to get a bunch of info on a column 
summary(cars$mpg)

# Challenge! Get the mean mpg for cars with 6 cyl 

mean(cars$mpg[cars$cyl == 6]) # We will learn this syntax next week!



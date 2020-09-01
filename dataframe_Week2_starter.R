# QuACK 2020 
# Week 2 - Working with Data
# Willa Voorhies

options(stringsAsFactors=FALSE)
#### Figure out where you are ####

# Find your current directory 


# If you're in the wrong place, change your working directory to the folder with your data


# see the files in your directory


#### load your data into R ####
# Note: It's best to read in a txt file or a .csv. This avoids issues with unrecognized data types etc., 


# What if my data isn't in my working directory? 

# add the full path or change my directory. 

#### view your data ####

# First few rows


# Last few rows 


# how many columns? 



# what are the column names


# how many rows? 


# view the whole dataframe



# what is the structure of this dataframe? 



# what if I set stringsAsFactors = TRUE 

# Lets make cyl a factor


# lets also make gear a factor 


# What are the levels of the factor


### Lets access specific rows or columns ####

# Select all rows in the car column using indexing


# Select all rows of  car and mpg column using indexing 


# Select the car and cyl for ONLY the first three cars


# how about getting first three cars using the $ operator


#### missing values #### 

# Is there missing data? 


#remove the missing data


# check if it worked


#### lets get some descriptive info and stats ####

# how many 4 cylander cars have a 5th gear? 
# we can make a table


# Lets get the mean mpg


# Quick way to get a bunch of info on a column 


# Get the mean mpg for cars with 6 cyl 


# why am I using a == sign? 


# there's some redundancy. The "with" operator can help. 




# Assignment: ASSIGNMENT 2.2
# Name: King, Ramsey
# Date: 2021-12-13

## Load the ggplot2 package
library(ggplot2)
library(readxl)
library(tidyr)
theme_set(theme_minimal())

## Set the working directory to the root of your DSC 640 directory
setwd("/Users/ramse/PycharmProjects/DSC-640-Data-Presentation-and-Visualization/Weeks 3-4")
#C:\Users\ramse\PycharmProjects\DSC-640-Data-Presentation-and-Visualization\Weeks 3-4

# Load the cpopulation data and create a line chart
population_df <- read_excel("world-population.xlsm")
head(population_df)
ggplot(population_df,aes(x = Year, y = Population)) + geom_line() + 
  labs(title = 'World Poplulation by Year')

# Create a step chart
ggplot(population_df,aes(x = Year, y = Population)) + geom_step() +
  labs(title = 'World Poplulation by Year - Step Chart')

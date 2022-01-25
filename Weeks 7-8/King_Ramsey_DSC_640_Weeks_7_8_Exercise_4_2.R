# Assignment: ASSIGNMENT 4.2
# Name: King, Ramsey
# Date: 2022-01-30

## Load the ggplot2 package
library(ggplot2)
library(readxl)
library(tidyr)
theme_set(theme_minimal())

## Set the working directory to the root of your DSC 640 directory
setwd("/Users/ramse/PycharmProjects/DSC-640-Data-Presentation-and-Visualization/Weeks 7-8")

# Load all directory files
birth_rate_df <- read.csv('ex4-2/birth-rate.csv')
birth_rate_yearly_df <- read.csv('ex4-2/birth-rates-yearly.csv')
crime_rates_df <- read.csv('ex4-2/crimerates-by-state-2005.csv')
life_exp_df <- read.csv('ex4-2/life-expectancy.csv')
tv_sizes_df <- read.csv('ex4-2/tv_sizes.txt')


crime_rates_just_states <- crime_rates_df[!(crime_rates_df$state == 'United States'
                                          | crime_rates_df$state == 'District of Columbia'), ]

# Scatterplot
ggplot(crime_rates_just_states, aes(robbery, motor_vehicle_theft))+
  geom_point() +
  ggtitle('Scatter Plot of Robbery vs Motor Vehicle Theft by State')

# Bubble Chart

ggplot(crime_rates_just_states, aes(burglary, motor_vehicle_theft, size=population))+
  geom_point() + 
  ggtitle('Bubble Plot of Burglary vs Motor Vehicle Theft by State') +
  xlab('Burglary') + ylab('Motor Vehicle Theft')

# Density Plot

ggplot(life_exp_df, aes(x=expectancy)) +
  geom_histogram(aes(y=..density..), bins=10) +
  geom_density(alpha=0.2, fill='#CC3333') +
  ggtitle('Density Plot of Life Expectancy')



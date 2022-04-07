# Load Packages
library(dplyr)
library(tidyverse)
# Import and read Data
Car_Data <- read.csv('MechaCar_mpg.csv')
head(Car_Data)
# Perform Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =Car_Data)
View(Car_Data)
# Determine P-value and R squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =Car_Data)) 

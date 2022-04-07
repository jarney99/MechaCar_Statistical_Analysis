#Deliverable 1
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

# Deliverable 2
# Import and read data
Coil_Data <- read.csv('Suspension_Coil.csv')
head(Coil_Data)
# Mean, Median, Variance, and SD
Mean = mean(Coil_Data$PSI)
Median=median(Coil_Data$PSI)
Variance=var(Coil_Data$PSI)
SD = sd(Coil_Data$PSI)
# Total Summary data frame
total_Summary <- data.frame(Mean,Median,Variance,SD)
# Lot Summary
lot_summary <- Coil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median = median(PSI),Variance = var(PSI),SD = sd(PSI), .groups = 'keep') 

# Deliverable 3
# T-test across all manufacturing lots
t.test((Coil_Data$PSI),mu = 1500)
# T-test for each lot
t.test(subset(Coil_Data,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(Coil_Data,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(Coil_Data,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)

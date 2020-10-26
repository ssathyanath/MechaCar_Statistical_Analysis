# Deliverable 1 
#3 Import Libraries
library(tidyverse)
library(dplyr)

#4 Read mpg data from csv
MechaCar_mpg = read.csv("MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

#5 Multiple Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)

#6 Multiple Linear Regression Summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))

#---------------------------------------------------------------------
# Deliverable 2
#2 Read the suspension coil data
Suspension_Coil = read.csv("Suspension_Coil.csv",check.names=F,stringsAsFactors = F)

#3 Total Summary
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups = 'keep')

#4 Lot Summary
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI, na.rm = TRUE),.groups = 'keep')

#---------------------------------------------------------------------
# Deliverable 3
# Create sample table 
sample_table <- Suspension_Coil %>% sample_n(50)

#1 t-test for all manufacturing lot
t.test((sample_table$PSI),mu=mean(Suspension_Coil$PSI))

#2 t-test for separate manufacturing lots
# Lot1
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot1"),Suspension_Coil$PSI)
# Lot2
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot2"),Suspension_Coil$PSI)
# Lot3
t.test(subset(Suspension_Coil$PSI,Suspension_Coil$Manufacturing_Lot == "Lot3"),Suspension_Coil$PSI)

#--------------------------------------------------------------------

head(mtcars)




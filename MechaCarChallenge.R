#3 Import Libraries
library(tidyverse)
library(dplyr)

#4 Read data from csv
MechaCar_mpg = read.csv("MechaCar_mpg.csv",check.names=F,stringsAsFactors = F)

#5 Multiple Linear Regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)

#6 Multiple Linear Regression Summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))


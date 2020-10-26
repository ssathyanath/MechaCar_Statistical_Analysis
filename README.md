# MechaCar Statistical Analysis

## Overview

This project is to analyze the various attributes of the MechaCar prototypes using R to gain insights. The following analysis are performed and the results are detailed below

- Linear Regression to predict mpg of car prototype
- Summary statistics on the pounds per square inch (PSI) of the suspension coils from diffrent manufacturing lots
- t-tests to determine if the manufacturing lots are statistically different from the mean population
- Statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers

## Linear Regression to Predict MPG

The results of the linear regression model to predict mpg is as below.

![LRM]()

- Based on the p-values for multiple variables in the linear regression model, the vehicle_lenght and ground_clearance have significant impact on the mpg. The intercept of the model is statistically significant, which means there are other variables and factors that contribute to the variation in mpg that have not been included in our model.
- The slope of the linear model is not zero. This is because the p-value of our linear regression analysis is 5.35e-11, which is very less than the assumed significance level of 0.05.Therefore, there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
- This linear model predict mpg of MechaCar prototypes 71% effectively. The r-squared value is 0.7149, which means that roughly 71% of all mpg predictions will be correct when using this linear model.
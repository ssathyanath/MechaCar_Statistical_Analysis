# MechaCar Statistical Analysis

## Overview

This project is to analyze the various attributes of the MechaCar prototypes using R to gain insights. The following analysis are performed and the results are detailed below

- Linear Regression to predict mpg of car prototype
- Summary statistics on the pounds per square inch (PSI) of the suspension coils from diffrent manufacturing lots
- t-tests to determine if the manufacturing lots are statistically different from the mean population
- Statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers

## Linear Regression to Predict MPG

The results of the linear regression model to predict mpg is as below.

![LRM](https://github.com/ssathyanath/MechaCar_Statistical_Analysis/blob/main/Images/LRM_MPG.png)

- Based on the p-values for multiple variables in the linear regression model, the vehicle_length and ground_clearance have significant impact on the mpg and are statistically unlikely to provide random amounts of variance to the linear model. The intercept of the model is statistically significant, which means there are other variables and factors that contribute to the variation in mpg that have not been included in our model.
- The slope of the linear model is not zero. This is because the p-value of our linear regression analysis is 5.35e-11, which is very less than the assumed significance level of 0.05.Therefore, there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.
- This linear model predicts mpg of MechaCar prototypes 71% effectively. The r-squared value is 0.7149, which means that roughly 71% of all mpg predictions will be correct when using this linear model.

## Summary Statistics on Suspension Coils

Groupby and summarize R functions were used to analyse the summary statistics for PSI by manufacturing lot.

**Total Summary

![LRM](https://github.com/ssathyanath/MechaCar_Statistical_Analysis/blob/main/Images/Total_Summary.png)

**Lot Summary

![LRM](https://github.com/ssathyanath/MechaCar_Statistical_Analysis/blob/main/Images/Lot_Summary.png)

The PSI variance for total summary is 76.23, which is below the design specifications limit of 100 pounds per square inch. For Lot 1 and Lot 2 the PSI variance is 1.14 and 10.14 respectively. These are below the design limit as well. Lot 3 however has a PSI variance of 220.01. This is well above the design specification limit.

## T-Tests on Suspension Coils

T-Test was performed on a sample of 50 elements to the overall population of 1500 PSI. The results are shown in the below screenshot.

![LRM](https://github.com/ssathyanath/MechaCar_Statistical_Analysis/blob/main/Images/os_t.png)

Looking at the above results, the p-value is above our significance level (assuming our significance level was the common 0.05 percent). This implies that there is no sufficient evidence to reject the null hypothesis the two means are statistically similar.

T-Test was also performed to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

**Lot 1

![LRM](https://github.com/ssathyanath/MechaCar_Statistical_Analysis/blob/main/Images/lot1.png)

**Lot 2

![LRM](https://github.com/ssathyanath/MechaCar_Statistical_Analysis/blob/main/Images/lot2.png)

**Lot 3

![LRM](https://github.com/ssathyanath/MechaCar_Statistical_Analysis/blob/main/Images/lot3.png)

In the above results for Lot 1, Lot 2 and Lot 3 compared to overall population, the p-value is above our significance level (assuming our significance level was the common 0.05 percent). This implies that there is no sufficient evidence to reject the null hypothesis the two means for each test are statistically similar.

## Study Design: MechaCar vs Competition

There are numerous studies thata can be performed on the metrics that are available for Mechacar and compare them to the competitors. This study is to see how well does Mechacar perform compared to the competitors for fuel efficiency, safety rating, drive type and cost. For this study the following metrics are needed

- Fuel Efficiency (Highway and City)
- Saftey Rating
- Drive Type
- Cost

Our null hypothesis is that mechacar performs similar to other competitors for car fuel efficiency, safetly rating, drive type and car price.

A simple welch two sample t-test using subset can be performed to determine how the mean for Mechacar related to the overall population. This would help us determine if the means are statistically similar and give an indication on how well Mechacar performs against its competitors.

To run the statistical test, data about different cars with details about fuel efficieny, safety rating, drive type and cost is required. The input data should be normally distributed and metrics should be numerical and continuous.

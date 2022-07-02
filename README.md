# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
![linear_regression_stats](link)<br>
The variables that provided a non-random amount of variance to the mpg values in the dataset were vehicle length and ground clearance. They both will have a significant impact on mpg.<br>
<br>
The slope is most likely not zero because the p-value is 5.35e-11 which is much smaller than the assumed significance level of 0.05. This indicates that the null hypothesis can be rejected.<br>
<br>
This linear model can predict mpg of MechaCar prototypes effectively because the r-squared value is 0.7149. This means 71% of mpg predictions can be determined by this model, whcich is considered a strong correlation.<br>
<br>
## Summary Statistics on Suspension Coils
![total_summary](link)<br>
Looking at the current manufacturing data the variance of the suspension coil does in total meet the design specifications for all lots, due to the varience being 62.29. <br>
![lot_summary](link)<br>
However if you look at the lots individually then lot 3 does not meet design specifications, as that lot's variance is 170.29 which is higher than the allowed 100 pounds per square inch.
<br>
<br>
## T-Tests on Suspension Coils
A T-Test was run to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.<br>
![suspension_coil_t_test](link)<br>
The first T Test run was to determine if the PSI across all manufacturing lots are statistically different from the population mean of 1,500 pounds per square inch. This test showed that the mean was 1498.78 while the p-value was 0.06. With the p-value being higher than the assumed statistical significance of 0.05 the null hypothesis fails to be rejected. This means that the PSI across all manufacturing lots are statistically similar to the population mean of 1,500 pounds per square inch.
<br>
<br>
The next three tests were run to determine if each of the individual manufacturing lots are statistically different from the population mean of 1,500 pounds per square inch.<br>
![lot1_t_test](link)<br>
In Lot 1 the results show a mean of 1500 and a p-value of exactly 1. There is no statistical difference from the population mean of 1,500 pounds per square inch. In this case, the null hypothesis fails to be rejected.<br>
![lot2_t_test](link)<br>
In Lot 2 the results show a mean of 1500.2 and a p-value of 0.61. Due to the p-value being higher than the assumed significance level of 0.05, the null hypothesis fails to be rejected. There is no statistical difference from the population mean of 1,500 pounds per square inch.<br>
![lot3_t_test](link)<br>
In Lot 3 the results show a mean of 1496.14 and a p-value of 0.42. Due to the p-value being lower than the assumed significance level of 0.05, the null hypothesis is rejected and the alternate hypothesis is accepted. There is statistical difference from the population mean of 1,500 pounds per square inch.<br>
<br>
## Study Design: MechaCar vs Competition
In today's climate fuel efficency is very important to the consumer. To test MechaCar's fuel efficiency for both city and highway against its competition, a null and alternative hypothesis need to be created. <br>
<br>
H0 (Null Hypothesis): MechaCar's vehicle fuel efficiency for both city and highway are not different from its competitors.<br>
Ha (Alternative Hypothesis): MechaCar's vehicle fuel efficiency for both city and highway are different from its competitors.<br>
<br>
To perform this analysis a few different factors would need to be reviewed, such as miles per gallon, fuel type used in the vehicle, type of vehicle and driving condition (highway or city). Using this data, a t-test could be utilized using the population of vehicles and each carmaker. This will help determine if MechaCar's vehicles' fuel efficiency is statistically different from its competitors as a whole and then statistically different from each competitor.

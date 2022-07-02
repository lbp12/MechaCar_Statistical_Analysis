#Use the library() function to load the dplyr package.
library(dplyr)
library(tidyverse)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
mecha_car <- read.csv(file='MechaCar_mpg.csv')  

#Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car)

#sing the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car))

# import and read in the Suspension_Coil.csv file as a table
suspension_coil <- read.csv(file='Suspension_Coil.csv')

#create a total_summary dataframe using the summarize() function to get the mean, 
#median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <-suspension_coil %>% summarize(Mean=mean(PSI),
                                              Median=median(PSI),
                                              Variance=var(PSI),
                                              SD=sd(PSI), .groups = 'keep')


#creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing 
#lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                             Median=median(PSI),
                                             Variance=var(PSI),
                                             SD=sd(PSI), .groups = 'keep')
#using the t.test() function to determine if the PSI across all manufacturing lots is statistically 
#different from the population mean of 1,500 pounds per square inch
t.test(suspension_coil$PSI, mu=1500)

#using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot 
#is statistically different from the population mean of 1,500 pounds per square inch.
lot1 <- subset(suspension_coil, Manufacturing_Lot=='Lot1')
lot2 <- subset(suspension_coil, Manufacturing_Lot=='Lot2')
lot3 <- subset(suspension_coil, Manufacturing_Lot=='Lot3')

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)


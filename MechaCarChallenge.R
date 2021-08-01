#Deliverable 1

#Loading dplyr package
library(dplyr)

#Reading in the CSV File
milespergallon <- read.csv("Resources/Source Files/MechaCar_mpg.csv")

#Performing the linear regression 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=milespergallon)

#Creating the summary to determine the p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=milespergallon))


#Deliverable 2
suscoils <- read.csv('Resources/Source Files/Suspension_Coil.csv')
total_summary <- suscoils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- suscoils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI))


#Deliverable 3
t.test(suscoils$PSI,mu=1500)

t.test(subset(suscoils$PSI,suscoils$Manufacturing_Lot=='Lot1'),mu=1500)
t.test(subset(suscoils$PSI,suscoils$Manufacturing_Lot=='Lot2'),mu=1500)
t.test(subset(suscoils$PSI,suscoils$Manufacturing_Lot=='Lot3'),mu=1500)

# Legacy code follows
#t.test(lot1$PSI, mu=1500)
#lot1 <- subset(dataframe2, dataframe2$Manufacturing_Lot == 'Lot1')
#t.test(lot2$PSI, mu=1500)
#lot2 <- subset(dataframe2, dataframe2$Manufacturing_Lot == 'Lot2')
#t.test(lot3$PSI, mu=1500)
#lot3 <- subset(dataframe2, dataframe2$Manufacturing_Lot == 'Lot3')
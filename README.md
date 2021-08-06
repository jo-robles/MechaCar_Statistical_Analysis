# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

To begin the analysis of our data, we have performed a multiple linear regression on our sample utilzing R. Our results are as follows (after loading in the dataset):

![Linear Regression](https://github.com/jo-robles/MechaCar_Statistical_Analysis/blob/53438846dfcec90810ffedfa5d1cc6b5c4474938/Resources/Images/linear_regression.PNG)

From here, we sought to answer three questions utilizing linear regression:

*Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

To answer this question, we take a look at the summary output provided by R for our dataset:

![LM Summary](https://github.com/jo-robles/MechaCar_Statistical_Analysis/blob/53438846dfcec90810ffedfa5d1cc6b5c4474938/Resources/Images/summar.PNG)


As we look at this data, we are specifically interested in the Pr(>|t|) value. In our case, we see three values that are statistically unlikely to provide random amounts to our linear model for MPG:

Intercept
Vehicle Length
Ground Clearance

Therefore, by this process, we understand that Vehicle Length and Ground Clearance for our sample have a significant impact on MPG and therefore, provide a non-random amount of variance. 

* Is the slope of the linear model considered to be zero? Why or why not?

To further evaluate this, we can take a look at our p-value which is calculated as 5.35e-11. In short, since this is greatly less than our cutoff value of p-value of .05, we can state that our results are statistcally significant and must reject the null hypothesis. Therefore, since we understand that a slope of 0 for our linear model would be considered to support the null hypothesis, we consider that our slope of our model is not considered to be 0.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not
For this question, we can simply take a look at our adjusted R-Squared value which equals .6825 - or, in other words - roughly 69% of our data fits the model we have here. We can make a reasoned guess that our linear model does predict mpg with some degree of confidence however, we would need to further clarify our measures of effectiveness. That is, we must simply understand and define our understanding of what it means to be effective for this analysis. Would 69% be considered effective? It's tough to say but as it stands right now, it's close.  


## Summary Statistics on Suspension Coils

Now that we have investigated the MPG for our prototypes, we now would like to see the weight capaciticies of multiple suspension coils across different production lots using R. Our results are as follows (after loading in the dataset):

![Total Summary](https://github.com/jo-robles/MechaCar_Statistical_Analysis/blob/53438846dfcec90810ffedfa5d1cc6b5c4474938/Resources/Images/total_summary.PNG)

Now that we have an idea of our entire dataset, we would like to break these out into their respective Manufacturing Lots:

![Lot Summary](https://github.com/jo-robles/MechaCar_Statistical_Analysis/blob/53438846dfcec90810ffedfa5d1cc6b5c4474938/Resources/Images/lot_summary.PNG)

Now that we have a clear picture of what our samples look like, we can investiage the following question:

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

As demonstrated above, if we consider the entire manufacturing lot, we see that our total variance is equal to 62.29356 and thus meets the design specifications. However, as we break them down by their respective lots, we see a clear outlier in Lot 3. In this lot, we see that our variance is currently calculated at 170 (well above the design specification). 

## T-Tests on Suspension Coils

To further understand out whether the means are statisically different from the population PSI mean of 1500, we employ the use of a t-test using R. Using the previous dataset, we first began my looking at all of our manufacturing lots:

![All Lots](https://github.com/jo-robles/MechaCar_Statistical_Analysis/blob/53438846dfcec90810ffedfa5d1cc6b5c4474938/Resources/Images/t_test_all_lots.PNG)

From this t-test, we make the following observation that our p-value is .06028 (larger than .05) which means we fail to reject the null-hypothesis and conclude that the PSI means are not statisically significantly different from the population.

And then, as we understood the variance between the lots was greater than our design specifications, we take a look at our three lots individually.

![Lot 1](https://github.com/jo-robles/MechaCar_Statistical_Analysis/blob/53438846dfcec90810ffedfa5d1cc6b5c4474938/Resources/Images/t_test_lot_1.PNG)

For Lot 1, we observe our p-value is 1 which means we fail to reject the null-hypothesis and conclude that the PSI means are not statisically significantly different from the population.

![Lot 2](https://github.com/jo-robles/MechaCar_Statistical_Analysis/blob/53438846dfcec90810ffedfa5d1cc6b5c4474938/Resources/Images/t_test_lot_2.PNG)

For Lot 2, we observe our p-value is .6072 which means we fail to reject the null-hypothesis and conclude that the PSI means are not statisically significantly different from the population.

![Lot 3](https://github.com/jo-robles/MechaCar_Statistical_Analysis/blob/53438846dfcec90810ffedfa5d1cc6b5c4474938/Resources/Images/t_test_lot_3.PNG)

For Lot 3, we observe our p-value is .04168 which means we reject the null-hypothesis and conclude that the PSI means are statisically significantly different from the population.

As suspsected, it appears there is more going on with Manufacturing Lot 3 than perhaps we understood before. Therefore, further investigation and analysis to deteremine the causes would be in order. 


## Study Design: MechaCar vs Competition

short description of a statistical study that can quantify how the MechaCar performs against the competition. 
In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating. 


What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
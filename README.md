# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

To begin the analysis of our data, we have performed a multiple linear regression on our sample utilzing R. Our results are as follows (after loading in the dataset):

INSERT IMAGE HERE

From here, we sought to answer three questions utilizing linear regression:

*Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

To answer this question, we take a look at the summary output provided by R for our dataset:

INSERT IMAGE HERE

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

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Tests on Suspension Coils

Briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary. 


## Study Design: MechaCar vs Competition

short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating. 


What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?
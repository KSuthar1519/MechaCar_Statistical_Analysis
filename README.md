# MechaCar_Statistical_Analysis
To review the production data for insights that may help the manufacturing team of a car manufacturing unit.
## Linear Regression to predict MPG
### Linear Regression analysis was carried out using R Studio.  Below is the image that shows the coefficients for the various variables that gives us information how the other variables affect and make up our response variable 'MPG'. 

![image](https://user-images.githubusercontent.com/107962343/193174950-fb4b91f7-b18e-42c0-b79b-d329f8089205.png)

### Below is the summary of the linear regression analysis:


![image](https://user-images.githubusercontent.com/107962343/193175479-87c99bac-8de5-47be-8328-0ce7eb7589b1.png)


* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
If a 95% level of confidence is predetermined, we can say that for variables that have p-values <0.05 is considered to be statistically significant that is provides a non-random amount of variance to the mpg values in the dataset. 
So looking at the results, vehicle length (p-value=2.60e-12) and ground clearance(p-value=5.21e-08) are the two variables that provided a non-random amount of variance to the mpg. 

* Is the slope of the linear model considered to be zero? Why or why not?
The equation for mpg based on the intercept values and coefficients for all the other variables looks like this:
mpg= -0.0104 + (6.267)(vehicle length) + (0.001245)(vehicle_weight) + (0.06877)(spoiler_angle) + (3.546)(ground_clearance) + (-3.411)(AWD)

Looking at the above equation, we can consider the slope (coefficients) to be non-zero.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The r squared for this model is 0.7149. Since it is more than 0.7, we can predict a higher effect of the independent variables on the dependent variable (MPG) and that the data fit the model well. 

## Summary Statistics on Suspension Coils

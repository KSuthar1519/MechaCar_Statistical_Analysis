# MechaCar_Statistical_Analysis
To review the production data for insights that may help the manufacturing team of a car manufacturing unit.
## Linear Regression to predict MPG

Below is the overview of all the different panes as seen on the R Studio screen:

![image](https://user-images.githubusercontent.com/107962343/193313056-6975b492-801e-4703-83c0-5f796ebd43e0.png)


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
Below is the summary of the population:

![image](https://user-images.githubusercontent.com/107962343/193298199-b24d7435-51ae-4936-a898-e5ee7655c5df.png)

Below is the summary statistics grouped by each lot:

![image](https://user-images.githubusercontent.com/107962343/193298410-95612c7a-a79e-4de9-b686-e419512dde61.png)

* The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
For MechaCar suspension coils, it has been specified that the variance of the suspension coil must not exceed 100 PSI. From the total summary table, we see that the variance is 62.29356 which is below 100. So overall, it can be said that the criteria is met. However, when we inspect the statistical summary grouped by each lot number, lot 3 has a variance of 170.2861224 which is not acceptable per the standards pre-determined. 

## T-Tests on Suspension Coils
Below is the image that shows the t-test for all lots:

![image](https://user-images.githubusercontent.com/107962343/193309986-a15371a5-5de0-47a1-9526-abdc54795f72.png)

p-value=1 which shows no statistically significant difference between the lots

Below is the image for t-test for lot 1:

![image](https://user-images.githubusercontent.com/107962343/193310342-d36f4ee5-3b94-4f85-aaaf-3108a747c277.png)

p-value is <0.05, indicating strong evidence against the null hypothesis. That means, true mean is equal to 1498.78.

Similarly, image for t-test for lot 2 is shown below:

![image](https://user-images.githubusercontent.com/107962343/193311947-72306e3e-ddad-4b28-8275-5e833c358258.png)

p-value is <0.05, indicating strong evidence against the null hypothesis. That means, true mean is equal to 1498.78.

Lastly, image for the t-test for lot 3 is shown below:

![image](https://user-images.githubusercontent.com/107962343/193312300-90f9607a-a608-4da4-81d8-db8e0b87f235.png)

p-value is >0.05, indicating that the null hypothesis cannot be rejected, meaning the true mean here is not equal to 1498.78.

## Study Design: MechaCar vs Competition

When comparing the MechaCar attributes to compare against the Competition, the customers may look into: mileage, cost of maintainence, resale value, safety ratings etc to name a few.
Let's say we focus on mileage.

* What metric or metrics are you going to test?
We can test the mileage which again may contribute the cost of maintainence.

* What is the null hypothesis or alternative hypothesis?
The null hypothesis may be the mileage given by MechaCar cars is not significantly higher than the competitors. 

* What statistical test would you use to test the hypothesis? And why?
We can use ANOVA test to compare means mileages between different groups of cars.

* What data is needed to run the statistical test?
We will need a big enough sample of atleast 50 cars from MechaCar and the competitors that includes general mileage, city mileage, highway mileage, lot numbers and year of manufacture.

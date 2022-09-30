##Deliverable 1###

##Import and read the 'MechaCar_mpg.csv' file
data_frame<-read.csv(file='MechaCar_mpg.csv')

##Perform linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=data_frame)

##Summary
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=data_frame))


##Deliverable 2###

## Import and read the 'Suspension_Coil.csv' file
data_frame2<-read.csv(file='Suspension_Coil.csv')

##creates a dataframe to get the mean, median,variance, and std deviation
total_summary<-data_frame2%>%summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups='keep')

#Lot summary dataframe
lot_summary<-data_frame2%>%group_by(Manufacturing_Lot)%>%summarize (Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups='keep')


##Deliverable 3##

##T-test to see if the PSI across all lots is statistically different
t.test(data_frame2$PSI, mu=mean(data_frame2$PSI))

##t-test for Lot 1
t.test(subset(data_frame2$PSI, data_frame2$Manufacturing_Lot=="Lot1"), mu=mean(data_frame2$PSI))

##t-test for Lot 2
t.test(subset(data_frame2$PSI, data_frame2$Manufacturing_Lot=="Lot2"), mu=mean(data_frame2$PSI))

#t-test for Lot 3
t.test(subset(data_frame2$PSI, data_frame2$Manufacturing_Lot=="Lot3"), mu=mean(data_frame2$PSI))


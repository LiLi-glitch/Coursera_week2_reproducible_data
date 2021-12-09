library(readxl)
library(data.table)
library(ggplot2)

#read in csv 
activity <-fread("./activity.csv")

head(activity)

#calculate mean steps per day by aggregating
stepsday <- aggregate(steps ~ date, activity, FUN = mean)
#make a histogram
ggplot(stepsday, aes(x=steps)) +
geom_histogram()


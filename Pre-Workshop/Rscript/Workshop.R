#Use PMmanual() for help
library(Pmetrics)

#set working directory
setwd("~/Pmetrics/Pre-Workshop")

#Prep work

#Make the data object
dat <- PM_data$new("src/ex.csv")
#Make the model object
mod1 <- PM_model$new("src/model.txt")

#Get ready for runs
setwd("~/Pmetrics/Pre-Workshop/Runs")

#Run 1 - Ka, Ke, V, Tlag

#Make the fit object
fit1 <- PM_fit$new(dat, mod1)
#Run fit1
fit1$run()
#Load the results after it completes
run1 <- PM_load(1)

#Plots
run1$op$plot()
run1$final$plot()

#Summaries
run1$op$summary()
run1$final$summary()

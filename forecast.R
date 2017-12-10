setwd("~/Desktop/HCDE Final Project")

library(forecast)
library(quantmod)
library(lattice)

df <- read.csv("unemploydata.csv", header = T)
dim(df)

## The required data for this analysis is saved from the analysis done in the jupyter notebook. 
## The saved files are the time series data for the unemployment rate for each of the four countries that we are analyzing.

################ United Sates
usdata <- read.csv("usdata.csv")
tsdata <- xts(usdata[,2], order.by=as.yearmon(usdata[,1], "%Y"))
colnames(tsdata) <- c("US")
usts <- tsdata["1991-01::"]
tsus <- ts(coredata(usts), start = c(1990,2,1), frequency = 1)
tsp(tsus)
plot(tsus, ylab = "", main = "US Unemployment Rate")
Acf(tsus, main = "Unemployment Rate")
diffts <- diff(tsus)

### Plot change in rate 
plot(diffts, xlab = "", ylab = expression(Delta * " Rate"),type = "n")
grid()
title("Change in Unemployment Rate")
lines(diffts, col = 4, lwd = 2, xlab = "", ylab = expression(Delta * " rate"), type = "h")

### Forecasting

aa <- auto.arima(tsus, ic = "bic", trace = TRUE, stepwise = FALSE,
                 max.p = 2, max.q = 0, approximation = FALSE, max.order = 6,
                 seasonal = FALSE)

pred <- predict(aa, n.ahead = 20)
ans <- c(pred$pred, pred$pred + qnorm(0.025) * pred$se,
         pred$pred + qnorm(0.975) * pred$se)
f <- forecast(aa, h = 12, fan = TRUE, bootstrap = TRUE)
plot(f, shadecols = "oldstyle", main = "US Unemployment Rate Forecast")



################## India

usdata <- read.csv("indiadata.csv")
tsdata <- xts(usdata[,2], order.by=as.yearmon(usdata[,1], "%Y"))
colnames(tsdata) <- c("INDIA")
usts <- tsdata["1991-01::"]
tsus <- ts(coredata(usts), start = c(1990,2,1), frequency = 1)
tsp(tsus)
plot(tsus, ylab = "", main = "India Unemployment Rate")
Acf(tsus, main = "Unemployment Rate")
diffts <- diff(tsus)

### Plot change in rate 
plot(diffts, xlab = "", ylab = expression(Delta * " Rate"),
     type = "n")
grid()
title("Change in Unemployment Rate")
lines(diffts, col = 4, lwd = 2, xlab = "", ylab = expression(Delta * " rate"), type = "h")

### Forecasting

aa <- auto.arima(tsus, ic = "bic", trace = TRUE, stepwise = FALSE,
                 max.p = 2, max.q = 0, approximation = FALSE, max.order = 6,
                 seasonal = FALSE)

pred <- predict(aa, n.ahead = 20)
ans <- c(pred$pred, pred$pred + qnorm(0.025) * pred$se,
         pred$pred + qnorm(0.975) * pred$se)
f <- forecast(aa, h = 12, fan = TRUE, bootstrap = TRUE)
plot(f, shadecols = "oldstyle", main = "India Unemployment Rate Forecast")


################## United Kingdom

usdata <- read.csv("ukdata.csv")
tsdata <- xts(usdata[,2], order.by=as.yearmon(usdata[,1], "%Y"))
colnames(tsdata) <- c("UK")
usts <- tsdata["1991-01::"]
tsus <- ts(coredata(usts), start = c(1990,2,1), frequency = 1)
tsp(tsus)
plot(tsus,ylab = "", main = "UK Unemployment Rate")
Acf(tsus, main = "Unemployment Rate")
diffts <- diff(tsus)

### Plot change in rate 
plot(diffts, xlab = "", ylab = expression(Delta * " Rate"),
     type = "n")
grid()
title("Change in Unemployment Rate")
lines(diffts, col = 4, lwd = 2, xlab = "", ylab = expression(Delta * " rate"), type = "h")

### Forecasting

aa <- auto.arima(tsus, ic = "bic", trace = TRUE, stepwise = FALSE,
                 max.p = 2, max.q = 0, approximation = FALSE, max.order = 6,
                 seasonal = FALSE)

pred <- predict(aa, n.ahead = 20)
ans <- c(pred$pred, pred$pred + qnorm(0.025) * pred$se,
         pred$pred + qnorm(0.975) * pred$se)
f <- forecast(aa, h = 12, fan = TRUE, bootstrap = TRUE)
plot(f, shadecols = "oldstyle", main = "UK Unemployment Rate Forecast")


################## United Arab Emirates

usdata <- read.csv("uaedata.csv")
tsdata <- xts(usdata[,2], order.by=as.yearmon(usdata[,1], "%Y"))
colnames(tsdata) <- c("UK")
usts <- tsdata["1991-01::"]
tsus <- ts(coredata(usts), start = c(1990,2,1), frequency = 1)
tsp(tsus)
plot(tsus, ylab = "", main = "UAE Unemployment Rate")
Acf(tsus, main = "Unemployment Rate")
diffts <- diff(tsus)

### Plot change in rate 
plot(diffts, xlab = "", ylab = expression(Delta * " Rate"),
     type = "n")
grid()
title("Change in Unemployment Rate")
lines(diffts, col = 4, lwd = 2, xlab = "", ylab = expression(Delta * " rate"), type = "h")

### Forecasting

aa <- auto.arima(tsus, ic = "bic", trace = TRUE, stepwise = FALSE,
                 max.p = 2, max.q = 0, approximation = FALSE, max.order = 6,
                 seasonal = FALSE)

pred <- predict(aa, n.ahead = 20)
ans <- c(pred$pred, pred$pred + qnorm(0.025) * pred$se,
         pred$pred + qnorm(0.975) * pred$se)
f <- forecast(aa, h = 12, fan = TRUE, bootstrap = TRUE)
plot(f, shadecols = "oldstyle", main = "UAE Unemployment Rate Forecast")


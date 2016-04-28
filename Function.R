#Calculation
setwd("~/My R Docs/HL")
library(data.table)
library(dplyr)

data1 <- read.csv("data1.csv", header = TRUE, sep = ";")

str(data1)
summary(data1)
names(data1)

January <- filter(data1, mes ==1)
str(January)
plot(January$pa)
plot(data1$pa)

data1$date <- as.Date(with(data1, paste(mes, dia, sep="-")), "%m-%d")
data1$date
emi <- data1$date
dim(data1)
y2015 <- rep_len(2015, length.out=8760)
data1 <- cbind(data1, y2015)
str(data1)
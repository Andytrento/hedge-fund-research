library(tidyverse)
library(moments)
library(ggplot2)

df <- read.csv("data/us_equity_hedge.csv")
#write.table(df$RETURNS,file="hf_returns.txt")

returns <- df$RETURNS
skew_returns <- skewness(returns) # calculate skewness
kurt_returns <- kurtosis(returns) # calculate kurtosis

#histogram with density plot

ggplot(df, aes(x=RETURNS)) +
 geom_histogram(aes(y=..density..), colour="black", fill="white")+
 geom_density(alpha=.2, fill="#FF6666")

# qqplot
qqnorm(returns, pch = 1, frame = FALSE)
qqline(returns, col = "steelblue", lwd = 2)





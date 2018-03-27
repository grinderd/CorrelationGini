#MC simulation to see in the impact of correlation on Gini

#Libraries
library(tidyverse)

#Parameters
n = 10000

#DGP

df1 = data.frame(x1 = rnorm(n),
             x2 = rnorm(n),
       e = rnorm(n))

df1$x2 = df1$x1*0.9+ rnorm(n)*0.1
df1$x3 = df1$x1*0.9 + rnorm(n)*0.5
df1$x4 = df1$x1*0.9+ rnorm(n)*1

cor(df1$x1,df1$x2)
cor(df1$x1,df1$x3)
cor(df1$x1,df1$x4)

df1$y = 1+ df1$x1 + df1$e

mod = summary(lm(y~x1+x2,data = df1))




# ch3-ex
setwd("F:\\OneDrive - sjtu.edu.cn\\Course\\时序分析\\program\\Applied-Time-Series-Analysis-Wangyan")
library(openxlsx)
library(tseries)

## ex16
rm(list=ls(all=TRUE))
E3_16 <- read.xlsx(".\\datafile\\E2_7.xlsx", sheet=1)
x <- ts(E3_16$mortality, start=c(1915,1))
### 原时间序列
plot(x)
acf(x, lag.max=24)
adf.test(x)
pacf(x)
### 一阶差分序列
plot(diff(x))
acf(diff(x), lag.max=24)
pacf(diff(x))

## ex17
rm(list=ls(all=TRUE))
E3_17 <- read.xlsx(".\\datafile\\E2_8.xlsx", sheet=1)
x <- ts(E3_17$wl, start=c(1860,1))
### 原时间序列
plot(x)
acf(x, lag.max=24)
adf.test(x)
pacf(x)
### 一阶差分序列
plot(diff(x))
acf(diff(x), lag.max=24)
pacf(diff(x))

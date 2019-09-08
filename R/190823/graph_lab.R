#문제1
install.packages("ggplot2")
library(ggplot2)
mpg <- as.data.frame(ggplot2::mpg)
 
plot(mpg$cty ,mpg$hwy, xlab = "도시연비", ylab = "고속도로 연비",pch = 3 )

#2
library(dplyr)

mpg <- as.data.frame(ggplot2::mpg)
drv<-table(mpg$drv)


#3

boxplot(hwy~manufacturer,data=mpg,las=1,xlab="",ylab="고속도로 연비",col=heat.colors(16))
title(main="*제조사별 고속도로 연비*", col.main="royalblue2")


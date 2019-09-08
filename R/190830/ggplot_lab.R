# 문제 ggsave 로 저장 

mpg <- as.data.frame(ggplot2::mpg)
midwest <- as.data.frame(ggplot2::midwest)

# 배경에 산점도 추가
#1번
ggplot(data = mpg, aes(x = cty, y = hwy)) + geom_point()
ggsave("result1.png")


#2번 

ggplot(mpg, aes(x=class))+geom_bar() 
ggsave("result2.png")


#3번 

library(dplyr)
question <- midwest %>% filter(poptotal <= 500000 & popasian <= 10000)
ggplot(question, aes(x=poptotal, y=popasian))+geom_point()
ggsave("result3.png")

#4번
car_class <- mpg %>% filter(class == "compact" | class == "subcompact" | class == "suv")

ggplot(car_class, aes(x=class , y=cty)) + geom_boxplot()
ggsave("result4.png")

#5번
q5 <- read.table("product_click.log")
ggplot(q5, aes(x=V2)) + geom_bar()
ggsave("result5.png")

#6번
library(stringr)
q6 <- read.table("product_click.log")
q6_1 <- str_sub(q6$V1, 1,8)
q6$day <- weekdays(as.Date(q6_1,"%Y%m%d"))
ggplot(q6, aes(x=day)) + geom_bar() + labs(x = "요일명")
ggsave("result6.png")


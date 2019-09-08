# 문제 ggsave 로 저장
#mpg 데이터와 midwest 데이터를 이용해서 분석 문제를 해결해 보세요.
#Q1. mpg 데이터의 cty(도시 연비)와 hwy(고속도로 연비) 간에 어떤 관계가 있는지 알아보려고 합니다.
#x축은 cty, y축은 hwy로 된 산점도를 만들어 보세요.

mpg <- as.data.frame(ggplot2::mpg)
midwest <- as.data.frame(ggplot2::midwest)

# 배경에 산점도 추가
#1번
ggplot(data = mpg, aes(x = cty, y = hwy)) + geom_point()
ggsave("result1.png")


#2번 
#Q2. 자동차 중에서 어떤 class(자동차 종류)가 가장 많은지 알아보려고 합니다.
#자동차 종류별 빈도를 표현한 막대 그래프를 만들어 보세요.

ggplot(mpg, aes(x=class))+geom_bar() 
ggsave("result2.png")


#3번 
#Q3. 미국 지역별 인구통계 정보를 담은 ggplot2 패키지의 midwest 데이터를 이용해서
#전체 인구와 아시아인 인구 간에 어떤 관계가 있는지 알아보려고 합니다. x축은 poptotal(전체 인구),
#y축은 popasian(아시아인 인구)으로 된 산점도를 만들어 보세요. 전체 인구는 50만 명 이하, 
#아시아인 인구는 1만 명 이하인 지역만 산점도에 표시되게 설정하세요.

library(dplyr)
question <- midwest %>% filter(poptotal <= 500000 & popasian <= 10000)
ggplot(question, aes(x=poptotal, y=popasian))+geom_point()
ggsave("result3.png")

#4번
#Q4. class(자동차 종류)가 "compact", "subcompact", "suv"인 자동차의 cty(도시 연비)가 
#어떻게 다른지 비교해보려고 합니다. 세 차종의 cty를 나타낸 상자 그림을 만들어보세요.
car_class <- mpg %>% filter(class == "compact" | class == "subcompact" | class == "suv")

ggplot(car_class, aes(x=class , y=cty)) + geom_boxplot()
ggsave("result4.png")

#5번
#Q5. product_click.log 파일을 가지고 클릭된 상품의 갯수를 가지고 바 그래프로 출력합니다.
q5 <- read.table("product_click.log")
ggplot(q5, aes(x=V2)) + geom_bar()
ggsave("result5.png")

#6번
# Q6. product_click.log 파일을 가지고 요일별 상품 클릭 
#횟수를 계산하여 바 그래프로 출력합니다.(x축은 요일명)
library(stringr)
q6 <- read.table("product_click.log")
q6_1 <- str_sub(q6$V1, 1,8)
q6$day <- weekdays(as.Date(q6_1,"%Y%m%d"))
ggplot(q6, aes(x=day)) + geom_bar() + labs(x = "요일명")
ggsave("result6.png")


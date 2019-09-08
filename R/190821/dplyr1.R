install.packages("ggplot2")
str(ggplot2::mpg)
mpg <- as.data.frame(ggplot2::mpg)

#1-1
mpg %>% nrow
mpg %>% ncol

#1-2
mpg %>% head(10)

#1-3
mpg %>% tail(10)

#1-4
View(mpg)

#1-5
summary(mpg)

#1-6
str(mpg)

#2-Q2
mpg <- rename(mpg,city = cty)
mpg <- rename(mpg,highway = hwy)

names(mpg)[names(mpg) == "cty"] <- c("city")
names(mpg)[names(mpg) == "hwy"] <- c("highway")

#2-Q3
head(mpg)

#3-1
midwest <- as.data.frame(ggplot2::midwest)

#3-2
midwest <- rename(midwest,total = poptotal)
midwest <- rename(midwest,asian = popasian)

names(midwest)[names(midwest) == "prototal"] <- c("total")
names(midwest)[names(midwest) == "popasian"] <- c("asian")

#3-3
midwest <- midwest %>% mutate(asian_rate = ((asian)/total)*100) %>%  head

#3-4
midwest <- midwest %>% mutate(rate_asian = ifelse(asian_rate > mean(asian_rate), "large","small"))

#4
mpg <- as.data.frame(ggplot2::mpg)


#4-1
mpg %>% filter(displ <= 4 | displ >= 5) %>%
  mutate(group = ifelse(displ<=4,"4이하","5이상")) %>%
  group_by(group) %>% summarise(hwymean = mean(hwy))

#4-2
mpg %>% filter(manufacturer=="audi" | manufacturer=="toyota") %>%  group_by(manufacturer) %>% summarise(car_name = mean(cty))  

#4-3
mpg %>% filter(manufacturer == c("chevrolet","ford","honda")) %>% summarise("평균연비" = mean(hwy))

#5-1
mpg_select <- mpg %>%  select(class,city) 

#5-2
mpg_select  %>%  group_by(class=="suv", class=="compact") %>%  summarise(car_name = mean(city))

#6-1
mpg %>% filter(manufacturer =="audi")%>% arrange(desc(hwy)) %>%  head(5)

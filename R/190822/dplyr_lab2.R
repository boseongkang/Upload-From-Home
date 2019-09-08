#7-1 
mpg_1 <- as.data.frame(ggplot2::mpg)
mpg_1 %>% mutate("합산 연비 변수" = cty+hwy) %>% head

#7-2
mpg_1 %>% mutate("평균 연비 변수" = (cty+hwy)/2) %>% head

#7-3
mpg_1 %>% mutate("평균 연비 변수" = (cty+hwy)/2) %>%  select("평균 연비 변수", "차 종류" =  manufacturer) %>% head(3)

#7-4
mpg %>%  mutate("합산 연비 변수" = cty+hwy,"평균 연비 변수" = (cty+hwy)/2) %>%
  select("평균 연비 변수", "차 종류" = manufacturer) %>% head(3)

#8-1
mpg <- as.data.frame(ggplot2::mpg)

mpg %>% group_by(class) %>% summarise("평균"=mean(cty))

#8-2
mpg %>%  group_by(class) %>% summarise(pyunggun=mean(cty)) %>% arrange(desc(pyunggun))

#8-3
mpg %>% group_by("회사 이름" =manufacturer) %>% summarise(pyunggun=mean(hwy)) %>% arrange(desc(pyunggun)) %>% head(3)

#8-4
mpg %>% group_by("회사 이름" =manufacturer) %>% filter(class =="compact") %>% summarise(pyunggun=max(class)) %>% arrange(desc(pyunggun))

#문제9 
mpg <- as.data.frame(ggplot2::mpg)
fuel <- data.frame(fl = c("c","d","e","p","r"),
                   price_fl = c(2.35,2.38,2.11,2.76,2.22),
                   stringsAsFactors = F)
fuel

#9-1
mpg <- left_join(mpg,fuel,by="fl")
mpg <- inner_join(mpg,fuel,by="fl")

#9-2
mpg %>% select(model,fl,price_fl) %>% head(5)

#10
midwest <- as.data.frame(ggplot2::midwest)

#10-1
midwest <- midwest %>%
  mutate(minorityper = ((poptotal-popadults)/poptotal)*100)
#10-2
midwest %>% arrange(desc(minorityper)) %>% head(5) %>% select(minorityper)

#10-3
midwest %>% mutate(minorgrade = 
                     ifelse(minorityper>=40,"large",ifelse(minorityper>=30,"middle","small"))) %>%
  group_by(minorgrade) %>% summarise(n=n())

#10-4
midwest %>% mutate(asianper = (popasian/poptotal)*100) %>%
  arrange(asianper) %>% head(10) %>% select(state,county,asianper)

#문제11
mpg <- as.data.frame(ggplot2::mpg)
mpg[c(65,124,131,153,212),"hwy"] <- NA

#11-1
table(is.na(mpg$drv)) ; table(is.na(mpg$hwy))

#11-2
mpg %>% filter(!is.na(hwy)) %>% group_by(drv) %>%
  summarise(hwymean = mean(hwy))

#12
mpg <- as.data.frame(ggplot2::mpg)
mpg[c(10,14,58,93),"drv"] <- "k"
mpg[c(29,43,129,203),"cty"] <- c(3,4,39,42)

#12-1
table(mpg$drv)
mpg$drv <- ifelse(mpg$drv %in% "k",NA,mpg$drv)
table(mpg$drv)

#12-2
boxplot(mpg$cty)
table(mpg$cty)
mpg$cty <- ifelse(mpg$cty<min(boxplot(mpg$cty)$stats) | mpg$cty>max(boxplot(mpg$cty)$stats) , NA , mpg$cty)
boxplot(mpg$cty)

#12-3
mpg %>% filter(!is.na(drv) & !is.na(cty)) %>%
  group_by(drv) %>% summarise(ctymean = mean(cty))